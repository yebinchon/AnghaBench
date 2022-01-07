; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_hot_search_buffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_hot_search_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@RecentGlobalXmin = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_hot_search_buffer(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_13__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @BufferGetPage(i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* %15, align 4
  %31 = load i32*, i32** %14, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %7
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @ItemPointerGetBlockNumber(i32* %33)
  store i64 %34, i64* %18, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @ItemPointerGetOffsetNumber(i32* %35)
  store i64 %36, i64* %19, align 8
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* @RecentGlobalXmin, align 4
  %43 = call i32 @TransactionIdIsValid(i32 %42)
  %44 = call i32 @Assert(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @BufferGetBlockNumber(i32 %45)
  %47 = load i64, i64* %18, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  br label %51

51:                                               ; preds = %187, %75, %32
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* @FirstOffsetNumber, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %19, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @PageGetMaxOffsetNumber(i32 %57)
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %51
  br label %188

61:                                               ; preds = %55
  %62 = load i32, i32* %16, align 4
  %63 = load i64, i64* %19, align 8
  %64 = call i32 @PageGetItemId(i32 %62, i64 %63)
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %23, align 4
  %66 = call i32 @ItemIdIsNormal(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %23, align 4
  %70 = call i64 @ItemIdIsRedirected(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %23, align 4
  %77 = call i64 @ItemIdGetRedirect(i32 %76)
  store i64 %77, i64* %19, align 8
  store i32 0, i32* %20, align 4
  br label %51

78:                                               ; preds = %72, %68
  br label %188

79:                                               ; preds = %61
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %23, align 4
  %82 = call i64 @PageGetItem(i32 %80, i32 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_12__*
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %85, align 8
  %86 = load i32, i32* %23, align 4
  %87 = call i32 @ItemIdGetLength(i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @RelationGetRelid(i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %19, align 8
  %98 = call i32 @ItemPointerSet(i32* %95, i64 %96, i64 %97)
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %79
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %103 = call i64 @HeapTupleIsHeapOnly(%struct.TYPE_13__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %188

106:                                              ; preds = %101, %79
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @TransactionIdIsValid(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_12__* %114)
  %116 = call i32 @TransactionIdEquals(i32 %111, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  br label %188

119:                                              ; preds = %110, %106
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %149, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_13__* %123, i32 %124, i32 %125)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @CheckForSerializableConflictOut(i32 %127, i32 %128, %struct.TYPE_13__* %129, i32 %130, i32 %131)
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %122
  %136 = load i32*, i32** %9, align 8
  %137 = load i64, i64* %19, align 8
  %138 = call i32 @ItemPointerSetOffsetNumber(i32* %136, i64 %137)
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @PredicateLockTuple(i32 %139, %struct.TYPE_13__* %140, i32 %141)
  %143 = load i32*, i32** %14, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32*, i32** %14, align 8
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %135
  store i32 1, i32* %8, align 4
  br label %189

148:                                              ; preds = %122
  br label %149

149:                                              ; preds = %148, %119
  store i32 0, i32* %22, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %158 = load i32, i32* @RecentGlobalXmin, align 4
  %159 = call i32 @HeapTupleIsSurelyDead(%struct.TYPE_13__* %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** %14, align 8
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %161, %156, %152, %149
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %165 = call i64 @HeapTupleIsHotUpdated(%struct.TYPE_13__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = call i64 @ItemPointerGetBlockNumber(i32* %171)
  %173 = load i64, i64* %18, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @Assert(i32 %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = call i64 @ItemPointerGetOffsetNumber(i32* %180)
  store i64 %181, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_12__* %184)
  store i32 %185, i32* %17, align 4
  br label %187

186:                                              ; preds = %163
  br label %188

187:                                              ; preds = %167
  br label %51

188:                                              ; preds = %186, %118, %105, %78, %60
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %188, %147
  %190 = load i32, i32* %8, align 4
  ret i32 %190
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @ItemIdIsRedirected(i32) #1

declare dso_local i64 @ItemIdGetRedirect(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i64) #1

declare dso_local i64 @HeapTupleIsHeapOnly(%struct.TYPE_13__*) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_12__*) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ItemPointerSetOffsetNumber(i32*, i64) #1

declare dso_local i32 @PredicateLockTuple(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapTupleIsSurelyDead(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @HeapTupleIsHotUpdated(%struct.TYPE_13__*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
