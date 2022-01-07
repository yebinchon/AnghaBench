; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_subscriptioncmds.c_AlterSubscriptionOwner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_subscriptioncmds.c_AlterSubscriptionOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SubscriptionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SUBSCRIPTIONNAME = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"subscription \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterSubscriptionOwner(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @SubscriptionRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @SUBSCRIPTIONNAME, align 4
  %14 = load i32, i32* @MyDatabaseId, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @CStringGetDatum(i8* %15)
  %17 = call i32 @SearchSysCacheCopy2(i32 %13, i32 %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @HeapTupleIsValid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GETSTRUCT(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %9, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @AlterSubscriptionOwner_internal(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SubscriptionRelationId, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ObjectAddressSet(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @heap_freetuple(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @RowExclusiveLock, align 4
  %47 = call i32 @table_close(i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCacheCopy2(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @AlterSubscriptionOwner_internal(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
