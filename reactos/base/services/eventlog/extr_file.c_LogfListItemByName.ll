; ModuleID = '/home/carl/AnghaBench/reactos/base/services/eventlog/extr_file.c_LogfListItemByName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/eventlog/extr_file.c_LogfListItemByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }

@LogFileListCs = common dso_local global i32 0, align 4
@LogFileListHead = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LOGFILE = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @LogfListItemByName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ASSERT(i32 %6)
  %8 = call i32 @EnterCriticalSection(i32* @LogFileListCs)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @LogFileListHead, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  br label %10

10:                                               ; preds = %31, %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, @LogFileListHead
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = load i32, i32* @LOGFILE, align 4
  %16 = load i32, i32* @ListEntry, align 4
  %17 = call %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__* %14, i32 %15, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @_wcsicmp(i64 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %5, align 8
  br label %35

31:                                               ; preds = %22, %13
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %3, align 8
  br label %10

35:                                               ; preds = %29, %10
  %36 = call i32 @LeaveCriticalSection(i32* @LogFileListCs)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %37
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_wcsicmp(i64, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
