; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSerializableTransactionSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSerializableTransactionSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cannot use serializable mode in a hot standby\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\22default_transaction_isolation\22 is set to \22serializable\22.\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"You can use \22SET default_transaction_isolation = 'repeatable read'\22 to change the default.\00", align 1
@XactReadOnly = common dso_local global i64 0, align 8
@XactDeferrable = common dso_local global i64 0, align 8
@InvalidPid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSerializableTransactionSnapshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @IsolationIsSerializable()
  %5 = call i32 @Assert(i32 %4)
  %6 = call i64 (...) @RecoveryInProgress()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @ERROR, align 4
  %10 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @errdetail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @errhint(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %9, i32 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i64, i64* @XactReadOnly, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* @XactDeferrable, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @GetSafeSnapshot(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @InvalidPid, align 4
  %28 = call i32 @GetSerializableTransactionSnapshotInt(i32 %26, i32* null, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsolationIsSerializable(...) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @GetSafeSnapshot(i32) #1

declare dso_local i32 @GetSerializableTransactionSnapshotInt(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
