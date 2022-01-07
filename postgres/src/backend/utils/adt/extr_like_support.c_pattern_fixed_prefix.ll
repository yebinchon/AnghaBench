; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_pattern_fixed_prefix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_pattern_fixed_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@Pattern_Prefix_Partial = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unrecognized ptype: %d\00", align 1
@Pattern_Prefix_None = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__**, double*)* @pattern_fixed_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_fixed_prefix(%struct.TYPE_9__* %0, i32 %1, i32 %2, %struct.TYPE_9__** %3, double* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  store double* %4, double** %10, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %70 [
    i32 132, label %13
    i32 131, label %19
    i32 129, label %25
    i32 128, label %31
    i32 130, label %37
  ]

13:                                               ; preds = %5
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %17 = load double*, double** %10, align 8
  %18 = call i32 @like_fixed_prefix(%struct.TYPE_9__* %14, i32 0, i32 %15, %struct.TYPE_9__** %16, double* %17)
  store i32 %18, i32* %11, align 4
  br label %75

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %23 = load double*, double** %10, align 8
  %24 = call i32 @like_fixed_prefix(%struct.TYPE_9__* %20, i32 1, i32 %21, %struct.TYPE_9__** %22, double* %23)
  store i32 %24, i32* %11, align 4
  br label %75

25:                                               ; preds = %5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %29 = load double*, double** %10, align 8
  %30 = call i32 @regex_fixed_prefix(%struct.TYPE_9__* %26, i32 0, i32 %27, %struct.TYPE_9__** %28, double* %29)
  store i32 %30, i32* %11, align 4
  br label %75

31:                                               ; preds = %5
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %35 = load double*, double** %10, align 8
  %36 = call i32 @regex_fixed_prefix(%struct.TYPE_9__* %32, i32 1, i32 %33, %struct.TYPE_9__** %34, double* %35)
  store i32 %36, i32* %11, align 4
  br label %75

37:                                               ; preds = %5
  %38 = load i32, i32* @Pattern_Prefix_Partial, align 4
  store i32 %38, i32* %11, align 4
  %39 = load double*, double** %10, align 8
  store double 1.000000e+00, double* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @datumCopy(i32 %54, i32 %57, i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_9__* @makeConst(i32 %42, i32 %45, i32 %48, i32 %51, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %69, align 8
  br label %75

70:                                               ; preds = %5
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @elog(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @Pattern_Prefix_None, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %70, %37, %31, %25, %19, %13
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @like_fixed_prefix(%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__**, double*) #1

declare dso_local i32 @regex_fixed_prefix(%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__**, double*) #1

declare dso_local %struct.TYPE_9__* @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
