; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_GetConnectionSettingsW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_GetConnectionSettingsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DPERR_NOTLOBBIED = common dso_local global i32 0, align 4
@DPERR_BUFFERTOOSMALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Signalling setting read event %p %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"succeed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DPLAYX_GetConnectionSettingsW(i64 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = call i32 (...) @DPLAYX_AcquireSemaphore()
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @DPLAYX_IsAppIdLobbied(i64 %13, %struct.TYPE_3__** %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %18 = load i32, i32* @DPERR_NOTLOBBIED, align 4
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @DPLAYX_SizeOfLobbyDataW(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26, %19
  %32 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @DPLAYX_SizeOfLobbyDataW(i32 %35)
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @DPERR_BUFFERTOOSMALL, align 4
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %26
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DPLAYX_CopyConnStructW(i32* %40, i32 %43)
  %45 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i64 @DPLAYX_GetThisLobbyHandles(i32* null, i32* null, i64* %10, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @SetEvent(i64 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %55, i8* %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i64 @DPLAYX_GetThisLobbyHandles(i32* null, i32* null, i64* %10, i32 %61)
  br label %63

63:                                               ; preds = %52, %49, %39
  %64 = load i32, i32* @DP_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %31, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DPLAYX_AcquireSemaphore(...) #1

declare dso_local i32 @DPLAYX_IsAppIdLobbied(i64, %struct.TYPE_3__**) #1

declare dso_local i32 @DPLAYX_ReleaseSemaphore(...) #1

declare dso_local i64 @DPLAYX_SizeOfLobbyDataW(i32) #1

declare dso_local i32 @DPLAYX_CopyConnStructW(i32*, i32) #1

declare dso_local i64 @DPLAYX_GetThisLobbyHandles(i32*, i32*, i64*, i32) #1

declare dso_local i64 @SetEvent(i64) #1

declare dso_local i32 @TRACE(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
