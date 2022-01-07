; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_statext_is_kind_built.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_statext_is_kind_built.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_pg_statistic_ext_data_stxdndistinct = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_data_stxddependencies = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_data_stxdmcv = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unexpected statistics type requested: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @statext_is_kind_built(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %14 [
    i32 128, label %8
    i32 130, label %10
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @Anum_pg_statistic_ext_data_stxdndistinct, align 4
  store i32 %9, i32* %5, align 4
  br label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @Anum_pg_statistic_ext_data_stxddependencies, align 4
  store i32 %11, i32* %5, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @Anum_pg_statistic_ext_data_stxdmcv, align 4
  store i32 %13, i32* %5, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i8, i8* %4, align 1
  %17 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8 signext %16)
  br label %18

18:                                               ; preds = %14, %12, %10, %8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @heap_attisnull(i32 %19, i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @elog(i32, i8*, i8 signext) #1

declare dso_local i32 @heap_attisnull(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
