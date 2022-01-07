; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesToast.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesToast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@InvalidOid = common dso_local global i64 0, align 8
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4
@HEAP_MOVED_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @HeapTupleSatisfiesToast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HeapTupleSatisfiesToast(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = call i32 @ItemPointerIsValid(i32* %15)
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @InvalidOid, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = call i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_9__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %113, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %114

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_9__* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @TransactionIdIsCurrentTransactionId(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %114

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @TransactionIdIsInProgress(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @TransactionIdDidCommit(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %59 = load i32, i32* @InvalidTransactionId, align 4
  %60 = call i32 @SetHintBits(%struct.TYPE_9__* %56, i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %114

61:                                               ; preds = %51
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %65 = load i32, i32* @InvalidTransactionId, align 4
  %66 = call i32 @SetHintBits(%struct.TYPE_9__* %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %47
  br label %112

68:                                               ; preds = %33
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HEAP_MOVED_IN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %68
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_9__* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @TransactionIdIsCurrentTransactionId(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @TransactionIdIsInProgress(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %114

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @TransactionIdDidCommit(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %94 = load i32, i32* @InvalidTransactionId, align 4
  %95 = call i32 @SetHintBits(%struct.TYPE_9__* %91, i32 %92, i32 %93, i32 %94)
  br label %102

96:                                               ; preds = %86
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %100 = load i32, i32* @InvalidTransactionId, align 4
  %101 = call i32 @SetHintBits(%struct.TYPE_9__* %97, i32 %98, i32 %99, i32 %100)
  store i32 0, i32* %4, align 4
  br label %114

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %75
  br label %111

104:                                              ; preds = %68
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_9__* %105)
  %107 = call i32 @TransactionIdIsValid(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %114

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %103
  br label %112

112:                                              ; preds = %111, %67
  br label %113

113:                                              ; preds = %112, %3
  store i32 1, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %109, %96, %85, %55, %46, %32
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_9__*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_9__*) #1

declare dso_local i32 @HeapTupleHeaderGetXvac(%struct.TYPE_9__*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @SetHintBits(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
