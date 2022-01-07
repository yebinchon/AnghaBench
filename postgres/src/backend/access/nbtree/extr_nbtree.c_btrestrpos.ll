; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btrestrpos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btrestrpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i32 }

@BTScanPosData = common dso_local global i32 0, align 4
@items = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrestrpos(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = call i32 @_bt_restore_array_keys(%struct.TYPE_12__* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  br label %101

28:                                               ; preds = %16
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = call i64 @BTScanPosIsValid(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = call i32 @_bt_killitems(%struct.TYPE_12__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = call i32 @BTScanPosUnpinIfPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %43)
  br label %45

45:                                               ; preds = %41, %28
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = call i64 @BTScanPosIsValid(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = call i64 @BTScanPosIsPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @IncrBufferRefCount(i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i32, i32* @BTScanPosData, align 4
  %67 = load i32*, i32** @items, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @offsetof(i32 %66, i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = add i64 %70, %76
  %78 = call i32 @memcpy(%struct.TYPE_14__* %63, %struct.TYPE_14__* %65, i64 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = icmp ne %struct.TYPE_14__* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %61
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @memcpy(%struct.TYPE_14__* %86, %struct.TYPE_14__* %89, i64 %93)
  br label %95

95:                                               ; preds = %83, %61
  br label %100

96:                                               ; preds = %45
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %98)
  br label %100

100:                                              ; preds = %96, %95
  br label %101

101:                                              ; preds = %100, %21
  ret void
}

declare dso_local i32 @_bt_restore_array_keys(%struct.TYPE_12__*) #1

declare dso_local i64 @BTScanPosIsValid(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @_bt_killitems(%struct.TYPE_12__*) #1

declare dso_local i32 @BTScanPosUnpinIfPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i64 @BTScanPosIsPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @IncrBufferRefCount(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
