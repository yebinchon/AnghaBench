; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdGuessBackgroundColorFromCorners.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdGuessBackgroundColorFromCorners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @gdGuessBackgroundColorFromCorners to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdGuessBackgroundColorFromCorners(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @gdImageGetPixel(i32 %14, i64 0, i64 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @gdImageSX(i32 %17)
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @gdImageGetPixel(i32 %16, i64 %19, i64 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @gdImageSY(i32 %22)
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @gdImageGetPixel(i32 %21, i64 0, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @gdImageSX(i32 %27)
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @gdImageSY(i32 %30)
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @gdImageGetPixel(i32 %26, i64 %29, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 3, i32* %3, align 4
  br label %194

44:                                               ; preds = %37, %2
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 3, i32* %3, align 4
  br label %194

55:                                               ; preds = %48, %44
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  store i32 3, i32* %3, align 4
  br label %194

66:                                               ; preds = %59, %55
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  store i32 3, i32* %3, align 4
  br label %194

77:                                               ; preds = %70, %66
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %81, %77
  %90 = load i32, i32* %6, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  store i32 2, i32* %3, align 4
  br label %194

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  store i32 2, i32* %3, align 4
  br label %194

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  store i32 2, i32* %3, align 4
  br label %194

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @gdImageRed(i32 %111, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @gdImageRed(i32 %114, i32 %115)
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @gdImageRed(i32 %118, i32 %119)
  %121 = add nsw i32 %117, %120
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @gdImageRed(i32 %122, i32 %123)
  %125 = add nsw i32 %121, %124
  %126 = sdiv i32 %125, 4
  %127 = sitofp i32 %126 to float
  %128 = fadd float 5.000000e-01, %127
  %129 = fptosi float %128 to i32
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @gdImageGreen(i32 %130, i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @gdImageGreen(i32 %133, i32 %134)
  %136 = add nsw i32 %132, %135
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @gdImageGreen(i32 %137, i32 %138)
  %140 = add nsw i32 %136, %139
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @gdImageGreen(i32 %141, i32 %142)
  %144 = add nsw i32 %140, %143
  %145 = sdiv i32 %144, 4
  %146 = sitofp i32 %145 to float
  %147 = fadd float 5.000000e-01, %146
  %148 = fptosi float %147 to i32
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @gdImageBlue(i32 %149, i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @gdImageBlue(i32 %152, i32 %153)
  %155 = add nsw i32 %151, %154
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @gdImageBlue(i32 %156, i32 %157)
  %159 = add nsw i32 %155, %158
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @gdImageBlue(i32 %160, i32 %161)
  %163 = add nsw i32 %159, %162
  %164 = sdiv i32 %163, 4
  %165 = sitofp i32 %164 to float
  %166 = fadd float 5.000000e-01, %165
  %167 = fptosi float %166 to i32
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @gdImageAlpha(i32 %168, i32 %169)
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @gdImageAlpha(i32 %171, i32 %172)
  %174 = add nsw i32 %170, %173
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @gdImageAlpha(i32 %175, i32 %176)
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @gdImageAlpha(i32 %179, i32 %180)
  %182 = add nsw i32 %178, %181
  %183 = sdiv i32 %182, 4
  %184 = sitofp i32 %183 to float
  %185 = fadd float 5.000000e-01, %184
  %186 = fptosi float %185 to i32
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @gdImageColorClosestAlpha(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32*, i32** %5, align 8
  store i32 %192, i32* %193, align 4
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %110, %107, %100, %89, %74, %63, %52, %41
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @gdImageGetPixel(i32, i64, i64) #1

declare dso_local i64 @gdImageSX(i32) #1

declare dso_local i64 @gdImageSY(i32) #1

declare dso_local i32 @gdImageRed(i32, i32) #1

declare dso_local i32 @gdImageGreen(i32, i32) #1

declare dso_local i32 @gdImageBlue(i32, i32) #1

declare dso_local i32 @gdImageAlpha(i32, i32) #1

declare dso_local i32 @gdImageColorClosestAlpha(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
