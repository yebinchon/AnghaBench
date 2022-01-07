; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_bar_chapters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_bar_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_osd_bar_chapters(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca [2 x double], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca float, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %111

20:                                               ; preds = %2
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = call double @get_time_length(%struct.MPContext* %24)
  store double %25, double* %5, align 8
  %26 = load double, double* %5, align 8
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %102

28:                                               ; preds = %20
  %29 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %30 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0
  %31 = call i32 @get_ab_loop_times(%struct.MPContext* %29, double* %30)
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %61, %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 %37
  %39 = load double, double* %38, align 8
  %40 = load double, double* @MP_NOPTS_VALUE, align 8
  %41 = fcmp une double %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %44 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double, double* %5, align 8
  %57 = fdiv double %55, %56
  %58 = fptrunc double %57 to float
  %59 = call i32 @MP_TARRAY_APPEND(%struct.MPContext* %43, i32 %47, i64 %51, float %58)
  br label %60

60:                                               ; preds = %42, %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %32

64:                                               ; preds = %32
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %101, label %67

67:                                               ; preds = %64
  %68 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %69 = call i32 @get_chapter_count(%struct.MPContext* %68)
  store i32 %69, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %97, %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call double @chapter_start_time(%struct.MPContext* %75, i32 %76)
  store double %77, double* %11, align 8
  %78 = load double, double* %11, align 8
  %79 = fcmp oge double %78, 0.000000e+00
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load double, double* %11, align 8
  %82 = load double, double* %5, align 8
  %83 = fdiv double %81, %82
  %84 = fptrunc double %83 to float
  store float %84, float* %12, align 4
  %85 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %86 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %87 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load float, float* %12, align 4
  %95 = call i32 @MP_TARRAY_APPEND(%struct.MPContext* %85, i32 %89, i64 %93, float %94)
  br label %96

96:                                               ; preds = %80, %74
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %70

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %100, %64
  br label %102

102:                                              ; preds = %101, %20
  %103 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %107 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %106, i32 0, i32 0
  %108 = call i32 @osd_set_progbar(i32 %105, %struct.TYPE_2__* %107)
  %109 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %110 = call i32 @mp_wakeup_core(%struct.MPContext* %109)
  br label %111

111:                                              ; preds = %102, %19
  ret void
}

declare dso_local double @get_time_length(%struct.MPContext*) #1

declare dso_local i32 @get_ab_loop_times(%struct.MPContext*, double*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.MPContext*, i32, i64, float) #1

declare dso_local i32 @get_chapter_count(%struct.MPContext*) #1

declare dso_local double @chapter_start_time(%struct.MPContext*, i32) #1

declare dso_local i32 @osd_set_progbar(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
