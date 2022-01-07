; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_GetConnectionSettingsA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_GetConnectionSettingsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Application 0x%08x is not lobbied\0A\00", align 1
@DPERR_NOTLOBBIED = common dso_local global i32 0, align 4
@DPERR_BUFFERTOOSMALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Signalling setting read event %p %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"succeed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DPLAYX_GetConnectionSettingsA(i64 %0, i32* %1, i64* %2) #0 {
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
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @DPERR_NOTLOBBIED, align 4
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @DPLAYX_SizeOfLobbyDataA(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28, %21
  %34 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @DPLAYX_SizeOfLobbyDataA(i32 %37)
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @DPERR_BUFFERTOOSMALL, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DPLAYX_CopyConnStructA(i32* %42, i32 %45)
  %47 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i64 @DPLAYX_GetThisLobbyHandles(i32* null, i32* null, i64* %10, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @SetEvent(i64 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %57, i8* %61)
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i64 @DPLAYX_GetThisLobbyHandles(i32* null, i32* null, i64* %10, i32 %63)
  br label %65

65:                                               ; preds = %54, %51, %41
  %66 = load i32, i32* @DP_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %33, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @DPLAYX_AcquireSemaphore(...) #1

declare dso_local i32 @DPLAYX_IsAppIdLobbied(i64, %struct.TYPE_3__**) #1

declare dso_local i32 @DPLAYX_ReleaseSemaphore(...) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i64 @DPLAYX_SizeOfLobbyDataA(i32) #1

declare dso_local i32 @DPLAYX_CopyConnStructA(i32*, i32) #1

declare dso_local i64 @DPLAYX_GetThisLobbyHandles(i32*, i32*, i64*, i32) #1

declare dso_local i64 @SetEvent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
