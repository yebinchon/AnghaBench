; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_hid26_blocks.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_hid26_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sr98_hid26_blocks(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 17
  %15 = sext i32 %14 to i64
  %16 = or i64 137506062336, %15
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = or i64 %16, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %41, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 12
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %26, %29
  %31 = and i32 %30, 1
  %32 = load i32, i32* %10, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = ashr i32 %34, %36
  %38 = and i32 %37, 1
  %39 = load i32, i32* %11, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 1
  %47 = shl i32 %46, 25
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = and i32 %51, 1
  %53 = or i32 %47, %52
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 -1872605086, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %64, 40
  %66 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %65)
  %67 = shl i32 %66, 16
  %68 = or i32 486539264, %67
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 36
  %71 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %70)
  %72 = shl i32 %71, 8
  %73 = or i32 %68, %72
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 32
  %76 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %75)
  %77 = or i32 %73, %76
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %80, 28
  %82 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %81)
  %83 = shl i32 %82, 24
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 24
  %86 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %85)
  %87 = shl i32 %86, 16
  %88 = or i32 %83, %87
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 20
  %91 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %90)
  %92 = shl i32 %91, 8
  %93 = or i32 %88, %92
  %94 = load i32, i32* %12, align 4
  %95 = ashr i32 %94, 16
  %96 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %95)
  %97 = or i32 %93, %96
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 12
  %102 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %101)
  %103 = shl i32 %102, 24
  %104 = load i32, i32* %12, align 4
  %105 = ashr i32 %104, 8
  %106 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %105)
  %107 = shl i32 %106, 16
  %108 = or i32 %103, %107
  %109 = load i32, i32* %12, align 4
  %110 = ashr i32 %109, 4
  %111 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %110)
  %112 = shl i32 %111, 8
  %113 = or i32 %108, %112
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32 %114)
  %116 = or i32 %113, %115
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 %116, i32* %118, align 4
  ret void
}

declare dso_local i32 @kuhl_m_sr98_hid26_Manchester_4bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
