; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_DocHost_Init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_DocHost_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32, i32, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i32* }

@DocHostUIHandler2Vtbl = common dso_local global i32 0, align 4
@OleCommandTargetVtbl = common dso_local global i32 0, align 4
@PropertyNotifySinkVtbl = common dso_local global i32 0, align 4
@READYSTATE_UNINITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DocHost_Init(%struct.TYPE_15__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32* @DocHostUIHandler2Vtbl, i32** %9, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32* @OleCommandTargetVtbl, i32** %12, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32* @PropertyNotifySinkVtbl, i32** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 5
  store i32* %16, i32** %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* @READYSTATE_UNINITIALIZED, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = call i32 @list_init(i32* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = call i32 @DocHost_ClientSite_Init(%struct.TYPE_15__* %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @DocHost_Frame_Init(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ConnectionPointContainer_Init(i32* %36, i32* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = call i32 @IEHTMLWindow_Init(%struct.TYPE_15__* %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32 @NewWindowManager_Init(%struct.TYPE_15__* %41)
  ret void
}

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @DocHost_ClientSite_Init(%struct.TYPE_15__*) #1

declare dso_local i32 @DocHost_Frame_Init(%struct.TYPE_15__*) #1

declare dso_local i32 @ConnectionPointContainer_Init(i32*, i32*) #1

declare dso_local i32 @IEHTMLWindow_Init(%struct.TYPE_15__*) #1

declare dso_local i32 @NewWindowManager_Init(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
