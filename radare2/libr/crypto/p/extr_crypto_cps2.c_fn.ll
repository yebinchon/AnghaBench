; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_fn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimised_sbox = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.optimised_sbox*, i32)* @fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fn(i64 %0, %struct.optimised_sbox* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.optimised_sbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.optimised_sbox*, align 8
  %8 = alloca %struct.optimised_sbox*, align 8
  %9 = alloca %struct.optimised_sbox*, align 8
  %10 = alloca %struct.optimised_sbox*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.optimised_sbox* %1, %struct.optimised_sbox** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.optimised_sbox*, %struct.optimised_sbox** %5, align 8
  %12 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %11, i64 0
  store %struct.optimised_sbox* %12, %struct.optimised_sbox** %7, align 8
  %13 = load %struct.optimised_sbox*, %struct.optimised_sbox** %5, align 8
  %14 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %13, i64 1
  store %struct.optimised_sbox* %14, %struct.optimised_sbox** %8, align 8
  %15 = load %struct.optimised_sbox*, %struct.optimised_sbox** %5, align 8
  %16 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %15, i64 2
  store %struct.optimised_sbox* %16, %struct.optimised_sbox** %9, align 8
  %17 = load %struct.optimised_sbox*, %struct.optimised_sbox** %5, align 8
  %18 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %17, i64 3
  store %struct.optimised_sbox* %18, %struct.optimised_sbox** %10, align 8
  %19 = load %struct.optimised_sbox*, %struct.optimised_sbox** %7, align 8
  %20 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.optimised_sbox*, %struct.optimised_sbox** %7, align 8
  %23 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 0
  %30 = and i32 %29, 63
  %31 = xor i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %21, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.optimised_sbox*, %struct.optimised_sbox** %8, align 8
  %36 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.optimised_sbox*, %struct.optimised_sbox** %8, align 8
  %39 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 6
  %46 = and i32 %45, 63
  %47 = xor i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %37, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %34, %50
  %52 = load %struct.optimised_sbox*, %struct.optimised_sbox** %9, align 8
  %53 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.optimised_sbox*, %struct.optimised_sbox** %9, align 8
  %56 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 63
  %64 = xor i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %54, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %51, %67
  %69 = load %struct.optimised_sbox*, %struct.optimised_sbox** %10, align 8
  %70 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.optimised_sbox*, %struct.optimised_sbox** %10, align 8
  %73 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 18
  %80 = and i32 %79, 63
  %81 = xor i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %71, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %68, %84
  ret i64 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
