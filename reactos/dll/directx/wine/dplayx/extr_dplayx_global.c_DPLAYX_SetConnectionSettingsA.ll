; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_SetConnectionSettingsA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplayx_global.c_DPLAYX_SetConnectionSettingsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid parameters.\0A\00", align 1
@DPERR_INVALIDPARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c": old/new DPLCONNECTION type? Size=%08x\0A\00", align 1
@DPERR_NOTLOBBIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"DPSESSIONDESC passed in? Size=%u\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DPLAYX_SetConnectionSettingsA(i64 %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @DPERR_INVALIDPARAMS, align 4
  store i32 %16, i32* %4, align 4
  br label %85

17:                                               ; preds = %11
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 16
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @DPERR_INVALIDPARAMS, align 4
  store i32 %28, i32* %4, align 4
  br label %85

29:                                               ; preds = %17
  %30 = call i32 (...) @DPLAYX_AcquireSemaphore()
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @DPLAYX_IsAppIdLobbied(i64 %31, %struct.TYPE_9__** %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %36 = load i32, i32* @DPERR_NOTLOBBIED, align 4
  store i32 %36, i32* %4, align 4
  br label %85

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 4
  br i1 %49, label %50, label %67

50:                                               ; preds = %42, %37
  %51 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %63

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ %61, %56 ], [ 0, %62 ]
  %65 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @DPERR_INVALIDPARAMS, align 4
  store i32 %66, i32* %4, align 4
  br label %85

67:                                               ; preds = %42
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DPLAYX_PrivHeapFree(i32 %70)
  %72 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = call i32 @DPLAYX_SizeOfLobbyDataA(%struct.TYPE_10__* %73)
  %75 = call i32 @DPLAYX_PrivHeapAlloc(i32 %72, i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = call i32 @DPLAYX_CopyConnStructA(i32 %80, %struct.TYPE_10__* %81)
  %83 = call i32 (...) @DPLAYX_ReleaseSemaphore()
  %84 = load i32, i32* @DP_OK, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %67, %63, %34, %23, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @DPLAYX_AcquireSemaphore(...) #1

declare dso_local i32 @DPLAYX_IsAppIdLobbied(i64, %struct.TYPE_9__**) #1

declare dso_local i32 @DPLAYX_ReleaseSemaphore(...) #1

declare dso_local i32 @DPLAYX_PrivHeapFree(i32) #1

declare dso_local i32 @DPLAYX_PrivHeapAlloc(i32, i32) #1

declare dso_local i32 @DPLAYX_SizeOfLobbyDataA(%struct.TYPE_10__*) #1

declare dso_local i32 @DPLAYX_CopyConnStructA(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
