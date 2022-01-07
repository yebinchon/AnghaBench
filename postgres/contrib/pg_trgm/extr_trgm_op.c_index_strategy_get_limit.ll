; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_index_strategy_get_limit.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_index_strategy_get_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@similarity_threshold = common dso_local global double 0.000000e+00, align 8
@word_similarity_threshold = common dso_local global double 0.000000e+00, align 8
@strict_word_similarity_threshold = common dso_local global double 0.000000e+00, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized strategy number: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @index_strategy_get_limit(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 130, label %5
    i32 128, label %7
    i32 129, label %9
  ]

5:                                                ; preds = %1
  %6 = load double, double* @similarity_threshold, align 8
  store double %6, double* %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = load double, double* @word_similarity_threshold, align 8
  store double %8, double* %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load double, double* @strict_word_similarity_threshold, align 8
  store double %10, double* %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11
  store double 0.000000e+00, double* %2, align 8
  br label %16

16:                                               ; preds = %15, %9, %7, %5
  %17 = load double, double* %2, align 8
  ret double %17
}

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
