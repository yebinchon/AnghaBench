; ModuleID = '/home/carl/AnghaBench/reactos/base/services/eventlog/extr_eventsource.c_AddNewEventSource.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/eventlog/extr_eventsource.c_AddNewEventSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EVENTSOURCE = common dso_local global i32 0, align 4
@szName = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Insert event source: %S\0A\00", align 1
@EventSourceListCs = common dso_local global i32 0, align 4
@EventSourceListHead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @AddNewEventSource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddNewEventSource(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @GetProcessHeap()
  %7 = load i32, i32* @EVENTSOURCE, align 4
  %8 = load i32*, i32** @szName, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @wcslen(i32 %9)
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @FIELD_OFFSET(i32 %7, i32 %14)
  %16 = call %struct.TYPE_3__* @HeapAlloc(i32 %6, i32 0, i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @wcscpy(i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @EnterCriticalSection(i32* @EventSourceListCs)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @InsertTailList(i32* @EventSourceListHead, i32* %34)
  %36 = call i32 @LeaveCriticalSection(i32* @EventSourceListCs)
  br label %37

37:                                               ; preds = %19, %2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local %struct.TYPE_3__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(i32, i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
