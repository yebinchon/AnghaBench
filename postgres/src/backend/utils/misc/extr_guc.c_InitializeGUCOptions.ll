; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_InitializeGUCOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_InitializeGUCOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global i32* null, align 8
@guc_dirty = common dso_local global i32 0, align 4
@reporting_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"transaction_isolation\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"read committed\00", align 1
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"transaction_read_only\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"transaction_deferrable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeGUCOptions() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @pg_timezone_initialize()
  %3 = call i32 (...) @build_guc_variables()
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @num_guc_variables, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32*, i32** @guc_variables, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @InitializeOneGUCOption(i32 %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %4

18:                                               ; preds = %4
  store i32 0, i32* @guc_dirty, align 4
  store i32 0, i32* @reporting_enabled, align 4
  %19 = load i32, i32* @PGC_POSTMASTER, align 4
  %20 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %21 = call i32 @SetConfigOption(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @PGC_POSTMASTER, align 4
  %23 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %24 = call i32 @SetConfigOption(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @PGC_POSTMASTER, align 4
  %26 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %27 = call i32 @SetConfigOption(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 %26)
  %28 = call i32 (...) @InitializeGUCOptionsFromEnvironment()
  ret void
}

declare dso_local i32 @pg_timezone_initialize(...) #1

declare dso_local i32 @build_guc_variables(...) #1

declare dso_local i32 @InitializeOneGUCOption(i32) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i32 @InitializeGUCOptionsFromEnvironment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
