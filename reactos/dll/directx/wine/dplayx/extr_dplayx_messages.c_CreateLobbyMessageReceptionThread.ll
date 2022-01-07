; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_messages.c_CreateLobbyMessageReceptionThread.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_messages.c_CreateLobbyMessageReceptionThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to duplicate event handle\0A\00", align 1
@DPL_MSG_ThreadMain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to create msg thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateLobbyMessageReceptionThread(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = call %struct.TYPE_5__* @HeapAlloc(i32 %13, i32 0, i32 32)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = call i32 (...) @GetCurrentProcess()
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 (...) @GetCurrentProcess()
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %29 = call i32 @DuplicateHandle(i32 %22, i32* %23, i32 %24, i32* %26, i32 0, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %54

33:                                               ; preds = %21, %18
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @DPL_MSG_ThreadMain, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = call i32* @CreateThread(i32* null, i32 0, i32 %43, %struct.TYPE_5__* %44, i32 0, i32* %10)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %54

50:                                               ; preds = %33
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @CloseHandle(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %48, %31
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, %struct.TYPE_5__* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %50, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DuplicateHandle(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
