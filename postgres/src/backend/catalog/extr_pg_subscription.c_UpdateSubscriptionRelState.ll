; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_UpdateSubscriptionRelState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_UpdateSubscriptionRelState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@Natts_pg_subscription_rel = common dso_local global i32 0, align 4
@SubscriptionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@SubscriptionRelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SUBSCRIPTIONRELMAP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"subscription table %u in subscription %u does not exist\00", align 1
@Anum_pg_subscription_rel_srsubstate = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srsublsn = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateSubscriptionRelState(i32 %0, i32 %1, i8 signext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* @Natts_pg_subscription_rel, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @Natts_pg_subscription_rel, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load i32, i32* @Natts_pg_subscription_rel, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = load i32, i32* @SubscriptionRelationId, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32 @LockSharedObject(i32 %25, i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* @SubscriptionRelRelationId, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = call i32 @table_open(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @SUBSCRIPTIONRELMAP, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ObjectIdGetDatum(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ObjectIdGetDatum(i32 %35)
  %37 = call %struct.TYPE_7__* @SearchSysCacheCopy2(i32 %32, i32 %34, i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %10, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %4
  %47 = mul nuw i64 4, %20
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %21, i32 0, i32 %48)
  %50 = mul nuw i64 4, %16
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32* %18, i32 0, i32 %51)
  %53 = mul nuw i64 4, %23
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i32* %24, i32 0, i32 %54)
  %56 = load i32, i32* @Anum_pg_subscription_rel_srsubstate, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %24, i64 %58
  store i32 1, i32* %59, align 4
  %60 = load i8, i8* %7, align 1
  %61 = call i32 @CharGetDatum(i8 signext %60)
  %62 = load i32, i32* @Anum_pg_subscription_rel_srsubstate, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %21, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @Anum_pg_subscription_rel_srsublsn, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %24, i64 %68
  store i32 1, i32* %69, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @InvalidXLogRecPtr, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %46
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @LSNGetDatum(i64 %74)
  %76 = load i32, i32* @Anum_pg_subscription_rel_srsublsn, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %21, i64 %78
  store i32 %75, i32* %79, align 4
  br label %85

80:                                               ; preds = %46
  %81 = load i32, i32* @Anum_pg_subscription_rel_srsublsn, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %18, i64 %83
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @RelationGetDescr(i32 %87)
  %89 = call %struct.TYPE_7__* @heap_modify_tuple(%struct.TYPE_7__* %86, i32 %88, i32* %21, i32* %18, i32* %24)
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = call i32 @CatalogTupleUpdate(i32 %90, i32* %92, %struct.TYPE_7__* %93)
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @NoLock, align 4
  %97 = call i32 @table_close(i32 %95, i32 %96)
  %98 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockSharedObject(i32, i32, i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_7__* @SearchSysCacheCopy2(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #2

declare dso_local i32 @elog(i32, i8*, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i32 @LSNGetDatum(i64) #2

declare dso_local %struct.TYPE_7__* @heap_modify_tuple(%struct.TYPE_7__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_7__*) #2

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
