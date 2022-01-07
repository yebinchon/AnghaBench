; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DFCS_PUSHED = common dso_local global i32 0, align 4
@DFCS_CHECKED = common dso_local global i32 0, align 4
@DFCS_FLAT = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @MyDrawFrameButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MyDrawFrameButton(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @DFCS_PUSHED, align 4
  %12 = load i32, i32* @DFCS_CHECKED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DFCS_FLAT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EDGE_SUNKEN, align 4
  store i32 %19, i32* %9, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EDGE_RAISED, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DFCS_FLAT, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @BF_RECT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BF_SOFT, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @MyIntDrawRectEdge(i32 %23, i32 %24, i32 %25, i32 %32, i32* %33)
  ret i32 %34
}

declare dso_local i32 @MyIntDrawRectEdge(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
