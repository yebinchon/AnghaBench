; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_timer_pool_stop.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_timer_pool_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_pool = type { i32, i64*, i64, i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*, i32)* }

@VO_PERF_SAMPLE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_pool_stop(%struct.timer_pool* %0) #0 {
  %2 = alloca %struct.timer_pool*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.timer_pool* %0, %struct.timer_pool** %2, align 8
  %7 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %8 = icmp ne %struct.timer_pool* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %114

10:                                               ; preds = %1
  %11 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %12 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %16 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %15, i32 0, i32 7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (%struct.TYPE_4__*, i32)*, i64 (%struct.TYPE_4__*, i32)** %20, align 8
  %22 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %23 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %22, i32 0, i32 7
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %26 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i64 %21(%struct.TYPE_4__* %24, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %30 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %114

33:                                               ; preds = %10
  %34 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %35 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %38 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %4, align 8
  %42 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %43 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i32, i32* @VO_PERF_SAMPLE_COUNT, align 4
  %47 = call i64 @MPMIN(i64 %45, i32 %46)
  %48 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %49 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %52 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %55 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %50, i64* %58, align 8
  %59 = load i32, i32* @VO_PERF_SAMPLE_COUNT, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %62 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = urem i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %66 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* %4, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %73 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %76 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %33
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %82 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  br label %113

83:                                               ; preds = %33
  %84 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %85 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %83
  %90 = load i64, i64* %3, align 8
  store i64 %90, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %105, %89
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @VO_PERF_SAMPLE_COUNT, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %98 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @MPMAX(i64 %96, i64 %103)
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %91

108:                                              ; preds = %91
  %109 = load i64, i64* %5, align 8
  %110 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %111 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %83
  br label %113

113:                                              ; preds = %112, %79
  br label %114

114:                                              ; preds = %9, %113, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MPMIN(i64, i32) #1

declare dso_local i64 @MPMAX(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
