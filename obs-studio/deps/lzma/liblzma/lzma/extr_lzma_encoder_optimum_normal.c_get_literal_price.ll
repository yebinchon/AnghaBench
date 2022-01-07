; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_get_literal_price.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_get_literal_price.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32, i32)* @get_literal_price to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_literal_price(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32* @literal_subcoder(i32 %21, i32 %24, i32 %27, i32 %28, i32 %29)
  store i32* %30, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @rc_bittree_price(i32* %34, i32 8, i32 %35)
  store i32 %36, i32* %14, align 4
  br label %82

37:                                               ; preds = %6
  store i32 256, i32* %15, align 4
  %38 = call i32 @UINT32_C(i32 1)
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %76, %37
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %15, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 8
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %12, align 4
  %55 = ashr i32 %54, 7
  %56 = and i32 %55, 1
  store i32 %56, i32* %18, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i64 @rc_bit_price(i32 %61, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = xor i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %42
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @UINT32_C(i32 1)
  %79 = shl i32 %78, 16
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %42, label %81

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %33
  %83 = load i32, i32* %14, align 4
  ret i32 %83
}

declare dso_local i32* @literal_subcoder(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rc_bittree_price(i32*, i32, i32) #1

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i64 @rc_bit_price(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
