; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_CreateLobbyApplication.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_CreateLobbyApplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@numSupportedLobbies = common dso_local global i64 0, align 8
@lobbyData = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Setting lobbyData[%u] for (0x%08x,0x%08x)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No empty lobbies\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DPLAYX_CreateLobbyApplication(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %59

9:                                                ; preds = %1
  %10 = call i32 (...) @DPLAYX_AcquireSemaphore()
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %52, %9
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @numSupportedLobbies, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lobbyData, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 (...) @GetCurrentProcessId()
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lobbyData, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  %32 = call i32 (...) @GetCurrentProcessId()
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lobbyData, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lobbyData, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lobbyData, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lobbyData, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %15
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %11

55:                                               ; preds = %11
  %56 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %22, %7
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @DPLAYX_AcquireSemaphore(...) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i32) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i32 @DPLAYX_ReleaseSemaphore(...) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
