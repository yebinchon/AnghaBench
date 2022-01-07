; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_name_server.c_NS_ReplyToEnumSessionsRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_name_server.c_NS_ReplyToEnumSessionsRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [85 x i8] c": few fixed + need to check request for response, might need UNICODE input ability.\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DPMSGMAGIC_DPLAYMSG = common dso_local global i32 0, align 4
@DPMSGCMD_ENUMSESSIONSREPLY = common dso_local global i32 0, align 4
@DPMSGVER_DP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NS_ReplyToEnumSessionsRequest(i8* %0, i8** %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %12 = call i32 @FIXME(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @CP_ACP, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MultiByteToWideChar(i32 %13, i32 0, i32 %21, i32 -1, i32* null, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 20
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @HeapAlloc(i32 %40, i32 %41, i32 %43)
  %45 = load i8**, i8*** %6, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = bitcast i32* %56 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %9, align 8
  %58 = load i32, i32* @DPMSGMAGIC_DPLAYMSG, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @DPMSGCMD_ENUMSESSIONSREPLY, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @DPMSGVER_DP6, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CopyMemory(i32* %71, %struct.TYPE_15__* %76, i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 92, i32* %86, align 4
  %87 = load i32, i32* @CP_ACP, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 1
  %98 = bitcast %struct.TYPE_13__* %97 to i32*
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @MultiByteToWideChar(i32 %87, i32 0, i32 %95, i32 -1, i32* %98, i32 %99)
  ret void
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CopyMemory(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
