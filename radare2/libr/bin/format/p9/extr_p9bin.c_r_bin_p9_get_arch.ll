; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/p9/extr_p9bin.c_r_bin_p9_get_arch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/p9/extr_p9bin.c_r_bin_p9_get_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_ASM_ARCH_X86 = common dso_local global i32 0, align 4
@R_ASM_ARCH_PPC = common dso_local global i32 0, align 4
@R_ASM_ARCH_SPARC = common dso_local global i32 0, align 4
@R_ASM_ARCH_MIPS = common dso_local global i32 0, align 4
@R_ASM_ARCH_ARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_bin_p9_get_arch(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @r_buf_read_be32_at(i32* %9, i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 32, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %53 [
    i32 137, label %22
    i32 130, label %24
    i32 131, label %31
    i32 136, label %38
    i32 129, label %40
    i32 128, label %47
    i32 135, label %47
    i32 134, label %47
    i32 133, label %47
    i32 138, label %49
    i32 132, label %51
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @R_ASM_ARCH_X86, align 4
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  store i32 64, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* @R_ASM_ARCH_PPC, align 4
  store i32 %30, i32* %4, align 4
  br label %54

31:                                               ; preds = %20
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  store i32 64, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @R_ASM_ARCH_X86, align 4
  store i32 %37, i32* %4, align 4
  br label %54

38:                                               ; preds = %20
  %39 = load i32, i32* @R_ASM_ARCH_SPARC, align 4
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %20
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  store i32 64, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* @R_ASM_ARCH_SPARC, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %20, %20, %20, %20
  %48 = load i32, i32* @R_ASM_ARCH_MIPS, align 4
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %20
  %50 = load i32, i32* @R_ASM_ARCH_ARM, align 4
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %20
  %52 = load i32, i32* @R_ASM_ARCH_PPC, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %51, %49, %47, %45, %38, %36, %29, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @r_buf_read_be32_at(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
