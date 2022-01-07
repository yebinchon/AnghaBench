; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_SerializeTransactionState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_SerializeTransactionState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i32, i32 }

@XactIsoLevel = common dso_local global i32 0, align 4
@XactDeferrable = common dso_local global i32 0, align 4
@XactTopFullTransactionId = common dso_local global i32 0, align 4
@CurrentTransactionState = common dso_local global %struct.TYPE_4__* null, align 8
@currentCommandId = common dso_local global i32 0, align 4
@nParallelCurrentXids = common dso_local global i32 0, align 4
@ParallelCurrentXids = common dso_local global i32* null, align 8
@SerializedTransactionStateHeaderSize = common dso_local global i32 0, align 4
@xidComparator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SerializeTransactionState(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = load i32, i32* @XactIsoLevel, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @XactDeferrable, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @XactTopFullTransactionId, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurrentTransactionState, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @currentCommandId, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @nParallelCurrentXids, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @nParallelCurrentXids, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32*, i32** @ParallelCurrentXids, align 8
  %40 = load i32, i32* @nParallelCurrentXids, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %38, i32* %39, i32 %43)
  br label %153

45:                                               ; preds = %2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurrentTransactionState, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %5, align 8
  br label %47

47:                                               ; preds = %65, %45
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @FullTransactionIdIsValid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @add_size(i32 %57, i32 1)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @add_size(i32 %60, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %5, align 8
  br label %47

69:                                               ; preds = %47
  %70 = load i32, i32* @SerializedTransactionStateHeaderSize, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = add i64 %71, %74
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ule i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32* @palloc(i32 %84)
  store i32* %85, i32** %8, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurrentTransactionState, align 8
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %5, align 8
  br label %87

87:                                               ; preds = %126, %69
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %90, label %130

90:                                               ; preds = %87
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @FullTransactionIdIsValid(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @XidFromFullTransactionId(i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %96, %90
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(i32* %110, i32* %113, i32 %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %106
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  store %struct.TYPE_4__* %129, %struct.TYPE_4__** %5, align 8
  br label %87

130:                                              ; preds = %87
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @Assert(i32 %134)
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @xidComparator, align 4
  %139 = call i32 @qsort(i32* %136, i32 %137, i32 4, i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i32* %146, i32* %147, i32 %151)
  br label %153

153:                                              ; preds = %130, %31
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @FullTransactionIdIsValid(i32) #1

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
