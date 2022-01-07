; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistSetLastUsedPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistSetLastUsedPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@GBUF_LEAF = common dso_local global i32 0, align 4
@GBUF_NULLS = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpGistSetLastUsedPage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @spgGetCache(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BufferGetPage(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @BufferGetBlockNumber(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @SpGistBlockIsFixed(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %68

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @SpGistPageIsLeaf(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @GBUF_LEAF, align 4
  store i32 %26, i32* %10, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @GBUF_INNER_PARITY(i64 %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @SpGistPageStoresNulls(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @GBUF_NULLS, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.TYPE_3__* @GET_LUP(i32* %39, i32 %40)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @PageGetExactFreeSpace(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @InvalidBlockNumber, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55, %49, %38
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %20, %61, %55
  ret void
}

declare dso_local i32* @spgGetCache(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @SpGistBlockIsFixed(i64) #1

declare dso_local i64 @SpGistPageIsLeaf(i32) #1

declare dso_local i32 @GBUF_INNER_PARITY(i64) #1

declare dso_local i64 @SpGistPageStoresNulls(i32) #1

declare dso_local %struct.TYPE_3__* @GET_LUP(i32*, i32) #1

declare dso_local i32 @PageGetExactFreeSpace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
