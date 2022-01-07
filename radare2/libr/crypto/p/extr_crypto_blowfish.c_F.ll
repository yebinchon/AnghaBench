; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_blowfish.c_F.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_blowfish.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blowfish_state = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blowfish_state*, i32)* @F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @F(%struct.blowfish_state* %0, i32 %1) #0 {
  %3 = alloca %struct.blowfish_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.blowfish_state* %0, %struct.blowfish_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 24
  %11 = and i32 %10, 255
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 255
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load %struct.blowfish_state*, %struct.blowfish_state** %3, align 8
  %25 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.blowfish_state*, %struct.blowfish_state** %3, align 8
  %33 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %31, %39
  %41 = load %struct.blowfish_state*, %struct.blowfish_state** %3, align 8
  %42 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %40, %48
  %50 = load %struct.blowfish_state*, %struct.blowfish_state** %3, align 8
  %51 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %49, %57
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
