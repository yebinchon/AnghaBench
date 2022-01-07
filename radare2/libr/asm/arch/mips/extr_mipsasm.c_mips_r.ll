; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/mips/extr_mipsasm.c_mips_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/mips/extr_mipsasm.c_mips_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32)* @mips_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_r(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %7
  store i32 -1, i32* %8, align 4
  br label %55

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 2
  %25 = and i32 %24, 252
  %26 = load i32, i32* %11, align 4
  %27 = ashr i32 %26, 3
  %28 = and i32 %27, 3
  %29 = or i32 %25, %28
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, 5
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 31
  %36 = or i32 %33, %35
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = shl i32 %39, 3
  %41 = and i32 %40, 255
  %42 = load i32, i32* %14, align 4
  %43 = ashr i32 %42, 2
  %44 = or i32 %41, %43
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, 63
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 3
  %51 = shl i32 %50, 6
  %52 = or i32 %48, %51
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  store i32 4, i32* %8, align 4
  br label %55

55:                                               ; preds = %22, %21
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
