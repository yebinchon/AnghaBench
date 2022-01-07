; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_update_playres.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_update_playres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ass_state = type { i32, double, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mp_osd_res = type { double, double, i32 }

@MP_ASS_FONT_PLAYRESY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ass_state*, %struct.mp_osd_res*)* @update_playres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_playres(%struct.ass_state* %0, %struct.mp_osd_res* %1) #0 {
  %3 = alloca %struct.ass_state*, align 8
  %4 = alloca %struct.mp_osd_res*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.ass_state* %0, %struct.ass_state** %3, align 8
  store %struct.mp_osd_res* %1, %struct.mp_osd_res** %4, align 8
  %9 = load %struct.ass_state*, %struct.ass_state** %3, align 8
  %10 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mp_osd_res*, %struct.mp_osd_res** %4, align 8
  %19 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fmul double 1.000000e+00, %20
  %22 = load %struct.mp_osd_res*, %struct.mp_osd_res** %4, align 8
  %23 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call double @MPMAX(i32 %24, i32 1)
  %26 = fdiv double %21, %25
  store double %26, double* %8, align 8
  %27 = load %struct.mp_osd_res*, %struct.mp_osd_res** %4, align 8
  %28 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fcmp ogt double %29, 0.000000e+00
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load double, double* %8, align 8
  %33 = load %struct.mp_osd_res*, %struct.mp_osd_res** %4, align 8
  %34 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fdiv double %32, %35
  store double %36, double* %8, align 8
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.ass_state*, %struct.ass_state** %3, align 8
  %39 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.ass_state*, %struct.ass_state** %3, align 8
  %44 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @MP_ASS_FONT_PLAYRESY, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ass_state*, %struct.ass_state** %3, align 8
  %53 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fcmp une double %54, 0.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.ass_state*, %struct.ass_state** %3, align 8
  %58 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %57, i32 0, i32 1
  %59 = load double, double* %58, align 8
  br label %67

60:                                               ; preds = %48
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to double
  %65 = load double, double* %8, align 8
  %66 = fmul double %64, %65
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi double [ %59, %56 ], [ %66, %60 ]
  %69 = fptosi double %68 to i32
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77, %67
  %84 = load %struct.ass_state*, %struct.ass_state** %3, align 8
  %85 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ass_set_frame_size(i32 %86, i32 1, i32 1)
  br label %88

88:                                               ; preds = %83, %77
  ret void
}

declare dso_local double @MPMAX(i32, i32) #1

declare dso_local i32 @ass_set_frame_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
