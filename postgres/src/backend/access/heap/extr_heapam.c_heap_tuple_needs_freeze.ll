; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_tuple_needs_freeze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_tuple_needs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_MOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_tuple_needs_freeze(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = call i8* @HeapTupleHeaderGetXmin(%struct.TYPE_10__* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i64 @TransactionIdIsNormal(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @TransactionIdPrecedes(i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %125

26:                                               ; preds = %20, %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_10__* %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @MultiXactIdIsValid(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %90

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @HEAP_LOCKED_UPGRADED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %125

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @MultiXactIdPrecedes(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %125

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %57)
  %59 = call i32 @GetMultiXactIdMembers(i8* %54, %struct.TYPE_9__** %12, i32 0, i32 %58)
  store i32 %59, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %78, %53
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @TransactionIdPrecedes(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = call i32 @pfree(%struct.TYPE_9__* %75)
  store i32 1, i32* %5, align 4
  br label %125

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = call i32 @pfree(%struct.TYPE_9__* %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %39
  br label %104

91:                                               ; preds = %26
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_10__* %92)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i64 @TransactionIdIsNormal(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @TransactionIdPrecedes(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %5, align 4
  br label %125

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %90
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @HEAP_MOVED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = call i8* @HeapTupleHeaderGetXvac(%struct.TYPE_10__* %112)
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @TransactionIdIsNormal(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i64 @TransactionIdPrecedes(i8* %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 1, i32* %5, align 4
  br label %125

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123, %104
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %122, %102, %74, %52, %46, %25
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i8* @HeapTupleHeaderGetXmin(%struct.TYPE_10__*) #1

declare dso_local i64 @TransactionIdIsNormal(i8*) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

declare dso_local i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_10__*) #1

declare dso_local i32 @MultiXactIdIsValid(i8*) #1

declare dso_local i64 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i8*, i8*) #1

declare dso_local i32 @GetMultiXactIdMembers(i8*, %struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

declare dso_local i8* @HeapTupleHeaderGetXvac(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
