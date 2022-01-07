; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/reactos/extr_treelist.c_GlobalDeinit.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/reactos/extr_treelist.c_GlobalDeinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lWindowCount = common dso_local global i32 0, align 4
@hDefaultFontN = common dso_local global i32* null, align 8
@hDefaultFontB = common dso_local global i32* null, align 8
@hPatternPen = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GlobalDeinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GlobalDeinit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @InterlockedDecrement(i32* @lWindowCount)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %27

6:                                                ; preds = %0
  %7 = load i32*, i32** @hDefaultFontN, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @hDefaultFontN, align 8
  %11 = call i32 @DeleteObject(i32* %10)
  store i32* null, i32** @hDefaultFontN, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** @hDefaultFontB, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @hDefaultFontB, align 8
  %17 = call i32 @DeleteObject(i32* %16)
  store i32* null, i32** @hDefaultFontB, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** @hPatternPen, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** @hPatternPen, align 8
  %23 = call i32 @DeleteObject(i32* %22)
  store i32* null, i32** @hPatternPen, align 8
  br label %24

24:                                               ; preds = %21, %18
  br i1 true, label %25, label %27

25:                                               ; preds = %24
  %26 = call i32 (...) @pBufferedPtExit()
  br label %27

27:                                               ; preds = %5, %25, %24
  ret void
}

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @pBufferedPtExit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
