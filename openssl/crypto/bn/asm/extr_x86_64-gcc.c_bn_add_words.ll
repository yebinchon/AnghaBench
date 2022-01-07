; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/asm/extr_x86_64-gcc.c_bn_add_words.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/asm/extr_x86_64-gcc.c_bn_add_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_add_words(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i64, i64* %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call { i32, i32, i64 } asm sideeffect "       subq    $0,$0           \0A       jmp     1f              \0A.p2align 4                     \0A1:     movq    ($4,$2,8),$0    \0A       adcq    ($5,$2,8),$0    \0A       movq    $0,($3,$2,8)    \0A       lea     1($2),$2        \0A       dec     $1              \0A       jnz     1b              \0A       sbbq    $0,$0           \0A", "=&r,={cx},=r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %18, i32* %19, i32* %20, i32 %16, i64 %17) #1, !srcloc !2
  %22 = extractvalue { i32, i32, i64 } %21, 0
  %23 = extractvalue { i32, i32, i64 } %21, 1
  %24 = extractvalue { i32, i32, i64 } %21, 2
  store i32 %22, i32* %10, align 4
  store i32 %23, i32* %9, align 4
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 362, i32 417, i32 471, i32 525, i32 579, i32 633, i32 687, i32 741, i32 795, i32 849}
