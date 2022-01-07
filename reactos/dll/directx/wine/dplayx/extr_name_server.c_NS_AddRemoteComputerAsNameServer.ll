; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_name_server.c_NS_AddRemoteComputerAsNameServer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_name_server.c_NS_AddRemoteComputerAsNameServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"%p, %p, %p\0A\00", align 1
@next = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_17__* null, align 8
@cbUglyPig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Duplicate session entry for %s removed - updated version kept\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no memory for NS node\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no memory for SESSIONDESC2\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NS_AddRemoteComputerAsNameServer(i32 %0, i32 %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.TYPE_16__* %16, i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @next, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** @data, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @cbUglyPig, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = call i32 @DPQ_REMOVE_ENTRY_CB(i32 %21, i32 %22, i32 %25, i32 %26, i32 %30, %struct.TYPE_14__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = call i32 @debugstr_guid(i32* %39)
  %41 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = call i32 @cbDeleteNSNodeFromHeap(%struct.TYPE_14__* %42)
  br label %44

44:                                               ; preds = %35, %4
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %47 = call i8* @HeapAlloc(i32 %45, i32 %46, i32 24)
  %48 = bitcast i8* %47 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %11, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = icmp eq %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %132

53:                                               ; preds = %44
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @HeapAlloc(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @CopyMemory(i8* %62, i32 %63, i32 %64)
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %68 = call i8* @HeapAlloc(i32 %66, i32 %67, i32 16)
  %69 = bitcast i8* %68 to %struct.TYPE_13__*
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = icmp eq %struct.TYPE_13__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %53
  %77 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %80 = call i32 @HeapFree(i32 %78, i32 0, %struct.TYPE_14__* %79)
  br label %132

81:                                               ; preds = %53
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = bitcast %struct.TYPE_13__* %84 to i8*
  %88 = bitcast %struct.TYPE_13__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  %89 = load i32, i32* @CP_ACP, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 1
  %92 = ptrtoint %struct.TYPE_16__* %91 to i32
  %93 = call i32 @WideCharToMultiByte(i32 %89, i32 0, i32 %92, i32 -1, i32* null, i32 0, i32* null, i32* null)
  store i32 %93, i32* %9, align 4
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load i32, i32* %9, align 4
  %96 = call i8* @HeapAlloc(i32 %94, i32 0, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32* %97, i32** %102, align 8
  %103 = icmp ne i32* %97, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %81
  %105 = load i32, i32* @CP_ACP, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 1
  %108 = ptrtoint %struct.TYPE_16__* %107 to i32
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @WideCharToMultiByte(i32 %105, i32 0, i32 %108, i32 -1, i32* %114, i32 %115, i32* null, i32* null)
  br label %117

117:                                              ; preds = %104, %81
  %118 = call i32 (...) @timeGetTime()
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = load i32, i32* @next, align 4
  %126 = call i32 @DPQ_INSERT(i32 %123, %struct.TYPE_14__* %124, i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @NS_PruneSessionCache(i32 %130)
  br label %132

132:                                              ; preds = %117, %76, %51
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @DPQ_REMOVE_ENTRY_CB(i32, i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i32 @cbDeleteNSNodeFromHeap(%struct.TYPE_14__*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @CopyMemory(i8*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @timeGetTime(...) #1

declare dso_local i32 @DPQ_INSERT(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @NS_PruneSessionCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
