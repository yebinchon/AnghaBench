; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_sve_dupm_mov_immediate_p.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_sve_dupm_mov_immediate_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_sve_dupm_mov_immediate_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 4
  %11 = shl i32 -1, %10
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 4
  %14 = shl i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %7, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %21, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 4
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 32
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 %41, 2
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 16
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %43, %39
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 8
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54, %50
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %81

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %32
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = sdiv i32 %70, 256
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, -128
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 128
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ true, %72 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %61, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
