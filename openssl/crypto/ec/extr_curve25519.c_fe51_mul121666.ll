; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe51_mul121666.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe51_mul121666.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK51 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fe51_mul121666 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe51_mul121666(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
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
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 121666
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 121666
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 121666
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 121666
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 121666
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 51
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MASK51, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 51
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MASK51, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 51
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MASK51, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 51
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MASK51, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 51
  %65 = mul nsw i32 %64, 19
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MASK51, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 51
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* @MASK51, align 4
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 51
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @MASK51, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32 %97, i32* %99, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
