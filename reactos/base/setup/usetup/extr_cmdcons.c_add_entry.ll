; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/usetup/extr_cmdcons.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/usetup/extr_cmdcons.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ProcessHeap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_entry(i32* %0, i32*** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i32*** %1, i32**** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ProcessHeap, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @strlen(i32 %11)
  %13 = add nsw i64 %12, 1
  %14 = call i32* @RtlAllocateHeap(i32 %10, i32 0, i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @strcpy(i32* %20, i32 %21)
  %23 = load i32***, i32**** %6, align 8
  %24 = load i32**, i32*** %23, align 8
  store i32** %24, i32*** %9, align 8
  %25 = load i32, i32* @ProcessHeap, align 4
  %26 = load i32**, i32*** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i32** @RtlReAllocateHeap(i32 %25, i32 0, i32** %26, i32 %32)
  %34 = load i32***, i32**** %6, align 8
  store i32** %33, i32*** %34, align 8
  %35 = load i32***, i32**** %6, align 8
  %36 = load i32**, i32*** %35, align 8
  %37 = icmp eq i32** %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load i32, i32* @ProcessHeap, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @RtlFreeHeap(i32 %39, i32 0, i32* %40)
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32***, i32**** %6, align 8
  store i32** %42, i32*** %43, align 8
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %19
  %46 = load i32*, i32** %8, align 8
  %47 = load i32***, i32**** %6, align 8
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  store i32* %46, i32** %52, align 8
  %53 = load i32***, i32**** %6, align 8
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %54, i64 %58
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %45, %38, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32* @RtlAllocateHeap(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32** @RtlReAllocateHeap(i32, i32, i32**, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
