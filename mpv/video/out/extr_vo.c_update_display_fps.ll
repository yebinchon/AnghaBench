; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_update_display_fps.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_update_display_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.vo_internal* }
%struct.TYPE_4__ = type { double }
%struct.TYPE_3__ = type { i32 (%struct.vo*, i32, double*)* }
%struct.vo_internal = type { i32, double, double, i32, i32, i32, i32 }

@VO_EVENT_WIN_STATE = common dso_local global i32 0, align 4
@VOCTRL_GET_DISPLAY_FPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Assuming %f FPS for display sync.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @update_display_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_fps(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 2
  %8 = load %struct.vo_internal*, %struct.vo_internal** %7, align 8
  store %struct.vo_internal* %8, %struct.vo_internal** %3, align 8
  %9 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %10 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %9, i32 0, i32 5
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %13 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %22 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %26 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %25, i32 0, i32 5
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  store double 0.000000e+00, double* %4, align 8
  %28 = load %struct.vo*, %struct.vo** %2, align 8
  %29 = getelementptr inbounds %struct.vo, %struct.vo* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.vo*, i32, double*)*, i32 (%struct.vo*, i32, double*)** %31, align 8
  %33 = load %struct.vo*, %struct.vo** %2, align 8
  %34 = load i32, i32* @VOCTRL_GET_DISPLAY_FPS, align 4
  %35 = call i32 %32(%struct.vo* %33, i32 %34, double* %4)
  %36 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %37 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %36, i32 0, i32 5
  %38 = call i32 @pthread_mutex_lock(i32* %37)
  %39 = load double, double* %4, align 8
  %40 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %41 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %40, i32 0, i32 1
  store double %39, double* %41, align 8
  br label %42

42:                                               ; preds = %18, %1
  %43 = load %struct.vo*, %struct.vo** %2, align 8
  %44 = getelementptr inbounds %struct.vo, %struct.vo* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  store double %47, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = fcmp ole double %48, 0.000000e+00
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %52 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  store double %53, double* %5, align 8
  br label %54

54:                                               ; preds = %50, %42
  %55 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %56 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %55, i32 0, i32 2
  %57 = load double, double* %56, align 8
  %58 = load double, double* %5, align 8
  %59 = fcmp une double %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load double, double* %5, align 8
  %62 = fcmp ogt double %61, 0.000000e+00
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load double, double* %5, align 8
  %65 = fdiv double 1.000000e+06, %64
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi double [ %65, %63 ], [ 0.000000e+00, %66 ]
  %69 = fptosi double %68 to i32
  %70 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %71 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %73 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @MPMAX(i32 %74, i32 1)
  %76 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %77 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load double, double* %5, align 8
  %79 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %80 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %79, i32 0, i32 2
  store double %78, double* %80, align 8
  %81 = load %struct.vo*, %struct.vo** %2, align 8
  %82 = load double, double* %5, align 8
  %83 = call i32 @MP_VERBOSE(%struct.vo* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %82)
  %84 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %85 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %86 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.vo*, %struct.vo** %2, align 8
  %90 = call i32 @wakeup_core(%struct.vo* %89)
  br label %91

91:                                               ; preds = %67, %54
  %92 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %93 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %92, i32 0, i32 5
  %94 = call i32 @pthread_mutex_unlock(i32* %93)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*, double) #1

declare dso_local i32 @wakeup_core(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
