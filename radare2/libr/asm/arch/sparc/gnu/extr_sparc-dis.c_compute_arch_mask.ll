; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/sparc/gnu/extr_sparc-dis.c_compute_arch_mask.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/sparc/gnu/extr_sparc-dis.c_compute_arch_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPARC_OPCODE_ARCH_V8 = common dso_local global i32 0, align 4
@SPARC_OPCODE_ARCH_SPARCLET = common dso_local global i32 0, align 4
@SPARC_OPCODE_ARCH_SPARCLITE = common dso_local global i32 0, align 4
@SPARC_OPCODE_ARCH_V9 = common dso_local global i32 0, align 4
@SPARC_OPCODE_ARCH_V9A = common dso_local global i32 0, align 4
@SPARC_OPCODE_ARCH_V9B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @compute_arch_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_arch_mask(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %26 [
    i64 0, label %5
    i64 137, label %5
    i64 136, label %8
    i64 135, label %11
    i64 134, label %11
    i64 133, label %17
    i64 130, label %17
    i64 132, label %20
    i64 129, label %20
    i64 131, label %23
    i64 128, label %23
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* @SPARC_OPCODE_ARCH_V8, align 4
  %7 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %6)
  store i32 %7, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load i32, i32* @SPARC_OPCODE_ARCH_SPARCLET, align 4
  %10 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @SPARC_OPCODE_ARCH_SPARCLITE, align 4
  %13 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %12)
  %14 = load i32, i32* @SPARC_OPCODE_ARCH_V8, align 4
  %15 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %14)
  %16 = or i32 %13, %15
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @SPARC_OPCODE_ARCH_V9, align 4
  %19 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %1, %1
  %21 = load i32, i32* @SPARC_OPCODE_ARCH_V9A, align 4
  %22 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1, %1
  %24 = load i32, i32* @SPARC_OPCODE_ARCH_V9B, align 4
  %25 = call i32 @SPARC_OPCODE_ARCH_MASK(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  %27 = call i32 (...) @abort() #3
  unreachable

28:                                               ; preds = %23, %20, %17, %11, %8, %5
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @SPARC_OPCODE_ARCH_MASK(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
