; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c_syrk.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c_syrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CblasUpper = common dso_local global i32 0, align 4
@oneD = common dso_local global i32 0, align 4
@zeroD = common dso_local global i32 0, align 4
@oneF = common dso_local global i32 0, align 4
@zeroF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i32, i32*)* @syrk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syrk(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i8* @PyArray_DATA(i32* %22)
  store i8* %23, i8** %17, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = call i8* @PyArray_DATA(i32* %24)
  store i8* %25, i8** %18, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @PyArray_DIM(i32* %26, i32 1)
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 @PyArray_DIM(i32* %30, i32 1)
  br label %33

32:                                               ; preds = %8
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 1, %32 ]
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %208 [
    i32 129, label %36
    i32 128, label %78
    i32 131, label %120
    i32 130, label %164
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @CblasUpper, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i8*, i8** %18, align 8
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @cblas_dsyrk(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 1, i8* %42, i32 %43, i32 0, i8* %44, i32 %45)
  store i32 0, i32* %20, align 4
  br label %47

47:                                               ; preds = %74, %36
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load i32, i32* %20, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %21, align 4
  br label %54

54:                                               ; preds = %70, %51
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i64 @PyArray_GETPTR2(i32* %59, i32 %60, i32 %61)
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %20, align 4
  %68 = call i64 @PyArray_GETPTR2(i32* %65, i32 %66, i32 %67)
  %69 = inttoptr i64 %68 to i32*
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %21, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %21, align 4
  br label %54

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %20, align 4
  br label %47

77:                                               ; preds = %47
  br label %208

78:                                               ; preds = %33
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @CblasUpper, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i8*, i8** %17, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i8*, i8** %18, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @cblas_ssyrk(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, float 1.000000e+00, i8* %84, i32 %85, float 0.000000e+00, i8* %86, i32 %87)
  store i32 0, i32* %20, align 4
  br label %89

89:                                               ; preds = %116, %78
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %96

96:                                               ; preds = %112, %93
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %21, align 4
  %104 = call i64 @PyArray_GETPTR2(i32* %101, i32 %102, i32 %103)
  %105 = inttoptr i64 %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %20, align 4
  %110 = call i64 @PyArray_GETPTR2(i32* %107, i32 %108, i32 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %21, align 4
  br label %96

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %89

119:                                              ; preds = %89
  br label %208

120:                                              ; preds = %33
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @CblasUpper, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @oneD, align 4
  %127 = load i8*, i8** %17, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @zeroD, align 4
  %130 = load i8*, i8** %18, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @cblas_zsyrk(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i8* %127, i32 %128, i32 %129, i8* %130, i32 %131)
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %160, %120
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %140

140:                                              ; preds = %156, %137
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %140
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %21, align 4
  %148 = call i64 @PyArray_GETPTR2(i32* %145, i32 %146, i32 %147)
  %149 = inttoptr i64 %148 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %20, align 4
  %154 = call i64 @PyArray_GETPTR2(i32* %151, i32 %152, i32 %153)
  %155 = inttoptr i64 %154 to i32*
  store i32 %150, i32* %155, align 4
  br label %156

156:                                              ; preds = %144
  %157 = load i32, i32* %21, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %21, align 4
  br label %140

159:                                              ; preds = %140
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %20, align 4
  br label %133

163:                                              ; preds = %133
  br label %208

164:                                              ; preds = %33
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @CblasUpper, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @oneF, align 4
  %171 = load i8*, i8** %17, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @zeroF, align 4
  %174 = load i8*, i8** %18, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @cblas_csyrk(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i8* %171, i32 %172, i32 %173, i8* %174, i32 %175)
  store i32 0, i32* %20, align 4
  br label %177

177:                                              ; preds = %204, %164
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %21, align 4
  br label %184

184:                                              ; preds = %200, %181
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load i32*, i32** %16, align 8
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %21, align 4
  %192 = call i64 @PyArray_GETPTR2(i32* %189, i32 %190, i32 %191)
  %193 = inttoptr i64 %192 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %16, align 8
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %20, align 4
  %198 = call i64 @PyArray_GETPTR2(i32* %195, i32 %196, i32 %197)
  %199 = inttoptr i64 %198 to i32*
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %188
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %184

203:                                              ; preds = %184
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %177

207:                                              ; preds = %177
  br label %208

208:                                              ; preds = %33, %207, %163, %119, %77
  ret void
}

declare dso_local i8* @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @cblas_dsyrk(i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @PyArray_GETPTR2(i32*, i32, i32) #1

declare dso_local i32 @cblas_ssyrk(i32, i32, i32, i32, i32, float, i8*, i32, float, i8*, i32) #1

declare dso_local i32 @cblas_zsyrk(i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @cblas_csyrk(i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
