; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_restriction_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_restriction_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid restriction selectivity: %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restriction_selectivity(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @get_oprrest(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @PointerGetDatum(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ObjectIdGetDatum(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @PointerGetDatum(i32* %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @Int32GetDatum(i32 %28)
  %30 = call i32 @OidFunctionCall4Coll(i32 %20, i32 %21, i32 %23, i32 %25, i32 %27, i32 %29)
  %31 = call double @DatumGetFloat8(i32 %30)
  store double %31, double* %13, align 8
  %32 = load double, double* %13, align 8
  %33 = fcmp olt double %32, 0.000000e+00
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load double, double* %13, align 8
  %36 = fcmp ogt double %35, 1.000000e+00
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %19
  %38 = load i32, i32* @ERROR, align 4
  %39 = load double, double* %13, align 8
  %40 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), double %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load double, double* %13, align 8
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @get_oprrest(i32) #1

declare dso_local double @DatumGetFloat8(i32) #1

declare dso_local i32 @OidFunctionCall4Coll(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @elog(i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
