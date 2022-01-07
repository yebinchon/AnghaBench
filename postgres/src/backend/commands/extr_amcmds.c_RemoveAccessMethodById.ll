; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_amcmds.c_RemoveAccessMethodById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_amcmds.c_RemoveAccessMethodById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"must be superuser to drop access methods\00", align 1
@AccessMethodRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AMOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveAccessMethodById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @superuser()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @AccessMethodRelationId, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call i32 @table_open(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @AMOID, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call %struct.TYPE_5__* @SearchSysCache1(i32 %17, i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i32 @HeapTupleIsValid(%struct.TYPE_5__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @CatalogTupleDelete(i32 %29, i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @ReleaseSysCache(%struct.TYPE_5__* %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @RowExclusiveLock, align 4
  %37 = call i32 @table_close(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_5__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_5__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_5__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
