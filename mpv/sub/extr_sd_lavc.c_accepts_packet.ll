; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_accepts_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_accepts_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_lavc_priv* }
%struct.sd_lavc_priv = type { double, %struct.sub* }
%struct.sub = type { double, double, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MAX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, double)* @accepts_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accepts_packet(%struct.sd* %0, double %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.sd_lavc_priv*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sub*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store double %1, double* %4, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %11, align 8
  store %struct.sd_lavc_priv* %12, %struct.sd_lavc_priv** %5, align 8
  %13 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %5, align 8
  %14 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %6, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* @MP_NOPTS_VALUE, align 8
  %18 = fcmp une double %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load double, double* %6, align 8
  %21 = load double, double* @MP_NOPTS_VALUE, align 8
  %22 = fcmp oeq double %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load double, double* %4, align 8
  %25 = load double, double* %6, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load double, double* %4, align 8
  store double %28, double* %6, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load double, double* %6, align 8
  %31 = fadd double %30, 1.000000e+00
  %32 = load double, double* %4, align 8
  %33 = fcmp olt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load double, double* %4, align 8
  store double %35, double* %6, align 8
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %2
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %85, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MAX_QUEUE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %38
  %43 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %5, align 8
  %44 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %43, i32 0, i32 1
  %45 = load %struct.sub*, %struct.sub** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sub, %struct.sub* %45, i64 %47
  store %struct.sub* %48, %struct.sub** %9, align 8
  %49 = load %struct.sub*, %struct.sub** %9, align 8
  %50 = getelementptr inbounds %struct.sub, %struct.sub* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %85

54:                                               ; preds = %42
  %55 = load double, double* %6, align 8
  %56 = load double, double* @MP_NOPTS_VALUE, align 8
  %57 = fcmp oeq double %55, %56
  br i1 %57, label %82, label %58

58:                                               ; preds = %54
  %59 = load %struct.sub*, %struct.sub** %9, align 8
  %60 = getelementptr inbounds %struct.sub, %struct.sub* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = load double, double* @MP_NOPTS_VALUE, align 8
  %63 = fcmp oeq double %61, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load %struct.sub*, %struct.sub** %9, align 8
  %66 = getelementptr inbounds %struct.sub, %struct.sub* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = load double, double* %6, align 8
  %69 = fcmp oge double %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load %struct.sub*, %struct.sub** %9, align 8
  %72 = getelementptr inbounds %struct.sub, %struct.sub* %71, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = load double, double* @MP_NOPTS_VALUE, align 8
  %75 = fcmp oeq double %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load double, double* %6, align 8
  %78 = load %struct.sub*, %struct.sub** %9, align 8
  %79 = getelementptr inbounds %struct.sub, %struct.sub* %78, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = fcmp olt double %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %70, %64, %58, %54
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %38

88:                                               ; preds = %38
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* @MAX_QUEUE, align 4
  %92 = icmp slt i32 %90, %91
  %93 = zext i1 %92 to i32
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
