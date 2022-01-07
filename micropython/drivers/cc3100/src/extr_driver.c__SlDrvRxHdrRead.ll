; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvRxHdrRead.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvRxHdrRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@g_pCB = common dso_local global %struct.TYPE_4__* null, align 8
@g_H2NCnysPattern = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SYNC_PATTERN_LEN = common dso_local global i64 0, align 8
@SL_SYNC_SCAN_THRESHOLD = common dso_local global i64 0, align 8
@Work = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@_SL_RESP_SPEC_HDR_SIZE = common dso_local global i64 0, align 8
@SL_RET_CODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlDrvRxHdrRead(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %11 = call i32 @NWP_IF_WRITE_CHECK(i32 %9, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_H2NCnysPattern, i32 0, i32 0), i64 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @NWP_IF_READ_CHECK(i32 %14, i32* %16, i64 4)
  %18 = load i64, i64* %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @_SL_DBG_SYNC_LOG(i64 %18, i32* %19)
  br label %21

21:                                               ; preds = %67, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @N2H_SYNC_PATTERN_MATCH(i32* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %72

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SL_SYNC_SCAN_THRESHOLD, align 8
  %32 = icmp ult i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY_PROTOCOL(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %37 = urem i64 %35, %36
  %38 = icmp eq i64 0, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = call i32 @NWP_IF_READ_CHECK(i32 %42, i32* %44, i64 4)
  %46 = load i64, i64* %5, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @_SL_DBG_SYNC_LOG(i64 %46, i32* %47)
  br label %49

49:                                               ; preds = %39, %29
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 7
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %21

72:                                               ; preds = %21
  %73 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %74 = load i64, i64* %5, align 8
  %75 = urem i64 %74, %73
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = bitcast i32* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = bitcast i32* %84 to i64*
  store i64 %82, i64* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %91 = load i64, i64* %5, align 8
  %92 = sub i64 %90, %91
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @NWP_IF_READ_CHECK(i32 %88, i32* %93, i64 %94)
  br label %103

96:                                               ; preds = %72
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = call i32 @NWP_IF_READ_CHECK(i32 %99, i32* %101, i64 4)
  br label %103

103:                                              ; preds = %96, %78
  br label %104

104:                                              ; preds = %111, %103
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @N2H_SYNC_PATTERN_MATCH(i32* %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Work, i32 0, i32 0), align 4
  %113 = call i32 @_SL_DBG_CNT_INC(i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %120 = call i32 @NWP_IF_READ_CHECK(i32 %116, i32* %118, i64 %119)
  br label %104

121:                                              ; preds = %104
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i64, i64* @_SL_RESP_SPEC_HDR_SIZE, align 8
  %133 = call i32 @NWP_IF_READ_CHECK(i32 %128, i32* %131, i64 %132)
  %134 = load i64, i64* %5, align 8
  %135 = icmp ugt i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %121
  %137 = load i64, i64* @SYNC_PATTERN_LEN, align 8
  %138 = load i64, i64* %5, align 8
  %139 = sub i64 %137, %138
  br label %141

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140, %136
  %142 = phi i64 [ %139, %136 ], [ 0, %140 ]
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** %4, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @SL_RET_CODE_OK, align 4
  ret i32 %145
}

declare dso_local i32 @NWP_IF_WRITE_CHECK(i32, i32*, i64) #1

declare dso_local i32 @NWP_IF_READ_CHECK(i32, i32*, i64) #1

declare dso_local i32 @_SL_DBG_SYNC_LOG(i64, i32*) #1

declare dso_local i64 @N2H_SYNC_PATTERN_MATCH(i32*, i32) #1

declare dso_local i32 @VERIFY_PROTOCOL(i32) #1

declare dso_local i32 @_SL_DBG_CNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
