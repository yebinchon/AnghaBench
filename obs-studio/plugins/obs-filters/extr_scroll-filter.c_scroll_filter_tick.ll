; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scroll_filter_data = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { float, float }
%struct.TYPE_5__ = type { float, float }
%struct.TYPE_4__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @scroll_filter_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scroll_filter_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.scroll_filter_data*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.scroll_filter_data*
  store %struct.scroll_filter_data* %7, %struct.scroll_filter_data** %5, align 8
  %8 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %9 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %13 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fmul float %11, %15
  %17 = load float, float* %4, align 4
  %18 = fmul float %16, %17
  %19 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %20 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 8
  %23 = fadd float %22, %18
  store float %23, float* %21, align 8
  %24 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %25 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %29 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = fmul float %27, %31
  %33 = load float, float* %4, align 4
  %34 = fmul float %32, %33
  %35 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %36 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = fadd float %38, %34
  store float %39, float* %37, align 4
  %40 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %41 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %2
  %45 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %46 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 8
  %49 = fcmp ogt float %48, 1.000000e+00
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %52 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 8
  %55 = fsub float %54, 1.000000e+00
  store float %55, float* %53, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %58 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fcmp ogt float %60, 1.000000e+00
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %64 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fsub float %66, 1.000000e+00
  store float %67, float* %65, align 4
  br label %68

68:                                               ; preds = %62, %56
  br label %90

69:                                               ; preds = %2
  %70 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %71 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load float, float* %72, align 8
  %74 = fcmp ogt float %73, 1.000000e+00
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %77 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store float 1.000000e+00, float* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %81 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load float, float* %82, align 4
  %84 = fcmp ogt float %83, 1.000000e+00
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %87 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store float 1.000000e+00, float* %88, align 4
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
