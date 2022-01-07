; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_....asmarchriscvriscv.h_riscv_insn_length.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_....asmarchriscvriscv.h_riscv_insn_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @riscv_insn_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscv_insn_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 3
  %6 = icmp ne i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 31
  %11 = icmp ne i32 %10, 31
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 4, i32* %2, align 4
  br label %24

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 63
  %16 = icmp eq i32 %15, 31
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 6, i32* %2, align 4
  br label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 127
  %21 = icmp eq i32 %20, 63
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 8, i32* %2, align 4
  br label %24

23:                                               ; preds = %18
  store i32 2, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %17, %12, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
