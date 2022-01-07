; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyMergeGray.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyMergeGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageCopyMergeGray(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %22, align 4
  br label %32

32:                                               ; preds = %181, %9
  %33 = load i32, i32* %22, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %184

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %21, align 4
  br label %41

41:                                               ; preds = %175, %38
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %178

47:                                               ; preds = %41
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %22, align 4
  %51 = call i32 @gdImageGetPixel(i64 %48, i32 %49, i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @gdImageGetTransparent(i64 %52)
  %54 = load i32, i32* %19, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %23, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %23, align 4
  br label %175

59:                                               ; preds = %47
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %18, align 4
  %65 = icmp eq i32 %64, 100
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %19, align 4
  store i32 %67, i32* %29, align 4
  br label %167

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* %24, align 4
  %72 = call i32 @gdImageGetPixel(i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %20, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @gdImageRed(i64 %73, i32 %74)
  %76 = sitofp i32 %75 to float
  %77 = fmul float 0x3FD322D0E0000000, %76
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @gdImageGreen(i64 %78, i32 %79)
  %81 = sitofp i32 %80 to float
  %82 = fmul float 0x3FE2C8B440000000, %81
  %83 = fadd float %77, %82
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @gdImageBlue(i64 %84, i32 %85)
  %87 = sitofp i32 %86 to float
  %88 = fmul float 0x3FBD2F1AA0000000, %87
  %89 = fadd float %83, %88
  store float %89, float* %28, align 4
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* %19, align 4
  %92 = call i32 @gdImageRed(i64 %90, i32 %91)
  %93 = sitofp i32 %92 to float
  %94 = load i32, i32* %18, align 4
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %95, 1.000000e+02
  %97 = fmul float %93, %96
  %98 = fpext float %97 to double
  %99 = load float, float* %28, align 4
  %100 = fpext float %99 to double
  %101 = load i32, i32* %18, align 4
  %102 = sub nsw i32 100, %101
  %103 = sitofp i32 %102 to double
  %104 = fdiv double %103, 1.000000e+02
  %105 = fmul double %100, %104
  %106 = fadd double %98, %105
  %107 = fptosi double %106 to i32
  store i32 %107, i32* %25, align 4
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @gdImageGreen(i64 %108, i32 %109)
  %111 = sitofp i32 %110 to float
  %112 = load i32, i32* %18, align 4
  %113 = sitofp i32 %112 to float
  %114 = fdiv float %113, 1.000000e+02
  %115 = fmul float %111, %114
  %116 = fpext float %115 to double
  %117 = load float, float* %28, align 4
  %118 = fpext float %117 to double
  %119 = load i32, i32* %18, align 4
  %120 = sub nsw i32 100, %119
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 1.000000e+02
  %123 = fmul double %118, %122
  %124 = fadd double %116, %123
  %125 = fptosi double %124 to i32
  store i32 %125, i32* %26, align 4
  %126 = load i64, i64* %11, align 8
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @gdImageBlue(i64 %126, i32 %127)
  %129 = sitofp i32 %128 to float
  %130 = load i32, i32* %18, align 4
  %131 = sitofp i32 %130 to float
  %132 = fdiv float %131, 1.000000e+02
  %133 = fmul float %129, %132
  %134 = fpext float %133 to double
  %135 = load float, float* %28, align 4
  %136 = fpext float %135 to double
  %137 = load i32, i32* %18, align 4
  %138 = sub nsw i32 100, %137
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %139, 1.000000e+02
  %141 = fmul double %136, %140
  %142 = fadd double %134, %141
  %143 = fptosi double %142 to i32
  store i32 %143, i32* %27, align 4
  %144 = load i64, i64* %10, align 8
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %27, align 4
  %148 = call i32 @gdImageColorExact(i64 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %29, align 4
  %149 = load i32, i32* %29, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %166

151:                                              ; preds = %68
  %152 = load i64, i64* %10, align 8
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %27, align 4
  %156 = call i32 @gdImageColorAllocate(i64 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %29, align 4
  %157 = load i32, i32* %29, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load i64, i64* %10, align 8
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %27, align 4
  %164 = call i32 @gdImageColorClosest(i64 %160, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %29, align 4
  br label %165

165:                                              ; preds = %159, %151
  br label %166

166:                                              ; preds = %165, %68
  br label %167

167:                                              ; preds = %166, %66
  %168 = load i64, i64* %10, align 8
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %29, align 4
  %172 = call i32 @gdImageSetPixel(i64 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %23, align 4
  br label %175

175:                                              ; preds = %167, %56
  %176 = load i32, i32* %21, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %21, align 4
  br label %41

178:                                              ; preds = %41
  %179 = load i32, i32* %24, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %24, align 4
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %22, align 4
  br label %32

184:                                              ; preds = %32
  ret void
}

declare dso_local i32 @gdImageGetPixel(i64, i32, i32) #1

declare dso_local i32 @gdImageGetTransparent(i64) #1

declare dso_local i32 @gdImageRed(i64, i32) #1

declare dso_local i32 @gdImageGreen(i64, i32) #1

declare dso_local i32 @gdImageBlue(i64, i32) #1

declare dso_local i32 @gdImageColorExact(i64, i32, i32, i32) #1

declare dso_local i32 @gdImageColorAllocate(i64, i32, i32, i32) #1

declare dso_local i32 @gdImageColorClosest(i64, i32, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
