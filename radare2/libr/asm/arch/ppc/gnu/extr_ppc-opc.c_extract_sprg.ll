; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ppc/gnu/extr_ppc-opc.c_extract_sprg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ppc/gnu/extr_ppc-opc.c_extract_sprg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_OPCODE_BOOKE = common dso_local global i32 0, align 4
@PPC_OPCODE_405 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32*)* @extract_sprg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_sprg(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = lshr i64 %8, 16
  %10 = and i64 %9, 31
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = sub i64 %11, 16
  %13 = icmp ugt i64 %12, 3
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %17 = load i32, i32* @PPC_OPCODE_405, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %14, %3
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 16
  %24 = icmp ugt i64 %23, 7
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, 256
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = load i64, i64* %7, align 8
  %31 = icmp ule i64 %30, 3
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %29, %25, %14
  %37 = load i32*, i32** %6, align 8
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, 7
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
