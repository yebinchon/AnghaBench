; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_AddSubscriptionRelState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_AddSubscriptionRelState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Natts_pg_subscription_rel = common dso_local global i32 0, align 4
@SubscriptionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@SubscriptionRelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SUBSCRIPTIONRELMAP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"subscription table %u in subscription %u already exists\00", align 1
@Anum_pg_subscription_rel_srsubid = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srrelid = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srsubstate = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@Anum_pg_subscription_rel_srsublsn = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddSubscriptionRelState(i32 %0, i32 %1, i8 signext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @Natts_pg_subscription_rel, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @Natts_pg_subscription_rel, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = load i32, i32* @SubscriptionRelationId, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AccessShareLock, align 4
  %24 = call i32 @LockSharedObject(i32 %21, i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* @SubscriptionRelRelationId, align 4
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call i32 @table_open(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @SUBSCRIPTIONRELMAP, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ObjectIdGetDatum(i32 %31)
  %33 = call i32 @SearchSysCacheCopy2(i32 %28, i32 %30, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @HeapTupleIsValid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %4
  %43 = mul nuw i64 4, %19
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(i32* %20, i32 0, i32 %44)
  %46 = mul nuw i64 4, %15
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32* %17, i32 0, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ObjectIdGetDatum(i32 %49)
  %51 = load i32, i32* @Anum_pg_subscription_rel_srsubid, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %20, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ObjectIdGetDatum(i32 %55)
  %57 = load i32, i32* @Anum_pg_subscription_rel_srrelid, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %20, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i8, i8* %7, align 1
  %62 = call i32 @CharGetDatum(i8 signext %61)
  %63 = load i32, i32* @Anum_pg_subscription_rel_srsubstate, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %20, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @InvalidXLogRecPtr, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %42
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @LSNGetDatum(i64 %71)
  %73 = load i32, i32* @Anum_pg_subscription_rel_srsublsn, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %20, i64 %75
  store i32 %72, i32* %76, align 4
  br label %82

77:                                               ; preds = %42
  %78 = load i32, i32* @Anum_pg_subscription_rel_srsublsn, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %17, i64 %80
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @RelationGetDescr(i32 %83)
  %85 = call i32 @heap_form_tuple(i32 %84, i32* %20, i32* %17)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @CatalogTupleInsert(i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @heap_freetuple(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @NoLock, align 4
  %93 = call i32 @table_close(i32 %91, i32 %92)
  %94 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockSharedObject(i32, i32, i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @SearchSysCacheCopy2(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i64 @HeapTupleIsValid(i32) #2

declare dso_local i32 @elog(i32, i8*, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i32 @LSNGetDatum(i64) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
