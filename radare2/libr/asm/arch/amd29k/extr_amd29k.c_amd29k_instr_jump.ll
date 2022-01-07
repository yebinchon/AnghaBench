; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_amd29k_instr_jump.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_amd29k_instr_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i64 0, align 8
@AMD29K_TYPE_JMP = common dso_local global i32 0, align 4
@AMD29K_TYPE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @amd29k_instr_jump(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @UT64_MAX, align 8
  store i64 %17, i64* %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @AMD29K_GET_TYPE(i32* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @AMD29K_GET_TYPE(i32* %21, i32 1)
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @AMD29K_GET_TYPE(i32* %23, i32 2)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @AMD29K_GET_TYPE(i32* %25, i32 3)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @AMD29K_GET_TYPE(i32* %27, i32 4)
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @AMD29K_GET_TYPE(i32* %29, i32 5)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @AMD29K_GET_VALUE(i32* %31, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @AMD29K_GET_VALUE(i32* %33, i32 1)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @AMD29K_TYPE_JMP, align 4
  %36 = call i64 @AMD29K_IS_1(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* %3, align 8
  br label %56

43:                                               ; preds = %18
  %44 = load i32, i32* @AMD29K_TYPE_REG, align 4
  %45 = load i32, i32* @AMD29K_TYPE_JMP, align 4
  %46 = call i64 @AMD29K_IS_2(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* %3, align 8
  br label %56

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* @UT64_MAX, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %48, %38, %16
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @AMD29K_GET_TYPE(i32*, i32) #1

declare dso_local i32 @AMD29K_GET_VALUE(i32*, i32) #1

declare dso_local i64 @AMD29K_IS_1(i32) #1

declare dso_local i64 @AMD29K_IS_2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
