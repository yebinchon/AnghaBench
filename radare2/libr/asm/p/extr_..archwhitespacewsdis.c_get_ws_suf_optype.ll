; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archwhitespacewsdis.c_get_ws_suf_optype.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archwhitespacewsdis.c_get_ws_suf_optype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_OP_UNK = common dso_local global i32 0, align 4
@WS_OP_ARITH = common dso_local global i32 0, align 4
@WS_OP_HEAP = common dso_local global i32 0, align 4
@WS_OP_IO = common dso_local global i32 0, align 4
@WS_OP_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_ws_suf_optype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ws_suf_optype(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @WS_OP_UNK, align 4
  store i32 %9, i32* %3, align 4
  br label %22

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 32, label %14
    i32 9, label %16
    i32 10, label %18
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @WS_OP_ARITH, align 4
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @WS_OP_HEAP, align 4
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @WS_OP_IO, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %10
  %21 = load i32, i32* @WS_OP_NOP, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
