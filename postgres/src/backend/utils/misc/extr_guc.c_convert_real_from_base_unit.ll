; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_convert_real_from_base_unit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_convert_real_from_base_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, double }

@GUC_UNIT_MEMORY = common dso_local global i32 0, align 4
@memory_unit_conversion_table = common dso_local global %struct.TYPE_4__* null, align 8
@time_unit_conversion_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, i32, double*, i8**)* @convert_real_from_base_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_real_from_base_unit(double %0, i32 %1, double* %2, i8** %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8**, i8*** %8, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GUC_UNIT_MEMORY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memory_unit_conversion_table, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  br label %20

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @time_unit_conversion_table, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %9, align 8
  br label %20

20:                                               ; preds = %18, %16
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %73, %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %31, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = load double, double* %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = fdiv double %40, %46
  %48 = load double*, double** %7, align 8
  store double %47, double* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %8, align 8
  store i8* %54, i8** %55, align 8
  %56 = load double*, double** %7, align 8
  %57 = load double, double* %56, align 8
  %58 = fcmp ogt double %57, 0.000000e+00
  br i1 %58, label %59, label %71

59:                                               ; preds = %39
  %60 = load double*, double** %7, align 8
  %61 = load double, double* %60, align 8
  %62 = call double @llvm.rint.f64(double %61)
  %63 = load double*, double** %7, align 8
  %64 = load double, double* %63, align 8
  %65 = fdiv double %62, %64
  %66 = fsub double %65, 1.000000e+00
  %67 = call i32 @fabs(double %66)
  %68 = sitofp i32 %67 to double
  %69 = fcmp ole double %68, 1.000000e-08
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %76

71:                                               ; preds = %59, %39
  br label %72

72:                                               ; preds = %71, %30
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %21

76:                                               ; preds = %70, %21
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  ret void
}

declare dso_local i32 @fabs(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
