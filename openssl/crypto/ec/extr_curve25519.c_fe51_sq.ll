; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe51_sq.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe51_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK51 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fe51_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe51_sq(i32* %0, i32* %1) #0 {
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
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 19
  store i32 %50, i32* %9, align 4
  %51 = mul nsw i32 %48, %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 19
  store i32 %79, i32* %8, align 4
  %80 = mul nsw i32 %77, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %83, 2
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = ashr i32 %106, 51
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @MASK51, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %10, align 4
  %114 = ashr i32 %113, 51
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @MASK51, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %13, align 4
  %121 = ashr i32 %120, 51
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @MASK51, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %11, align 4
  %128 = ashr i32 %127, 51
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @MASK51, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %14, align 4
  %135 = ashr i32 %134, 51
  %136 = mul nsw i32 %135, 19
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @MASK51, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %7, align 4
  %143 = ashr i32 %142, 51
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* @MASK51, align 4
  %147 = load i32, i32* %7, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %5, align 4
  %150 = ashr i32 %149, 51
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* @MASK51, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32*, i32** %3, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32*, i32** %3, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32*, i32** %3, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  store i32 %168, i32* %170, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
