; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageEllipse.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageEllipse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageEllipse(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %25, align 8
  %30 = load i32, i32* %11, align 4
  %31 = ashr i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %26, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %25, align 8
  %37 = add nsw i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @gdImageSetPixel(i32 %33, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %25, align 8
  %46 = sub nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @gdImageSetPixel(i32 %42, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %25, align 8
  %54 = sub nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %25, align 8
  %60 = add nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i64, i64* %25, align 8
  %64 = load i64, i64* %25, align 8
  %65 = mul nsw i64 %63, %64
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %26, align 8
  %67 = load i64, i64* %26, align 8
  %68 = mul nsw i64 %66, %67
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %18, align 8
  %70 = shl i64 %69, 1
  store i64 %70, i64* %20, align 8
  %71 = load i64, i64* %19, align 8
  %72 = shl i64 %71, 1
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %25, align 8
  %74 = load i64, i64* %19, align 8
  %75 = mul nsw i64 %73, %74
  store i64 %75, i64* %22, align 8
  %76 = load i64, i64* %22, align 8
  %77 = shl i64 %76, 1
  store i64 %77, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %78 = load i64, i64* %25, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %113, %6
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %134

83:                                               ; preds = %80
  %84 = load i64, i64* %22, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %17, align 4
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %24, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %24, align 8
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* %22, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %22, align 8
  br label %97

97:                                               ; preds = %86, %83
  %98 = load i64, i64* %22, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %15, align 4
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %23, align 8
  %109 = sub nsw i64 %108, %107
  store i64 %109, i64* %23, align 8
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %22, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %22, align 8
  br label %113

113:                                              ; preds = %100, %97
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @gdImageSetPixel(i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @gdImageSetPixel(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @gdImageSetPixel(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @gdImageSetPixel(i32 %129, i32 %130, i32 %131, i32 %132)
  br label %80

134:                                              ; preds = %80
  ret void
}

declare dso_local i32 @gdImageSetPixel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
