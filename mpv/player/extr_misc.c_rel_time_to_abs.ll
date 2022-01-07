; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_rel_time_to_abs.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_rel_time_to_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { double }
%struct.TYPE_3__ = type { i32 }
%struct.m_rel_time = type { i32, double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @rel_time_to_abs(%struct.MPContext* %0, i32 %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.m_rel_time, align 8
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = bitcast %struct.m_rel_time* %5 to { i32, double }*
  %10 = getelementptr inbounds { i32, double }, { i32, double }* %9, i32 0, i32 0
  store i32 %1, i32* %10, align 8
  %11 = getelementptr inbounds { i32, double }, { i32, double }* %9, i32 0, i32 1
  store double %2, double* %11, align 8
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %13 = call double @get_time_length(%struct.MPContext* %12)
  store double %13, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  store double %30, double* %8, align 8
  br label %31

31:                                               ; preds = %25, %18, %3
  %32 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %78 [
    i32 131, label %34
    i32 128, label %37
    i32 129, label %61
    i32 130, label %73
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 1
  %36 = load double, double* %35, align 8
  store double %36, double* %4, align 8
  br label %80

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = fcmp oge double %39, 0.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load double, double* %8, align 8
  %43 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fadd double %42, %44
  store double %45, double* %4, align 8
  br label %80

46:                                               ; preds = %37
  %47 = load double, double* %7, align 8
  %48 = fcmp oge double %47, 0.000000e+00
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load double, double* %8, align 8
  %51 = load double, double* %7, align 8
  %52 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = fadd double %51, %53
  %55 = fptosi double %54 to i32
  %56 = call i32 @MPMAX(i32 %55, double 0.000000e+00)
  %57 = sitofp i32 %56 to double
  %58 = fadd double %50, %57
  store double %58, double* %4, align 8
  br label %80

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  br label %78

61:                                               ; preds = %31
  %62 = load double, double* %7, align 8
  %63 = fcmp oge double %62, 0.000000e+00
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load double, double* %8, align 8
  %66 = load double, double* %7, align 8
  %67 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = fdiv double %68, 1.000000e+02
  %70 = fmul double %66, %69
  %71 = fadd double %65, %70
  store double %71, double* %4, align 8
  br label %80

72:                                               ; preds = %61
  br label %78

73:                                               ; preds = %31
  %74 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %75 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %5, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = call double @chapter_start_time(%struct.MPContext* %74, double %76)
  store double %77, double* %4, align 8
  br label %80

78:                                               ; preds = %31, %72, %60
  %79 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %79, double* %4, align 8
  br label %80

80:                                               ; preds = %78, %73, %64, %49, %41, %34
  %81 = load double, double* %4, align 8
  ret double %81
}

declare dso_local double @get_time_length(%struct.MPContext*) #1

declare dso_local i32 @MPMAX(i32, double) #1

declare dso_local double @chapter_start_time(%struct.MPContext*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
