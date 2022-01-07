; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_decodeBitMasks.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_decodeBitMasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @decodeBitMasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodeBitMasks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 64, %13
  %15 = ashr i32 -1, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @isShiftedMask(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @countTrailingZeros(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %22, %23
  %25 = call i32 @countTrailingOnes(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @isShiftedMask(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @UT32_MAX, align 4
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @countLeadingOnes(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 64, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @countTrailingOnes(i32 %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 64, %45
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %36, %19
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %51, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = xor i32 %56, -1
  %58 = shl i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 6
  %65 = and i32 %64, 1
  %66 = xor i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = shl i32 %67, 12
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %69, 6
  %71 = or i32 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 63
  %74 = or i32 %71, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %48, %34
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @isShiftedMask(i32) #1

declare dso_local i32 @countTrailingZeros(i32) #1

declare dso_local i32 @countTrailingOnes(i32) #1

declare dso_local i32 @countLeadingOnes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
