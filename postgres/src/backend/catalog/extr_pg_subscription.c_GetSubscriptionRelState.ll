; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscriptionRelState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscriptionRelState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SubscriptionRelRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@SUBSCRIPTIONRELMAP = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@SUBREL_STATE_UNKNOWN = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"subscription table %u in subscription %u does not exist\00", align 1
@Anum_pg_subscription_rel_srsubstate = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srsublsn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @GetSubscriptionRelState(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @SubscriptionRelRelationId, align 4
  %16 = load i32, i32* @AccessShareLock, align 4
  %17 = call i32 @table_open(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @SUBSCRIPTIONRELMAP, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32 @SearchSysCache2(i32 %18, i32 %20, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @AccessShareLock, align 4
  %33 = call i32 @table_close(i32 %31, i32 %32)
  %34 = load i32, i32* @InvalidXLogRecPtr, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i8, i8* @SUBREL_STATE_UNKNOWN, align 1
  store i8 %36, i8* %5, align 1
  br label %74

37:                                               ; preds = %27
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %4
  %43 = load i32, i32* @SUBSCRIPTIONRELMAP, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @Anum_pg_subscription_rel_srsubstate, align 4
  %46 = call i32 @SysCacheGetAttr(i32 %43, i32 %44, i32 %45, i32* %13)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call signext i8 @DatumGetChar(i32 %52)
  store i8 %53, i8* %12, align 1
  %54 = load i32, i32* @SUBSCRIPTIONRELMAP, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @Anum_pg_subscription_rel_srsublsn, align 4
  %57 = call i32 @SysCacheGetAttr(i32 %54, i32 %55, i32 %56, i32* %13)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* @InvalidXLogRecPtr, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %67

63:                                               ; preds = %42
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @DatumGetLSN(i32 %64)
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ReleaseSysCache(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @AccessShareLock, align 4
  %72 = call i32 @table_close(i32 %70, i32 %71)
  %73 = load i8, i8* %12, align 1
  store i8 %73, i8* %5, align 1
  br label %74

74:                                               ; preds = %67, %30
  %75 = load i8, i8* %5, align 1
  ret i8 %75
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local signext i8 @DatumGetChar(i32) #1

declare dso_local i32 @DatumGetLSN(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
