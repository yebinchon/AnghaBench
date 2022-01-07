; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_protocol.c_ITSProtocol_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_protocol.c_ITSProtocol_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"(%p %p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ITSProtocolUnkVtbl = common dso_local global i32 0, align 4
@ITSProtocolVtbl = common dso_local global i32 0, align 4
@ITSProtocolInfoVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ITSProtocol_create(%struct.TYPE_10__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %7, i8** %8)
  %10 = call i32 (...) @ITSS_LockModule()
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = call %struct.TYPE_11__* @HeapAlloc(i32 %11, i32 %12, i32 40)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32* @ITSProtocolUnkVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32* @ITSProtocolVtbl, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32* @ITSProtocolInfoVtbl, i32** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  br label %37

34:                                               ; preds = %18
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi %struct.TYPE_10__* [ %33, %32 ], [ %36, %34 ]
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = bitcast %struct.TYPE_10__* %42 to i8*
  %44 = load i8**, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*, i8**) #1

declare dso_local i32 @ITSS_LockModule(...) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
