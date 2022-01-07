; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_stream_selection_state.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_stream_selection_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i32, %struct.demux_cached_range**, %struct.TYPE_4__** }
%struct.demux_cached_range = type { i32* }
%struct.TYPE_4__ = type { %struct.demux_stream* }
%struct.demux_stream = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@STREAM_SUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_stream*)* @update_stream_selection_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stream_selection_state(%struct.demux_internal* %0, %struct.demux_stream* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.demux_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.demux_stream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.demux_cached_range*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store %struct.demux_stream* %1, %struct.demux_stream** %4, align 8
  %13 = load %struct.demux_stream*, %struct.demux_stream** %4, align 8
  %14 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.demux_stream*, %struct.demux_stream** %4, align 8
  %16 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %81, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %20 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %25 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.demux_stream*, %struct.demux_stream** %31, align 8
  store %struct.demux_stream* %32, %struct.demux_stream** %8, align 8
  %33 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %34 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %33, i32 0, i32 7
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %39 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %41 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %23
  %45 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %46 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %45, i32 0, i32 7
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %44, %23
  %53 = phi i1 [ false, %23 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %56 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %58 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %63 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %68 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STREAM_SUB, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %66, %61, %52
  %76 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %77 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %17

84:                                               ; preds = %17
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %113, %87
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %91 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %96 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.demux_stream*, %struct.demux_stream** %102, align 8
  store %struct.demux_stream* %103, %struct.demux_stream** %10, align 8
  %104 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %105 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @STREAM_SUB, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %111 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %110, i32 0, i32 2
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %94
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %88

116:                                              ; preds = %88
  br label %117

117:                                              ; preds = %116, %84
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %122 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.demux_stream*, %struct.demux_stream** %4, align 8
  %125 = call i32 @ds_clear_reader_state(%struct.demux_stream* %124, i32 1)
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %157, %123
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %129 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %126
  %133 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %134 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %133, i32 0, i32 3
  %135 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %135, i64 %137
  %139 = load %struct.demux_cached_range*, %struct.demux_cached_range** %138, align 8
  store %struct.demux_cached_range* %139, %struct.demux_cached_range** %12, align 8
  %140 = load %struct.demux_stream*, %struct.demux_stream** %4, align 8
  %141 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %132
  %145 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %146 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.demux_stream*, %struct.demux_stream** %4, align 8
  %149 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @clear_queue(i32 %152)
  br label %154

154:                                              ; preds = %144, %132
  %155 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %156 = call i32 @update_seek_ranges(%struct.demux_cached_range* %155)
  br label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %126

160:                                              ; preds = %126
  %161 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %162 = call i32 @free_empty_cached_ranges(%struct.demux_internal* %161)
  %163 = load %struct.demux_stream*, %struct.demux_stream** %4, align 8
  %164 = call i32 @wakeup_ds(%struct.demux_stream* %163)
  ret void
}

declare dso_local i32 @ds_clear_reader_state(%struct.demux_stream*, i32) #1

declare dso_local i32 @clear_queue(i32) #1

declare dso_local i32 @update_seek_ranges(%struct.demux_cached_range*) #1

declare dso_local i32 @free_empty_cached_ranges(%struct.demux_internal*) #1

declare dso_local i32 @wakeup_ds(%struct.demux_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
