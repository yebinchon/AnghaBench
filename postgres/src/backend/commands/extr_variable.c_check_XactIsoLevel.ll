; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_XactIsoLevel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_XactIsoLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XactIsoLevel = common dso_local global i32 0, align 4
@FirstSnapshotSet = common dso_local global i64 0, align 8
@ERRCODE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"SET TRANSACTION ISOLATION LEVEL must be called before any query\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"SET TRANSACTION ISOLATION LEVEL must not be called in a subtransaction\00", align 1
@XACT_SERIALIZABLE = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot use serializable mode in a hot standby\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"You can use REPEATABLE READ instead.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_XactIsoLevel(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @XactIsoLevel, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = call i64 (...) @IsTransactionState()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load i64, i64* @FirstSnapshotSet, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %22 = call i32 @GUC_check_errcode(i32 %21)
  %23 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %45

24:                                               ; preds = %17
  %25 = call i64 (...) @IsSubTransaction()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %29 = call i32 @GUC_check_errcode(i32 %28)
  %30 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %45

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @XACT_SERIALIZABLE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = call i64 (...) @RecoveryInProgress()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %40 = call i32 @GUC_check_errcode(i32 %39)
  %41 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @GUC_check_errhint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %45

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %14, %3
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38, %27, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @GUC_check_errcode(i32) #1

declare dso_local i32 @GUC_check_errmsg(i8*) #1

declare dso_local i64 @IsSubTransaction(...) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @GUC_check_errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
