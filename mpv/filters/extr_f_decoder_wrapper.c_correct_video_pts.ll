; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_correct_video_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_correct_video_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, double, double, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { double, i32 }
%struct.TYPE_3__ = type { %struct.MPOpts* }
%struct.MPOpts = type { i64 }
%struct.mp_image = type { double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [50 x i8] c"No video PTS! Making something up. Using %f FPS.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Ignoring further missing PTS warnings.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, %struct.mp_image*)* @correct_video_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_video_pts(%struct.priv* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.MPOpts*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.priv* %0, %struct.priv** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.MPOpts*, %struct.MPOpts** %12, align 8
  store %struct.MPOpts* %13, %struct.MPOpts** %5, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %19 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fmul double %20, %17
  store double %21, double* %19, align 8
  %22 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %23 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %28 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load double, double* @MP_NOPTS_VALUE, align 8
  %31 = fcmp oeq double %29, %30
  br i1 %31, label %32, label %107

32:                                               ; preds = %26, %2
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 25, %43 ]
  %46 = sitofp i32 %45 to double
  store double %46, double* %6, align 8
  %47 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %48 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %54, 1
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.priv*, %struct.priv** %3, align 8
  %58 = load double, double* %6, align 8
  %59 = call i32 (%struct.priv*, i8*, ...) @MP_WARN(%struct.priv* %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), double %58)
  %60 = load %struct.priv*, %struct.priv** %3, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.priv*, %struct.priv** %3, align 8
  %66 = call i32 (%struct.priv*, i8*, ...) @MP_WARN(%struct.priv* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.priv*, %struct.priv** %3, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %67, %51
  br label %73

73:                                               ; preds = %72, %44
  %74 = load double, double* %6, align 8
  %75 = fdiv double 1.000000e+00, %74
  store double %75, double* %7, align 8
  %76 = load %struct.priv*, %struct.priv** %3, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  store double %78, double* %8, align 8
  %79 = load %struct.priv*, %struct.priv** %3, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 2
  %81 = load double, double* %80, align 8
  %82 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %83 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %82, i32 0, i32 0
  store double %81, double* %83, align 8
  %84 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %85 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = load double, double* @MP_NOPTS_VALUE, align 8
  %88 = fcmp oeq double %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %73
  %90 = load double, double* %8, align 8
  %91 = load double, double* @MP_NOPTS_VALUE, align 8
  %92 = fcmp oeq double %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %96

94:                                               ; preds = %89
  %95 = load double, double* %8, align 8
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi double [ 0.000000e+00, %93 ], [ %95, %94 ]
  %98 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %99 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %98, i32 0, i32 0
  store double %97, double* %99, align 8
  br label %106

100:                                              ; preds = %73
  %101 = load double, double* %7, align 8
  %102 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %103 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fadd double %104, %101
  store double %105, double* %103, align 8
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %106, %26
  %108 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %109 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %108, i32 0, i32 0
  %110 = load double, double* %109, align 8
  %111 = load %struct.priv*, %struct.priv** %3, align 8
  %112 = getelementptr inbounds %struct.priv, %struct.priv* %111, i32 0, i32 2
  store double %110, double* %112, align 8
  ret void
}

declare dso_local i32 @MP_WARN(%struct.priv*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
