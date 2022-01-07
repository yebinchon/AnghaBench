; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_buildFreshLeafTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_buildFreshLeafTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GinMaxItemSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32, i32, i32, i32*, i32, i32*, i32)* @buildFreshLeafTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @buildFreshLeafTuple(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @GinMaxItemSize, align 4
  %23 = call i32* @ginCompressPostingList(i32* %20, i32 %21, i32 %22, i32* null)
  store i32* %23, i32** %18, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %18, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32*, i32** %18, align 8
  %34 = call i32 @SizeOfGinPostingList(i32* %33)
  %35 = load i32, i32* %14, align 4
  %36 = call i32* @GinFormTuple(%struct.TYPE_4__* %27, i32 %28, i32 %29, i32 %30, i8* %32, i32 %34, i32 %35, i32 0)
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 @pfree(i32* %37)
  br label %39

39:                                               ; preds = %26, %8
  %40 = load i32*, i32** %17, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32* @GinFormTuple(%struct.TYPE_4__* %43, i32 %44, i32 %45, i32 %46, i8* null, i32 0, i32 0, i32 1)
  store i32* %47, i32** %17, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @createPostingTree(i32 %50, i32* %51, i32 %52, i32* %53, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @GinSetPostingTree(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %42, %39
  %60 = load i32*, i32** %17, align 8
  ret i32* %60
}

declare dso_local i32* @ginCompressPostingList(i32*, i32, i32, i32*) #1

declare dso_local i32* @GinFormTuple(%struct.TYPE_4__*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SizeOfGinPostingList(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @createPostingTree(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @GinSetPostingTree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
