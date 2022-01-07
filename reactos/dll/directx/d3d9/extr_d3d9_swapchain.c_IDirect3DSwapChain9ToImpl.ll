; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_swapchain.c_IDirect3DSwapChain9ToImpl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_swapchain.c_IDirect3DSwapChain9ToImpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Direct3DSwapChain9_INT = common dso_local global i32 0, align 4
@lpVtbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IDirect3DSwapChain9ToImpl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* null, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %15

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = ptrtoint i32* %8 to i64
  %10 = load i32, i32* @Direct3DSwapChain9_INT, align 4
  %11 = load i32, i32* @lpVtbl, align 4
  %12 = call i64 @FIELD_OFFSET(i32 %10, i32 %11)
  %13 = sub nsw i64 %9, %12
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %2, align 8
  br label %15

15:                                               ; preds = %7, %6
  %16 = load i32*, i32** %2, align 8
  ret i32* %16
}

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
