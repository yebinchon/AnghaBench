; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_TransactionIdIsCurrentTransactionId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_TransactionIdIsCurrentTransactionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64*, i32, %struct.TYPE_3__* }

@nParallelCurrentXids = common dso_local global i32 0, align 4
@ParallelCurrentXids = common dso_local global i64* null, align 8
@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@TRANS_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransactionIdIsCurrentTransactionId(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @TransactionIdIsNormal(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call i64 (...) @GetTopTransactionIdIfAny()
  %20 = call i64 @TransactionIdEquals(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %137

23:                                               ; preds = %17
  %24 = load i32, i32* @nParallelCurrentXids, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  %27 = load i32, i32* @nParallelCurrentXids, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %60, %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %7, align 4
  %40 = load i64*, i64** @ParallelCurrentXids, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %137

49:                                               ; preds = %33
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59
  br label %29

61:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %137

62:                                               ; preds = %23
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %4, align 8
  br label %64

64:                                               ; preds = %132, %62
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %67, label %136

67:                                               ; preds = %64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TRANS_ABORT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %132

74:                                               ; preds = %67
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @FullTransactionIdIsValid(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %132

81:                                               ; preds = %74
  %82 = load i64, i64* %3, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @XidFromFullTransactionId(i32 %85)
  %87 = call i64 @TransactionIdEquals(i64 %82, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 1, i32* %2, align 4
  br label %137

90:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %130, %90
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sdiv i32 %103, 2
  %105 = add nsw i32 %100, %104
  store i32 %105, i32* %11, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %3, align 8
  %115 = call i64 @TransactionIdEquals(i64 %113, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %99
  store i32 1, i32* %2, align 4
  br label %137

118:                                              ; preds = %99
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %3, align 8
  %121 = call i64 @TransactionIdPrecedes(i64 %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %129

126:                                              ; preds = %118
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129
  br label %95

131:                                              ; preds = %95
  br label %132

132:                                              ; preds = %131, %80, %73
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  store %struct.TYPE_3__* %135, %struct.TYPE_3__** %4, align 8
  br label %64

136:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %117, %89, %61, %48, %22, %16
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @TransactionIdIsNormal(i64) #1

declare dso_local i64 @TransactionIdEquals(i64, i64) #1

declare dso_local i64 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @FullTransactionIdIsValid(i32) #1

declare dso_local i64 @XidFromFullTransactionId(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
