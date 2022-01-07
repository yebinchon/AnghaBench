; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlFindAndSetActiveObj.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlFindAndSetActiveObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@g_pCB = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_CONCURRENT_ACTIONS = common dso_local global i64 0, align 8
@SL_NETAPP_FAMILY_MASK = common dso_local global i32 0, align 4
@SL_OPCODE_IPV6 = common dso_local global i64 0, align 8
@RECV_ID = common dso_local global i64 0, align 8
@SL_OPCODE_SOCKET_RECVASYNCRESPONSE = common dso_local global i64 0, align 8
@SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE = common dso_local global i64 0, align 8
@SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE_V6 = common dso_local global i64 0, align 8
@SL_RET_CODE_OK = common dso_local global i32 0, align 4
@_SlActionLookupTable = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_SOCKET_ENUM_IDX = common dso_local global i64 0, align 8
@BSD_SOCKET_ID_MASK = common dso_local global i64 0, align 8
@SL_MAX_SOCKETS = common dso_local global i64 0, align 8
@SL_RET_CODE_SELF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlFindAndSetActiveObj(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %140, %2
  %11 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %148

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SL_NETAPP_FAMILY_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i64, i64* @SL_OPCODE_IPV6, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %25, %14
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RECV_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %41, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %40
  %52 = load i64, i64* @SL_OPCODE_SOCKET_RECVASYNCRESPONSE, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @SL_OPCODE_SOCKET_RECVFROMASYNCRESPONSE_V6, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %55, %51
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = load i32, i32* @SL_RET_CODE_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %150

70:                                               ; preds = %59, %40, %30
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_SlActionLookupTable, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MAX_SOCKET_ENUM_IDX, align 8
  %80 = sub i64 %78, %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %140

86:                                               ; preds = %70
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @BSD_SOCKET_ID_MASK, align 8
  %97 = and i64 %95, %96
  %98 = icmp eq i64 %87, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i64, i64* @SL_MAX_SOCKETS, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %116, label %103

103:                                              ; preds = %99, %86
  %104 = load i64, i64* @SL_MAX_SOCKETS, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @BSD_SOCKET_ID_MASK, align 8
  %114 = and i64 %112, %113
  %115 = icmp eq i64 %104, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %103, %99
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_SlActionLookupTable, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @MAX_SOCKET_ENUM_IDX, align 8
  %126 = sub i64 %124, %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32 %129, i32* %133, align 8
  %134 = load i64, i64* %6, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %134, i64* %138, align 8
  %139 = load i32, i32* @SL_RET_CODE_OK, align 4
  store i32 %139, i32* %3, align 4
  br label %150

140:                                              ; preds = %103, %70
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pCB, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %6, align 8
  br label %10

148:                                              ; preds = %10
  %149 = load i32, i32* @SL_RET_CODE_SELF_ERROR, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %116, %63
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
