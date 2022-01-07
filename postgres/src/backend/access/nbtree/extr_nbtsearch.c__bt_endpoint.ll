; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_endpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid scan direction: %d\00", align 1
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64)* @_bt_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_endpoint(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @ScanDirectionIsBackward(i64 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @_bt_get_endpoint(i32 %21, i32 0, i64 %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @BufferIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PredicateLockRelation(i32 %32, i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %38)
  store i32 0, i32* %3, align 4
  br label %138

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @BufferGetBlockNumber(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PredicateLockPage(i32 %41, i32 %43, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @BufferGetPage(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @PageGetSpecialPointer(i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @P_ISLEAF(i64 %52)
  %54 = call i32 @Assert(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @ScanDirectionIsForward(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @P_FIRSTDATAKEY(i64 %59)
  store i64 %60, i64* %11, align 8
  br label %77

61:                                               ; preds = %40
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @ScanDirectionIsBackward(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @P_RIGHTMOST(i64 %66)
  %68 = call i32 @Assert(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @PageGetMaxOffsetNumber(i32 %69)
  store i64 %70, i64* %11, align 8
  br label %76

71:                                               ; preds = %61
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @_bt_initialize_more_data(%struct.TYPE_13__* %82, i64 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @_bt_readpage(%struct.TYPE_11__* %85, i64 %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %77
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %96 = call i32 @LockBuffer(i32 %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @_bt_steppage(%struct.TYPE_11__* %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %138

102:                                              ; preds = %90
  br label %108

103:                                              ; preds = %77
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = call i32 @_bt_drop_lock_and_maybe_pin(%struct.TYPE_11__* %104, %struct.TYPE_14__* %106)
  br label %108

108:                                              ; preds = %103, %102
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %116
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %12, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %108
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %127, %108
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %101, %31
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @_bt_get_endpoint(i32, i32, i64, i32) #1

declare dso_local i64 @ScanDirectionIsBackward(i64) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @PredicateLockRelation(i32, i32) #1

declare dso_local i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @PredicateLockPage(i32, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @P_ISLEAF(i64) #1

declare dso_local i64 @ScanDirectionIsForward(i64) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i32 @P_RIGHTMOST(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @_bt_initialize_more_data(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @_bt_readpage(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_bt_steppage(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @_bt_drop_lock_and_maybe_pin(%struct.TYPE_11__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
