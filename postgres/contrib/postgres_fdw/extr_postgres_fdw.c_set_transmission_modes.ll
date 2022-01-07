; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_set_transmission_modes.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_set_transmission_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DateStyle = common dso_local global i64 0, align 8
@USE_ISO_DATES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"datestyle\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@PGC_USERSET = common dso_local global i32 0, align 4
@PGC_S_SESSION = common dso_local global i32 0, align 4
@GUC_ACTION_SAVE = common dso_local global i32 0, align 4
@IntervalStyle = common dso_local global i64 0, align 8
@INTSTYLE_POSTGRES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"intervalstyle\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@extra_float_digits = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"extra_float_digits\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_transmission_modes() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @NewGUCNestLevel()
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @DateStyle, align 8
  %4 = load i64, i64* @USE_ISO_DATES, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @PGC_USERSET, align 4
  %8 = load i32, i32* @PGC_S_SESSION, align 4
  %9 = load i32, i32* @GUC_ACTION_SAVE, align 4
  %10 = call i32 @set_config_option(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 1, i32 0, i32 0)
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i64, i64* @IntervalStyle, align 8
  %13 = load i64, i64* @INTSTYLE_POSTGRES, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @PGC_USERSET, align 4
  %17 = load i32, i32* @PGC_S_SESSION, align 4
  %18 = load i32, i32* @GUC_ACTION_SAVE, align 4
  %19 = call i32 @set_config_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 1, i32 0, i32 0)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* @extra_float_digits, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @PGC_USERSET, align 4
  %25 = load i32, i32* @PGC_S_SESSION, align 4
  %26 = load i32, i32* @GUC_ACTION_SAVE, align 4
  %27 = call i32 @set_config_option(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 1, i32 0, i32 0)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @NewGUCNestLevel(...) #1

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
