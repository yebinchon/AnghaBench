; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_index_pages_fetched.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_index_pages_fetched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@effective_cache_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @index_pages_fetched(double %0, i32 %1, double %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = sitofp i32 %17 to double
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi double [ %18, %16 ], [ 1.000000e+00, %19 ]
  store double %21, double* %11, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = load double, double* %7, align 8
  %26 = fadd double %24, %25
  store double %26, double* %10, align 8
  %27 = load double, double* %10, align 8
  %28 = call double @Max(double %27, double 1.000000e+00)
  store double %28, double* %10, align 8
  %29 = load double, double* %11, align 8
  %30 = load double, double* %10, align 8
  %31 = fcmp ole double %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i64, i64* @effective_cache_size, align 8
  %35 = sitofp i64 %34 to double
  %36 = load double, double* %11, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %10, align 8
  %39 = fdiv double %37, %38
  store double %39, double* %12, align 8
  %40 = load double, double* %12, align 8
  %41 = fcmp ole double %40, 1.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store double 1.000000e+00, double* %12, align 8
  br label %46

43:                                               ; preds = %20
  %44 = load double, double* %12, align 8
  %45 = call double @llvm.ceil.f64(double %44)
  store double %45, double* %12, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = load double, double* %11, align 8
  %48 = load double, double* %12, align 8
  %49 = fcmp ole double %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load double, double* %11, align 8
  %52 = fmul double 2.000000e+00, %51
  %53 = load double, double* %5, align 8
  %54 = fmul double %52, %53
  %55 = load double, double* %11, align 8
  %56 = fmul double 2.000000e+00, %55
  %57 = load double, double* %5, align 8
  %58 = fadd double %56, %57
  %59 = fdiv double %54, %58
  store double %59, double* %9, align 8
  %60 = load double, double* %9, align 8
  %61 = load double, double* %11, align 8
  %62 = fcmp oge double %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load double, double* %11, align 8
  store double %64, double* %9, align 8
  br label %68

65:                                               ; preds = %50
  %66 = load double, double* %9, align 8
  %67 = call double @llvm.ceil.f64(double %66)
  store double %67, double* %9, align 8
  br label %68

68:                                               ; preds = %65, %63
  br label %107

69:                                               ; preds = %46
  %70 = load double, double* %11, align 8
  %71 = fmul double 2.000000e+00, %70
  %72 = load double, double* %12, align 8
  %73 = fmul double %71, %72
  %74 = load double, double* %11, align 8
  %75 = fmul double 2.000000e+00, %74
  %76 = load double, double* %12, align 8
  %77 = fsub double %75, %76
  %78 = fdiv double %73, %77
  store double %78, double* %13, align 8
  %79 = load double, double* %5, align 8
  %80 = load double, double* %13, align 8
  %81 = fcmp ole double %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %69
  %83 = load double, double* %11, align 8
  %84 = fmul double 2.000000e+00, %83
  %85 = load double, double* %5, align 8
  %86 = fmul double %84, %85
  %87 = load double, double* %11, align 8
  %88 = fmul double 2.000000e+00, %87
  %89 = load double, double* %5, align 8
  %90 = fadd double %88, %89
  %91 = fdiv double %86, %90
  store double %91, double* %9, align 8
  br label %104

92:                                               ; preds = %69
  %93 = load double, double* %12, align 8
  %94 = load double, double* %5, align 8
  %95 = load double, double* %13, align 8
  %96 = fsub double %94, %95
  %97 = load double, double* %11, align 8
  %98 = load double, double* %12, align 8
  %99 = fsub double %97, %98
  %100 = fmul double %96, %99
  %101 = load double, double* %11, align 8
  %102 = fdiv double %100, %101
  %103 = fadd double %93, %102
  store double %103, double* %9, align 8
  br label %104

104:                                              ; preds = %92, %82
  %105 = load double, double* %9, align 8
  %106 = call double @llvm.ceil.f64(double %105)
  store double %106, double* %9, align 8
  br label %107

107:                                              ; preds = %104, %68
  %108 = load double, double* %9, align 8
  ret double %108
}

declare dso_local double @Max(double, double) #1

declare dso_local i32 @Assert(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
