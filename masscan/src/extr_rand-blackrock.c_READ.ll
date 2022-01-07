; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_READ.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_READ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sbox = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @READ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @READ(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 64, %15
  %17 = ashr i32 %14, %16
  %18 = xor i32 %13, %17
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** @sbox, align 8
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 0
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = xor i32 %25, %26
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %21, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 0
  %33 = load i32*, i32** @sbox, align 8
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 8
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = xor i32 %37, %38
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %33, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %32, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** @sbox, align 8
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 16
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = xor i32 %50, %51
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = load i32*, i32** @sbox, align 8
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 24
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = xor i32 %62, %63
  %65 = and i32 %64, 255
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 24
  %70 = or i32 %57, %69
  %71 = sext i32 %70 to i64
  %72 = and i64 %71, 4294967295
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** @sbox, align 8
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 32
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %76, %77
  %79 = load i32, i32* %4, align 4
  %80 = xor i32 %78, %79
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 0
  %86 = load i32*, i32** @sbox, align 8
  %87 = load i32, i32* %5, align 4
  %88 = ashr i32 %87, 40
  %89 = load i32, i32* %6, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = xor i32 %90, %91
  %93 = and i32 %92, 255
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %86, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %85, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32*, i32** @sbox, align 8
  %100 = load i32, i32* %5, align 4
  %101 = ashr i32 %100, 48
  %102 = load i32, i32* %6, align 4
  %103 = xor i32 %101, %102
  %104 = load i32, i32* %4, align 4
  %105 = xor i32 %103, %104
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %99, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 16
  %111 = load i32*, i32** @sbox, align 8
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 56
  %114 = load i32, i32* %6, align 4
  %115 = xor i32 %113, %114
  %116 = load i32, i32* %4, align 4
  %117 = xor i32 %115, %116
  %118 = and i32 %117, 255
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %111, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 24
  %123 = or i32 %110, %122
  %124 = sext i32 %123 to i64
  %125 = and i64 %124, 4294967295
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = xor i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 %130, 23
  %132 = xor i32 %129, %131
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 %133, 33
  %135 = xor i32 %132, %134
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
