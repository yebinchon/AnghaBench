; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyMerge.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageCopyMerge(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %22, align 4
  br label %31

31:                                               ; preds = %145, %9
  %32 = load i32, i32* %22, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %148

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %21, align 4
  br label %40

40:                                               ; preds = %139, %37
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %142

46:                                               ; preds = %40
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %22, align 4
  %50 = call i32 @gdImageGetPixel(i64 %47, i32 %48, i32 %49)
  store i32 %50, i32* %19, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @gdImageGetTransparent(i64 %51)
  %53 = load i32, i32* %19, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %23, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %23, align 4
  br label %139

58:                                               ; preds = %46
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %28, align 4
  br label %131

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @gdImageGetPixel(i64 %65, i32 %66, i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @gdImageRed(i64 %69, i32 %70)
  %72 = sitofp i32 %71 to double
  %73 = load i32, i32* %18, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 1.000000e+02
  %76 = fmul double %72, %75
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @gdImageRed(i64 %77, i32 %78)
  %80 = sitofp i32 %79 to double
  %81 = load i32, i32* %18, align 4
  %82 = sub nsw i32 100, %81
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 1.000000e+02
  %85 = fmul double %80, %84
  %86 = fadd double %76, %85
  %87 = fptosi double %86 to i32
  store i32 %87, i32* %25, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @gdImageGreen(i64 %88, i32 %89)
  %91 = sitofp i32 %90 to double
  %92 = load i32, i32* %18, align 4
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %93, 1.000000e+02
  %95 = fmul double %91, %94
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* %20, align 4
  %98 = call i32 @gdImageGreen(i64 %96, i32 %97)
  %99 = sitofp i32 %98 to double
  %100 = load i32, i32* %18, align 4
  %101 = sub nsw i32 100, %100
  %102 = sitofp i32 %101 to double
  %103 = fdiv double %102, 1.000000e+02
  %104 = fmul double %99, %103
  %105 = fadd double %95, %104
  %106 = fptosi double %105 to i32
  store i32 %106, i32* %26, align 4
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @gdImageBlue(i64 %107, i32 %108)
  %110 = sitofp i32 %109 to double
  %111 = load i32, i32* %18, align 4
  %112 = sitofp i32 %111 to double
  %113 = fdiv double %112, 1.000000e+02
  %114 = fmul double %110, %113
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @gdImageBlue(i64 %115, i32 %116)
  %118 = sitofp i32 %117 to double
  %119 = load i32, i32* %18, align 4
  %120 = sub nsw i32 100, %119
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 1.000000e+02
  %123 = fmul double %118, %122
  %124 = fadd double %114, %123
  %125 = fptosi double %124 to i32
  store i32 %125, i32* %27, align 4
  %126 = load i64, i64* %10, align 8
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %27, align 4
  %130 = call i32 @gdImageColorResolve(i64 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %28, align 4
  br label %131

131:                                              ; preds = %64, %62
  %132 = load i64, i64* %10, align 8
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %28, align 4
  %136 = call i32 @gdImageSetPixel(i64 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %23, align 4
  br label %139

139:                                              ; preds = %131, %55
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %21, align 4
  br label %40

142:                                              ; preds = %40
  %143 = load i32, i32* %24, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %24, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %31

148:                                              ; preds = %31
  ret void
}

declare dso_local i32 @gdImageGetPixel(i64, i32, i32) #1

declare dso_local i32 @gdImageGetTransparent(i64) #1

declare dso_local i32 @gdImageRed(i64, i32) #1

declare dso_local i32 @gdImageGreen(i64, i32) #1

declare dso_local i32 @gdImageBlue(i64, i32) #1

declare dso_local i32 @gdImageColorResolve(i64, i32, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
