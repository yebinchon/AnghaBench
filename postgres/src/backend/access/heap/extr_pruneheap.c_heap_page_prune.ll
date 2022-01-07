; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_page_prune.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_page_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64* }
%struct.TYPE_5__ = type { i64 }

@InvalidTransactionId = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_page_prune(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @BufferGetPage(i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* @InvalidTransactionId, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 8
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @memset(i64* %29, i32 0, i32 8)
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @PageGetMaxOffsetNumber(i64 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %68, %5
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 8
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %68

46:                                               ; preds = %38
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @PageGetItemId(i64 %47, i64 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ItemIdIsUsed(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %16, align 4
  %55 = call i64 @ItemIdIsDead(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %46
  br label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @heap_prune_chain(i32 %59, i32 %60, i64 %61, i32 %62, %struct.TYPE_4__* %15)
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %58, %57, %45
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @OffsetNumberNext(i64 %69)
  store i64 %70, i64* %13, align 8
  br label %34

71:                                               ; preds = %34
  %72 = call i32 (...) @START_CRIT_SECTION()
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %80, %76, %71
  %85 = load i32, i32* %7, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = call i32 @heap_page_prune_execute(i32 %85, i32 %87, i64 %90, i32 %92, i32 %94, i32 %96, i64 %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = inttoptr i64 %103 to %struct.TYPE_5__*
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @PageClearFull(i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @MarkBufferDirty(i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @RelationNeedsWAL(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %84
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @log_heap_clean(i32 %114, i32 %115, i32 %117, i64 %120, i32 %122, i32 %124, i32 %126, i64 %129, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @BufferGetPage(i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @PageSetLSN(i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %113, %84
  br label %161

138:                                              ; preds = %80
  %139 = load i64, i64* %12, align 8
  %140 = inttoptr i64 %139 to %struct.TYPE_5__*
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %142, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %138
  %147 = load i64, i64* %12, align 8
  %148 = call i64 @PageIsFull(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %146, %138
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %12, align 8
  %154 = inttoptr i64 %153 to %struct.TYPE_5__*
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  %156 = load i64, i64* %12, align 8
  %157 = call i32 @PageClearFull(i64 %156)
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @MarkBufferDirtyHint(i32 %158, i32 1)
  br label %160

160:                                              ; preds = %150, %146
  br label %161

161:                                              ; preds = %160, %137
  %162 = call i32 (...) @END_CRIT_SECTION()
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load i32, i32* %11, align 4
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %166, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %11, align 4
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %172, %174
  %176 = call i32 @pgstat_update_heap_dead_tuples(i32 %171, i32 %175)
  br label %177

177:                                              ; preds = %170, %165, %161
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %10, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  ret i32 %181
}

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i64 @heap_prune_chain(i32, i32, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @heap_page_prune_execute(i32, i32, i64, i32, i32, i32, i64) #1

declare dso_local i32 @PageClearFull(i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @log_heap_clean(i32, i32, i32, i64, i32, i32, i32, i64, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i64 @PageIsFull(i64) #1

declare dso_local i32 @MarkBufferDirtyHint(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @pgstat_update_heap_dead_tuples(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
