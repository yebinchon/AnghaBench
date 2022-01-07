; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_bar.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__, i32, i64, %struct.MPOpts*, i64 }
%struct.TYPE_2__ = type { i32, double, i64, i32 }
%struct.MPOpts = type { i32, double, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_osd_bar(%struct.MPContext* %0, i32 %1, double %2, double %3, double %4, double %5) #0 {
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.MPOpts*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store %struct.MPContext* %0, %struct.MPContext** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 3
  %18 = load %struct.MPOpts*, %struct.MPOpts** %17, align 8
  store %struct.MPOpts* %18, %struct.MPOpts** %13, align 8
  %19 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 3
  %26 = load %struct.MPOpts*, %struct.MPOpts** %25, align 8
  %27 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %6
  %31 = phi i1 [ false, %6 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %34 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %39 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %37, %30
  br label %110

46:                                               ; preds = %42
  %47 = call i64 (...) @mp_time_sec()
  %48 = sitofp i64 %47 to double
  %49 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %50 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = fdiv double %51, 1.000000e+03
  %53 = fadd double %48, %52
  %54 = fptosi double %53 to i64
  %55 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %59 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load double, double* %12, align 8
  %62 = load double, double* %9, align 8
  %63 = fsub double %61, %62
  %64 = load double, double* %10, align 8
  %65 = load double, double* %9, align 8
  %66 = fsub double %64, %65
  %67 = fdiv double %63, %66
  %68 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %69 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store double %67, double* %70, align 8
  %71 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load double, double* %11, align 8
  %75 = load double, double* %9, align 8
  %76 = fcmp ogt double %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %46
  %78 = load double, double* %11, align 8
  %79 = load double, double* %10, align 8
  %80 = fcmp olt double %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load double, double* %11, align 8
  %83 = load double, double* %9, align 8
  %84 = fsub double %82, %83
  %85 = load double, double* %10, align 8
  %86 = load double, double* %9, align 8
  %87 = fsub double %85, %86
  %88 = fdiv double %84, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %15, align 4
  %90 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %91 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %92 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %96 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load float, float* %15, align 4
  %100 = call i32 @MP_TARRAY_APPEND(%struct.MPContext* %90, i32 %94, i64 %98, float %99)
  br label %101

101:                                              ; preds = %81, %77, %46
  %102 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %103 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %106 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %105, i32 0, i32 0
  %107 = call i32 @osd_set_progbar(i32 %104, %struct.TYPE_2__* %106)
  %108 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %109 = call i32 @mp_wakeup_core(%struct.MPContext* %108)
  br label %110

110:                                              ; preds = %101, %45
  ret void
}

declare dso_local i64 @mp_time_sec(...) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.MPContext*, i32, i64, float) #1

declare dso_local i32 @osd_set_progbar(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
