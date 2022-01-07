; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_AlterEventTrigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_AlterEventTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8, i32 }

@EventTriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@EVENTTRIGGERNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"event trigger \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_EVENT_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterEventTrigger(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  store i8 %10, i8* %7, align 1
  %11 = load i32, i32* @EventTriggerRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @EVENTTRIGGERNAME, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CStringGetDatum(i32 %17)
  %19 = call %struct.TYPE_10__* @SearchSysCacheCopy1(i32 %14, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @ereport(i32 %24, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i64 @GETSTRUCT(%struct.TYPE_10__* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %6, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (...) @GetUserId()
  %41 = call i32 @pg_event_trigger_ownercheck(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %45 = load i32, i32* @OBJECT_EVENT_TRIGGER, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @aclcheck_error(i32 %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %32
  %51 = load i8, i8* %7, align 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i8 %51, i8* %53, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = call i32 @CatalogTupleUpdate(i32 %54, i32* %56, %struct.TYPE_10__* %57)
  %59 = load i32, i32* @EventTriggerRelationId, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @InvokeObjectPostAlterHook(i32 %59, i32 %60, i32 0)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = call i32 @heap_freetuple(%struct.TYPE_10__* %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @RowExclusiveLock, align 4
  %66 = call i32 @table_close(i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_10__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #1

declare dso_local i32 @pg_event_trigger_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_10__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
