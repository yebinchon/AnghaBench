; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_page_prune_execute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_page_prune_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_page_prune_execute(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BufferGetPage(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %9, align 8
  store i32* %27, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %45, %7
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32*, i32** %16, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %16, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %16, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @PageGetItemId(i32 %39, i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @ItemIdSetRedirect(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %63, %48
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32*, i32** %16, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %16, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %21, align 4
  %60 = call i32 @PageGetItemId(i32 %58, i32 %59)
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @ItemIdSetDead(i32 %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load i32*, i32** %13, align 8
  store i32* %67, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %81, %66
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %16, align 8
  %75 = load i32, i32* %73, align 4
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @PageGetItemId(i32 %76, i32 %77)
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %24, align 4
  %80 = call i32 @ItemIdSetUnused(i32 %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %68

84:                                               ; preds = %68
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @PageRepairFragmentation(i32 %85)
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemIdSetRedirect(i32, i32) #1

declare dso_local i32 @ItemIdSetDead(i32) #1

declare dso_local i32 @ItemIdSetUnused(i32) #1

declare dso_local i32 @PageRepairFragmentation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
