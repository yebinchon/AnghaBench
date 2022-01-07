; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mmu.c_InsertPageEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mmu.c_InsertPageEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InsertPageEntry(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  br label %27

25:                                               ; preds = %4
  %26 = call i32 (...) @GetSDR1()
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 28
  %31 = and i32 %30, 15
  %32 = call i32 @GetSR(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = and i32 %33, 268435455
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, -65536
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, 511
  %39 = shl i32 %38, 10
  %40 = or i32 %39, 1023
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %15, align 4
  %42 = shl i32 %41, 28
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 268435455
  %45 = or i32 %42, %44
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %15, align 4
  %47 = and i32 %46, 524287
  %48 = load i32, i32* %18, align 4
  %49 = ashr i32 %48, 12
  %50 = and i32 %49, 65535
  %51 = xor i32 %47, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %19, align 4
  %54 = and i32 %52, %53
  %55 = mul nsw i32 %54, 64
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %99, %27
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 8
  %65 = add nsw i32 %62, %64
  %66 = call i32 @GetPhys(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, -2147483648
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %99

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %15, align 4
  %77 = shl i32 %76, 7
  %78 = or i32 -2147483648, %77
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 22
  %81 = and i32 %80, 63
  %82 = or i32 %78, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, -4096
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %86, 8
  %88 = add nsw i32 %85, %87
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @SetPhys(i32 %88, i32 %89)
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %10, align 4
  %93 = mul nsw i32 %92, 8
  %94 = add nsw i32 %91, %93
  %95 = add nsw i32 %94, 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @SetPhys(i32 %95, i32 %96)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %104

99:                                               ; preds = %74
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %58

102:                                              ; preds = %58
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %75
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @GetSDR1(...) #1

declare dso_local i32 @GetSR(i32) #1

declare dso_local i32 @GetPhys(i32) #1

declare dso_local i32 @SetPhys(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
