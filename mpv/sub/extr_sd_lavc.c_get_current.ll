; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_get_current.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub = type { double, double, i32 }
%struct.sd_lavc_priv = type { %struct.sub* }

@MAX_QUEUE = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sub* (%struct.sd_lavc_priv*, double)* @get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sub* @get_current(%struct.sd_lavc_priv* %0, double %1) #0 {
  %3 = alloca %struct.sd_lavc_priv*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.sub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sub*, align 8
  store %struct.sd_lavc_priv* %0, %struct.sd_lavc_priv** %3, align 8
  store double %1, double* %4, align 8
  store %struct.sub* null, %struct.sub** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %69, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MAX_QUEUE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %13, i32 0, i32 0
  %15 = load %struct.sub*, %struct.sub** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sub, %struct.sub* %15, i64 %17
  store %struct.sub* %18, %struct.sub** %7, align 8
  %19 = load %struct.sub*, %struct.sub** %7, align 8
  %20 = getelementptr inbounds %struct.sub, %struct.sub* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %69

24:                                               ; preds = %12
  %25 = load double, double* %4, align 8
  %26 = load double, double* @MP_NOPTS_VALUE, align 8
  %27 = fcmp oeq double %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = load %struct.sub*, %struct.sub** %7, align 8
  %30 = getelementptr inbounds %struct.sub, %struct.sub* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load double, double* @MP_NOPTS_VALUE, align 8
  %33 = fcmp oeq double %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load double, double* %4, align 8
  %36 = load %struct.sub*, %struct.sub** %7, align 8
  %37 = getelementptr inbounds %struct.sub, %struct.sub* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fcmp oge double %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34, %28
  %41 = load %struct.sub*, %struct.sub** %7, align 8
  %42 = getelementptr inbounds %struct.sub, %struct.sub* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load double, double* @MP_NOPTS_VALUE, align 8
  %45 = fcmp oeq double %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load double, double* %4, align 8
  %48 = load %struct.sub*, %struct.sub** %7, align 8
  %49 = getelementptr inbounds %struct.sub, %struct.sub* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fcmp olt double %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46, %40, %24
  %53 = load %struct.sub*, %struct.sub** %7, align 8
  %54 = getelementptr inbounds %struct.sub, %struct.sub* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = load double, double* @MP_NOPTS_VALUE, align 8
  %57 = fcmp oeq double %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load double, double* %4, align 8
  %60 = load %struct.sub*, %struct.sub** %7, align 8
  %61 = getelementptr inbounds %struct.sub, %struct.sub* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = fadd double %62, 6.000000e+01
  %64 = fcmp oge double %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %72

66:                                               ; preds = %58, %52
  %67 = load %struct.sub*, %struct.sub** %7, align 8
  store %struct.sub* %67, %struct.sub** %5, align 8
  br label %72

68:                                               ; preds = %46, %34
  br label %69

69:                                               ; preds = %68, %23
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %8

72:                                               ; preds = %66, %65, %8
  %73 = load %struct.sub*, %struct.sub** %5, align 8
  ret %struct.sub* %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
