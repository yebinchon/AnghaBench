; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_is_zero.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kPrime = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @smallfelem_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smallfelem_is_zero(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 2
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 63
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @kPrime, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %52, %55
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @kPrime, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = or i32 %56, %63
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** @kPrime, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %67, %70
  %72 = or i32 %64, %71
  %73 = load i32*, i32** %2, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @kPrime, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %75, %78
  %80 = or i32 %72, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = shl i32 %83, 32
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = shl i32 %87, 16
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = shl i32 %95, 4
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = shl i32 %99, 2
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = shl i32 %103, 1
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = ashr i32 %107, 63
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %5, align 4
  %115 = shl i32 %114, 64
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
