; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_AlterEventTriggerOwner_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_AlterEventTriggerOwner_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EventTriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@EVENTTRIGGEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"event trigger with OID %u does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterEventTriggerOwner_oid(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EventTriggerRelationId, align 4
  %8 = load i32, i32* @RowExclusiveLock, align 4
  %9 = call i32 @table_open(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @EVENTTRIGGEROID, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ObjectIdGetDatum(i32 %11)
  %13 = call i32 @SearchSysCacheCopy1(i32 %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @AlterEventTriggerOwner_internal(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @heap_freetuple(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RowExclusiveLock, align 4
  %33 = call i32 @table_close(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @AlterEventTriggerOwner_internal(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
