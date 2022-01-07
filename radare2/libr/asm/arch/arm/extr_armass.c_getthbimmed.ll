; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getthbimmed.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getthbimmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getthbimmed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getthbimmed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, 262144
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 1
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 255
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 7
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 24
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = and i32 %32, 3
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = ashr i32 %37, 2
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %9
  %42 = load i32, i32* %2, align 4
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 3
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 5
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %9
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = shl i32 %59, 3
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %2, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = shl i32 %69, 5
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %54, %41
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
