; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_brinSetHeapBlockItemptr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_brinSetHeapBlockItemptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brinSetHeapBlockItemptr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BufferGetPage(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i64 @PageGetContents(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %9, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @HEAPBLK_TO_REVMAP_INDEX(i32 %21, i32 %22)
  %24 = load i32*, i32** %10, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %10, align 8
  %27 = call i64 @ItemPointerIsValid(i32* %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @ItemPointerGetBlockNumber(i32* %8)
  %32 = call i32 @ItemPointerGetOffsetNumber(i32* %8)
  %33 = call i32 @ItemPointerSet(i32* %30, i32 %31, i32 %32)
  br label %37

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @ItemPointerSetInvalid(i32* %35)
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetContents(i32) #1

declare dso_local i32 @HEAPBLK_TO_REVMAP_INDEX(i32, i32) #1

declare dso_local i64 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
