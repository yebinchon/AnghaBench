; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvMsgWrite.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvMsgWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i64, i64*, i64* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@g_pCB = common dso_local global %struct.TYPE_17__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@g_H2NSyncPattern = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@SYNC_PATTERN_LEN = common dso_local global i32 0, align 4
@_SL_CMD_HDR_SIZE = common dso_local global i32 0, align 4
@MsgCnt = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@SL_OS_RET_CODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlDrvMsgWrite(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp ne %struct.TYPE_16__* null, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY_PROTOCOL(i32 %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %16, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i64* %17, i64** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = call i64 @_SL_PROTOCOL_CALC_LEN(%struct.TYPE_16__* %31, %struct.TYPE_15__* %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %3
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, -1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %49, %44, %39, %3
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SYNC_PATTERN_LEN, align 4
  %74 = call i32 @NWP_IF_WRITE_CHECK(i32 %72, i64* bitcast (%struct.TYPE_18__* @g_H2NSyncPattern to i64*), i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_14__* %79 to i64*
  %81 = load i32, i32* @_SL_CMD_HDR_SIZE, align 4
  %82 = call i32 @NWP_IF_WRITE_CHECK(i32 %77, i64* %80, i32 %81)
  %83 = load i64*, i64** %6, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %69
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @_SL_PROTOCOL_ALIGN_SIZE(i64 %97)
  %99 = call i32 @NWP_IF_WRITE_CHECK(i32 %93, i64* %94, i32 %98)
  br label %100

100:                                              ; preds = %90, %85, %69
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @TRUE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = call i32 @_SL_PROTOCOL_ALIGN_SIZE(i64 %114)
  %116 = call i32 @NWP_IF_WRITE_CHECK(i32 %107, i64* %110, i32 %115)
  br label %117

117:                                              ; preds = %104, %100
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = icmp ne %struct.TYPE_15__* %118, null
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @_SL_IS_PROTOCOL_ALIGNED_SIZE(i64 %128)
  %130 = call i32 @VERIFY_PROTOCOL(i32 %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_pCB, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @_SL_PROTOCOL_ALIGN_SIZE(i64 %139)
  %141 = call i32 @NWP_IF_WRITE_CHECK(i32 %133, i64* %136, i32 %140)
  br label %142

142:                                              ; preds = %125, %120, %117
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @MsgCnt, i32 0, i32 0), align 4
  %144 = call i32 @_SL_DBG_CNT_INC(i32 %143)
  %145 = load i32, i32* @SL_OS_RET_CODE_OK, align 4
  ret i32 %145
}

declare dso_local i32 @VERIFY_PROTOCOL(i32) #1

declare dso_local i64 @_SL_PROTOCOL_CALC_LEN(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @NWP_IF_WRITE_CHECK(i32, i64*, i32) #1

declare dso_local i32 @_SL_PROTOCOL_ALIGN_SIZE(i64) #1

declare dso_local i32 @_SL_IS_PROTOCOL_ALIGNED_SIZE(i64) #1

declare dso_local i32 @_SL_DBG_CNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
