; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_noralsy_blocks.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_noralsy_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sr98_noralsy_blocks(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
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
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 1000000
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 1000000
  %21 = sdiv i32 %20, 100000
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 100000
  %24 = sdiv i32 %23, 10000
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %25, 10000
  %27 = sdiv i32 %26, 1000
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = srem i32 %28, 1000
  %30 = sdiv i32 %29, 100
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = srem i32 %31, 100
  %33 = sdiv i32 %32, 10
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 10
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %6, align 4
  %37 = srem i32 %36, 100
  %38 = sdiv i32 %37, 10
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %6, align 4
  %40 = srem i32 %39, 10
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = xor i32 %45, %46
  %48 = load i32, i32* %15, align 4
  %49 = xor i32 %47, %48
  %50 = xor i32 %49, 0
  %51 = load i32, i32* %10, align 4
  %52 = xor i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = xor i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = xor i32 %54, %55
  %57 = load i32, i32* %13, align 4
  %58 = xor i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 557160, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 -1157491457, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 28
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 24
  %67 = or i32 %64, %66
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 20
  %70 = or i32 %67, %69
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %70, %72
  %74 = load i32, i32* %15, align 4
  %75 = shl i32 %74, 12
  %76 = or i32 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %77, 4
  %79 = or i32 %76, %78
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %12, align 4
  %85 = shl i32 %84, 28
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 %86, 24
  %88 = or i32 %85, %87
  %89 = load i32, i32* %16, align 4
  %90 = shl i32 %89, 20
  %91 = or i32 %88, %90
  %92 = or i32 %91, 458752
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %92, i32* %94, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
