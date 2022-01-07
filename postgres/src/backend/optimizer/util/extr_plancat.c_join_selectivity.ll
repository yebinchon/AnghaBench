; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_join_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_join_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid join selectivity: %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @join_selectivity(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @get_oprjoin(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %48

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @PointerGetDatum(i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @PointerGetDatum(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @Int16GetDatum(i32 %30)
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @PointerGetDatum(i32* %32)
  %34 = call i32 @OidFunctionCall5Coll(i32 %22, i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33)
  %35 = call double @DatumGetFloat8(i32 %34)
  store double %35, double* %15, align 8
  %36 = load double, double* %15, align 8
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %41, label %38

38:                                               ; preds = %21
  %39 = load double, double* %15, align 8
  %40 = fcmp ogt double %39, 1.000000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %21
  %42 = load i32, i32* @ERROR, align 4
  %43 = load double, double* %15, align 8
  %44 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load double, double* %15, align 8
  %47 = fptosi double %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %20
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @get_oprjoin(i32) #1

declare dso_local double @DatumGetFloat8(i32) #1

declare dso_local i32 @OidFunctionCall5Coll(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @elog(i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
