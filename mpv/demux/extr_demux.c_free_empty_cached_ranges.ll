; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_free_empty_cached_ranges.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_free_empty_cached_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i64, i64*, i32 }
%struct.demux_cached_range = type { i64, i32, i64, %struct.demux_cached_range** }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@MAX_SEEK_RANGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @free_empty_cached_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_empty_cached_ranges(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca %struct.demux_cached_range*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.demux_cached_range*, align 8
  %7 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  br label %8

8:                                                ; preds = %1, %143
  store %struct.demux_cached_range* null, %struct.demux_cached_range** %3, align 8
  %9 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %10 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %14 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %8
  %18 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %19 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %24 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %35 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %38 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %33, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %27, %8
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %130, %49
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %133

54:                                               ; preds = %51
  %55 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %56 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.demux_cached_range*
  store %struct.demux_cached_range* %62, %struct.demux_cached_range** %6, align 8
  %63 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %64 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %54
  %69 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %70 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %107, label %73

73:                                               ; preds = %68, %54
  %74 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %75 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %76 = call i32 @clear_cached_range(%struct.demux_internal* %74, %struct.demux_cached_range* %75)
  %77 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %78 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = bitcast i64* %79 to %struct.demux_cached_range**
  %81 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %82 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @MP_TARRAY_REMOVE_AT(%struct.demux_cached_range** %80, i32 %83, i32 %84)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %101, %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %89 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %94 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %93, i32 0, i32 3
  %95 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %95, i64 %97
  %99 = load %struct.demux_cached_range*, %struct.demux_cached_range** %98, align 8
  %100 = call i32 @talloc_free(%struct.demux_cached_range* %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %106 = call i32 @talloc_free(%struct.demux_cached_range* %105)
  br label %129

107:                                              ; preds = %68
  %108 = load %struct.demux_cached_range*, %struct.demux_cached_range** %3, align 8
  %109 = icmp ne %struct.demux_cached_range* %108, null
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %112 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %115 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = load %struct.demux_cached_range*, %struct.demux_cached_range** %3, align 8
  %119 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.demux_cached_range*, %struct.demux_cached_range** %3, align 8
  %122 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = icmp slt i64 %117, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %110, %107
  %127 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  store %struct.demux_cached_range* %127, %struct.demux_cached_range** %3, align 8
  br label %128

128:                                              ; preds = %126, %110
  br label %129

129:                                              ; preds = %128, %104
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %5, align 4
  br label %51

133:                                              ; preds = %51
  %134 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %135 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MAX_SEEK_RANGES, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load %struct.demux_cached_range*, %struct.demux_cached_range** %3, align 8
  %141 = icmp ne %struct.demux_cached_range* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139, %133
  br label %147

143:                                              ; preds = %139
  %144 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %145 = load %struct.demux_cached_range*, %struct.demux_cached_range** %3, align 8
  %146 = call i32 @clear_cached_range(%struct.demux_internal* %144, %struct.demux_cached_range* %145)
  br label %8

147:                                              ; preds = %142
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_cached_range(%struct.demux_internal*, %struct.demux_cached_range*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.demux_cached_range**, i32, i32) #1

declare dso_local i32 @talloc_free(%struct.demux_cached_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
