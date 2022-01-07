; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplay.c_DP_HandleMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplay.c_DP_HandleMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"(%p)->(%p,0x%08x,%p,%u,%u)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Ignoring dwFlags 0x%08x in request msg\0A\00", align 1
@DPMSGMAGIC_DPLAYMSG = common dso_local global i32 0, align 4
@DPMSGVER_DP6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Allocating new playerid 0x%08x from remote request\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GOT THE SELF MESSAGE: %p -> 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Sending message to self to get my addr\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Unknown wCommandId %u. Ignoring message\0A\00", align 1
@DP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DP_HandleMessage(%struct.TYPE_17__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8** %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %19, i8* %20, i32 %21, i8* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %13, align 4
  switch i32 %26, label %136 [
    i32 134, label %27
    i32 135, label %33
    i32 128, label %48
    i32 131, label %101
    i32 129, label %101
    i32 130, label %107
    i32 133, label %126
    i32 132, label %130
  ]

27:                                               ; preds = %8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8**, i8*** %15, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = call i32 @NS_ReplyToEnumSessionsRequest(i8* %28, i8** %29, i32* %30, %struct.TYPE_17__* %31)
  br label %140

33:                                               ; preds = %8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @NS_AddRemoteComputerAsNameServer(i8* %34, i32 %40, i8* %41, i32 %46)
  br label %140

48:                                               ; preds = %8
  %49 = load i8*, i8** %10, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %17, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 16
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %16, align 8
  store i32 %59, i32* %60, align 4
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @HeapAlloc(i32 %61, i32 %62, i32 %64)
  %66 = load i8**, i8*** %15, align 8
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i8**, i8*** %15, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %73, i64 %80
  %82 = bitcast i32* %81 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %18, align 8
  %83 = load i32, i32* @DPMSGMAGIC_DPLAYMSG, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i32 129, i32* %89, align 4
  %90 = load i32, i32* @DPMSGVER_DP6, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = call i32 (...) @DP_NextObjectId()
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %140

101:                                              ; preds = %8, %8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @DP_MSG_ReplyReceived(%struct.TYPE_17__* %102, i32 %103, i8* %104, i32 %105)
  br label %140

107:                                              ; preds = %8
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %108, i32 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @NS_SetLocalAddr(i32 %118, i8* %119, i32 20)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @DP_MSG_ReplyReceived(%struct.TYPE_17__* %121, i32 %122, i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %8, %107
  %127 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = call i32 @DP_MSG_ToSelf(%struct.TYPE_17__* %128, i32 1)
  br label %140

130:                                              ; preds = %8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @DP_MSG_ErrorReceived(%struct.TYPE_17__* %131, i32 %132, i8* %133, i32 %134)
  br label %140

136:                                              ; preds = %8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = call i32 (...) @DebugBreak()
  br label %140

140:                                              ; preds = %136, %130, %126, %101, %48, %33, %27
  %141 = load i32, i32* @DP_OK, align 4
  ret i32 %141
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @NS_ReplyToEnumSessionsRequest(i8*, i8**, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @NS_AddRemoteComputerAsNameServer(i8*, i32, i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @DP_NextObjectId(...) #1

declare dso_local i32 @DP_MSG_ReplyReceived(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @NS_SetLocalAddr(i32, i8*, i32) #1

declare dso_local i32 @DP_MSG_ToSelf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @DP_MSG_ErrorReceived(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @DebugBreak(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
