; ModuleID = '/home/carl/AnghaBench/reactos/base/services/eventlog/extr_eventsource.c_GetEventSourceByName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/eventlog/extr_eventsource.c_GetEventSourceByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@.str = private unnamed_addr constant [26 x i8] c"GetEventSourceByName(%S)\0A\00", align 1
@EventSourceListCs = common dso_local global i32 0, align 4
@EventSourceListHead = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@EVENTSOURCE = common dso_local global i32 0, align 4
@EventSourceListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Item->szName: %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Found it\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Done (Result: %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @GetEventSourceByName(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %6)
  %8 = call i32 @EnterCriticalSection(i32* @EventSourceListCs)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @EventSourceListHead, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  br label %10

10:                                               ; preds = %31, %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, @EventSourceListHead
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = load i32, i32* @EVENTSOURCE, align 4
  %16 = load i32, i32* @EventSourceListEntry, align 4
  %17 = call %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_11__* %14, i32 %15, i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = call i64 @_wcsicmp(%struct.TYPE_12__* %24, %struct.TYPE_12__* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %5, align 8
  br label %35

31:                                               ; preds = %13
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %3, align 8
  br label %10

35:                                               ; preds = %28, %10
  %36 = call i32 @LeaveCriticalSection(i32* @EventSourceListCs)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %39
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @_wcsicmp(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
