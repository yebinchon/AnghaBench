; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFilledEllipse.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFilledEllipse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageFilledEllipse(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
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
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %25, align 8
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %26, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %25, align 8
  %38 = sub nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %54, %6
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %25, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp sle i64 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @gdImageSetPixel(i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %25, align 8
  %61 = sub nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %25, align 8
  %67 = add nsw i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i64, i64* %25, align 8
  %71 = load i64, i64* %25, align 8
  %72 = mul nsw i64 %70, %71
  store i64 %72, i64* %18, align 8
  %73 = load i64, i64* %26, align 8
  %74 = load i64, i64* %26, align 8
  %75 = mul nsw i64 %73, %74
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %18, align 8
  %77 = shl i64 %76, 1
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %19, align 8
  %79 = shl i64 %78, 1
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* %25, align 8
  %81 = load i64, i64* %19, align 8
  %82 = mul nsw i64 %80, %81
  store i64 %82, i64* %22, align 8
  %83 = load i64, i64* %22, align 8
  %84 = shl i64 %83, 1
  store i64 %84, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %85 = load i64, i64* %25, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  store i32 -2, i32* %28, align 4
  br label %87

87:                                               ; preds = %145, %57
  %88 = load i32, i32* %13, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %147

90:                                               ; preds = %87
  %91 = load i64, i64* %22, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %17, align 4
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %24, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %24, align 8
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %22, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %22, align 8
  br label %104

104:                                              ; preds = %93, %90
  %105 = load i64, i64* %22, align 8
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %15, align 4
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %23, align 8
  %116 = sub nsw i64 %115, %114
  store i64 %116, i64* %23, align 8
  %117 = load i64, i64* %23, align 8
  %118 = load i64, i64* %22, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %22, align 8
  br label %120

120:                                              ; preds = %107, %104
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %27, align 4
  br label %126

126:                                              ; preds = %141, %124
  %127 = load i32, i32* %27, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %27, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @gdImageSetPixel(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @gdImageSetPixel(i32 %136, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %27, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %27, align 4
  br label %126

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %120
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %28, align 4
  br label %87

147:                                              ; preds = %87
  ret void
}

declare dso_local i32 @gdImageSetPixel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
