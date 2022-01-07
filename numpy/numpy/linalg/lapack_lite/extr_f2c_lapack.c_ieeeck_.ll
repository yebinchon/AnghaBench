; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ieeeck_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ieeeck_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ieeeck_.nan1 = internal global i32 0, align 4
@ieeeck_.nan2 = internal global i32 0, align 4
@ieeeck_.nan3 = internal global i32 0, align 4
@ieeeck_.nan4 = internal global i32 0, align 4
@ieeeck_.nan5 = internal global i32 0, align 4
@ieeeck_.nan6 = internal global i32 0, align 4
@ieeeck_.neginf = internal global i32 0, align 4
@ieeeck_.posinf = internal global i32 0, align 4
@ieeeck_.negzro = internal global i32 0, align 4
@ieeeck_.newzro = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ieeeck_(i64* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 1, i64* %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %10, %12
  store i32 %13, i32* @ieeeck_.posinf, align 4
  %14 = load i32, i32* @ieeeck_.posinf, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  br label %164

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 0, %22
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %23, %25
  store i32 %26, i32* @ieeeck_.neginf, align 4
  %27 = load i32, i32* @ieeeck_.neginf, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %164

33:                                               ; preds = %20
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ieeeck_.neginf, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %36, %38
  %40 = sdiv i32 %35, %39
  store i32 %40, i32* @ieeeck_.negzro, align 4
  %41 = load i32, i32* @ieeeck_.negzro, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %164

47:                                               ; preds = %33
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ieeeck_.negzro, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* @ieeeck_.neginf, align 4
  %52 = load i32, i32* @ieeeck_.neginf, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  store i64 0, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %4, align 8
  br label %164

58:                                               ; preds = %47
  %59 = load i32, i32* @ieeeck_.negzro, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* @ieeeck_.newzro, align 4
  %63 = load i32, i32* @ieeeck_.newzro, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %4, align 8
  br label %164

69:                                               ; preds = %58
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ieeeck_.newzro, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* @ieeeck_.posinf, align 4
  %74 = load i32, i32* @ieeeck_.posinf, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  store i64 0, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  store i64 %79, i64* %4, align 8
  br label %164

80:                                               ; preds = %69
  %81 = load i32, i32* @ieeeck_.posinf, align 4
  %82 = load i32, i32* @ieeeck_.neginf, align 4
  %83 = mul nsw i32 %82, %81
  store i32 %83, i32* @ieeeck_.neginf, align 4
  %84 = load i32, i32* @ieeeck_.neginf, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  store i64 0, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %4, align 8
  br label %164

90:                                               ; preds = %80
  %91 = load i32, i32* @ieeeck_.posinf, align 4
  %92 = load i32, i32* @ieeeck_.posinf, align 4
  %93 = mul nsw i32 %92, %91
  store i32 %93, i32* @ieeeck_.posinf, align 4
  %94 = load i32, i32* @ieeeck_.posinf, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  store i64 0, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %4, align 8
  br label %164

100:                                              ; preds = %90
  %101 = load i64*, i64** %5, align 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %4, align 8
  br label %164

106:                                              ; preds = %100
  %107 = load i32, i32* @ieeeck_.posinf, align 4
  %108 = load i32, i32* @ieeeck_.neginf, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* @ieeeck_.nan1, align 4
  %110 = load i32, i32* @ieeeck_.posinf, align 4
  %111 = load i32, i32* @ieeeck_.neginf, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* @ieeeck_.nan2, align 4
  %113 = load i32, i32* @ieeeck_.posinf, align 4
  %114 = load i32, i32* @ieeeck_.posinf, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* @ieeeck_.nan3, align 4
  %116 = load i32, i32* @ieeeck_.posinf, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %116, %118
  store i32 %119, i32* @ieeeck_.nan4, align 4
  %120 = load i32, i32* @ieeeck_.neginf, align 4
  %121 = load i32, i32* @ieeeck_.negzro, align 4
  %122 = mul nsw i32 %120, %121
  store i32 %122, i32* @ieeeck_.nan5, align 4
  %123 = load i32, i32* @ieeeck_.nan5, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %123, %125
  store i32 %126, i32* @ieeeck_.nan6, align 4
  %127 = load i32, i32* @ieeeck_.nan1, align 4
  %128 = load i32, i32* @ieeeck_.nan1, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %106
  store i64 0, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %4, align 8
  br label %164

132:                                              ; preds = %106
  %133 = load i32, i32* @ieeeck_.nan2, align 4
  %134 = load i32, i32* @ieeeck_.nan2, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  store i64 0, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %4, align 8
  br label %164

138:                                              ; preds = %132
  %139 = load i32, i32* @ieeeck_.nan3, align 4
  %140 = load i32, i32* @ieeeck_.nan3, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  store i64 0, i64* %8, align 8
  %143 = load i64, i64* %8, align 8
  store i64 %143, i64* %4, align 8
  br label %164

144:                                              ; preds = %138
  %145 = load i32, i32* @ieeeck_.nan4, align 4
  %146 = load i32, i32* @ieeeck_.nan4, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  store i64 0, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  store i64 %149, i64* %4, align 8
  br label %164

150:                                              ; preds = %144
  %151 = load i32, i32* @ieeeck_.nan5, align 4
  %152 = load i32, i32* @ieeeck_.nan5, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  store i64 0, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  store i64 %155, i64* %4, align 8
  br label %164

156:                                              ; preds = %150
  %157 = load i32, i32* @ieeeck_.nan6, align 4
  %158 = load i32, i32* @ieeeck_.nan6, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  store i64 0, i64* %8, align 8
  %161 = load i64, i64* %8, align 8
  store i64 %161, i64* %4, align 8
  br label %164

162:                                              ; preds = %156
  %163 = load i64, i64* %8, align 8
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %162, %160, %154, %148, %142, %136, %130, %104, %98, %88, %78, %67, %56, %45, %31, %18
  %165 = load i64, i64* %4, align 8
  ret i64 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
