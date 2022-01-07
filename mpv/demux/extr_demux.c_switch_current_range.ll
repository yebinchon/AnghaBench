; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_switch_current_range.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_switch_current_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, %struct.TYPE_4__**, %struct.demux_cached_range* }
%struct.TYPE_4__ = type { %struct.demux_stream* }
%struct.demux_stream = type { i32, i32, %struct.demux_queue*, i64, i64, i64 }
%struct.demux_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.demux_cached_range = type { %struct.demux_queue** }

@.str = private unnamed_addr constant [46 x i8] c"discarding unseekable range due to stream %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_cached_range*)* @switch_current_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_current_range(%struct.demux_internal* %0, %struct.demux_cached_range* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_cached_range*, align 8
  %5 = alloca %struct.demux_cached_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demux_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.demux_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.demux_stream*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store %struct.demux_cached_range* %1, %struct.demux_cached_range** %4, align 8
  %12 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 3
  %14 = load %struct.demux_cached_range*, %struct.demux_cached_range** %13, align 8
  store %struct.demux_cached_range* %14, %struct.demux_cached_range** %5, align 8
  %15 = load %struct.demux_cached_range*, %struct.demux_cached_range** %5, align 8
  %16 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %17 = icmp ne %struct.demux_cached_range* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %21 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %22 = call i32 @set_current_range(%struct.demux_internal* %20, %struct.demux_cached_range* %21)
  %23 = load %struct.demux_cached_range*, %struct.demux_cached_range** %5, align 8
  %24 = icmp ne %struct.demux_cached_range* %23, null
  br i1 %24, label %25, label %105

25:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.demux_cached_range*, %struct.demux_cached_range** %5, align 8
  %34 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %33, i32 0, i32 0
  %35 = load %struct.demux_queue**, %struct.demux_queue*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %35, i64 %37
  %39 = load %struct.demux_queue*, %struct.demux_queue** %38, align 8
  store %struct.demux_queue* %39, %struct.demux_queue** %7, align 8
  br label %40

40:                                               ; preds = %55, %32
  %41 = load %struct.demux_queue*, %struct.demux_queue** %7, align 8
  %42 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.demux_queue*, %struct.demux_queue** %7, align 8
  %47 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %45, %40
  %54 = phi i1 [ false, %40 ], [ %52, %45 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load %struct.demux_queue*, %struct.demux_queue** %7, align 8
  %57 = call i32 @remove_head_packet(%struct.demux_queue* %56)
  br label %40

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %26

62:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %66 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  %70 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %71 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.demux_stream*, %struct.demux_stream** %77, align 8
  store %struct.demux_stream* %78, %struct.demux_stream** %9, align 8
  %79 = load %struct.demux_stream*, %struct.demux_stream** %9, align 8
  %80 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %69
  %84 = load %struct.demux_stream*, %struct.demux_stream** %9, align 8
  %85 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  %89 = load %struct.demux_stream*, %struct.demux_stream** %9, align 8
  %90 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @MP_VERBOSE(%struct.demux_internal* %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %98 = load %struct.demux_cached_range*, %struct.demux_cached_range** %5, align 8
  %99 = call i32 @clear_cached_range(%struct.demux_internal* %97, %struct.demux_cached_range* %98)
  br label %104

100:                                              ; preds = %88, %83, %69
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %63

104:                                              ; preds = %93, %63
  br label %105

105:                                              ; preds = %104, %2
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %135, %105
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %109 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %114 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %115, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.demux_stream*, %struct.demux_stream** %120, align 8
  store %struct.demux_stream* %121, %struct.demux_stream** %11, align 8
  %122 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %123 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %122, i32 0, i32 0
  %124 = load %struct.demux_queue**, %struct.demux_queue*** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %124, i64 %126
  %128 = load %struct.demux_queue*, %struct.demux_queue** %127, align 8
  %129 = load %struct.demux_stream*, %struct.demux_stream** %11, align 8
  %130 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %129, i32 0, i32 2
  store %struct.demux_queue* %128, %struct.demux_queue** %130, align 8
  %131 = load %struct.demux_stream*, %struct.demux_stream** %11, align 8
  %132 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.demux_stream*, %struct.demux_stream** %11, align 8
  %134 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %112
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %106

138:                                              ; preds = %106
  %139 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %140 = call i32 @free_empty_cached_ranges(%struct.demux_internal* %139)
  %141 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %142 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %141, i32 0, i32 1
  store i32 1, i32* %142, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_current_range(%struct.demux_internal*, %struct.demux_cached_range*) #1

declare dso_local i32 @remove_head_packet(%struct.demux_queue*) #1

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, i32) #1

declare dso_local i32 @clear_cached_range(%struct.demux_internal*, %struct.demux_cached_range*) #1

declare dso_local i32 @free_empty_cached_ranges(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
