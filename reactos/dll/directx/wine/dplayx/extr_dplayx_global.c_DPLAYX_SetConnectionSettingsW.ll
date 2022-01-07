; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_SetConnectionSettingsW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_SetConnectionSettingsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid parameters.\0A\00", align 1
@DPERR_INVALIDPARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c": old/new DPLCONNECTION type? Size=%u\0A\00", align 1
@DPERR_NOTLOBBIED = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DPLAYX_SetConnectionSettingsW(i64 %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @DPERR_INVALIDPARAMS, align 4
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @DPERR_INVALIDPARAMS, align 4
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %17
  %30 = call i32 (...) @DPLAYX_AcquireSemaphore()
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @DPLAYX_IsAppIdLobbied(i64 %31, %struct.TYPE_7__** %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %36 = load i32, i32* @DPERR_NOTLOBBIED, align 4
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DPLAYX_PrivHeapFree(i32 %40)
  %42 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = call i32 @DPLAYX_SizeOfLobbyDataW(%struct.TYPE_8__* %43)
  %45 = call i32 @DPLAYX_PrivHeapAlloc(i32 %42, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = call i32 @DPLAYX_CopyConnStructW(i32 %50, %struct.TYPE_8__* %51)
  %53 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %54 = load i32, i32* @DP_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %37, %34, %23, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @DPLAYX_AcquireSemaphore(...) #1

declare dso_local i32 @DPLAYX_IsAppIdLobbied(i64, %struct.TYPE_7__**) #1

declare dso_local i32 @DPLAYX_ReleaseSemaphore(...) #1

declare dso_local i32 @DPLAYX_PrivHeapFree(i32) #1

declare dso_local i32 @DPLAYX_PrivHeapAlloc(i32, i32) #1

declare dso_local i32 @DPLAYX_SizeOfLobbyDataW(%struct.TYPE_8__*) #1

declare dso_local i32 @DPLAYX_CopyConnStructW(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
