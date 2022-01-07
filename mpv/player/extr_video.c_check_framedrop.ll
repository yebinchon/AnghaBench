; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_check_framedrop.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_check_framedrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, double, i32, i32, %struct.MPOpts* }
%struct.MPOpts = type { i32 }
%struct.vo_chain = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { float }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.vo_chain*)* @check_framedrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_framedrop(%struct.MPContext* %0, %struct.vo_chain* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.vo_chain*, align 8
  %5 = alloca %struct.MPOpts*, align 8
  %6 = alloca float, align 4
  %7 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.vo_chain* %1, %struct.vo_chain** %4, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 5
  %10 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  store %struct.MPOpts* %10, %struct.MPOpts** %5, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STATUS_PLAYING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %2
  %17 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %80, label %21

21:                                               ; preds = %16
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STATUS_PLAYING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %21
  %28 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ao_untimed(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %27
  %34 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %35 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %33
  %39 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %40 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %38
  %46 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %47 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %53 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  store float %56, float* %6, align 4
  %57 = load float, float* %6, align 4
  %58 = fcmp ole float %57, 2.000000e+01
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load float, float* %6, align 4
  %61 = fcmp oge float %60, 5.000000e+02
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %51
  br label %80

63:                                               ; preds = %59
  %64 = load float, float* %6, align 4
  %65 = fpext float %64 to double
  %66 = fdiv double 1.000000e+00, %65
  store double %66, double* %7, align 8
  %67 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 2
  %69 = load double, double* %68, align 8
  %70 = fsub double %69, 1.000000e-02
  %71 = load double, double* %7, align 8
  %72 = fdiv double %70, %71
  %73 = call i32 @MPCLAMP(double %72, i32 0, i32 100)
  %74 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %75 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %62, %63, %45, %38, %33, %27, %21, %16, %2
  ret void
}

declare dso_local i32 @ao_untimed(i32) #1

declare dso_local i32 @MPCLAMP(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
