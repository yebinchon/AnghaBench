; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_reduction.c_conform_reduce_result.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_reduction.c_conform_reduce_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [125 x i8] c"output parameter for reduction operation %s has the wrong number of dimensions (must match the operand's when keepdims=True)\00", align 1
@.str.1 = private unnamed_addr constant [117 x i8] c"output parameter for reduction operation %s has a reduction dimension not equal to one (required when keepdims=True)\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"output parameter for reduction operation %s does not have enough dimensions\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"output parameter for reduction operation %s has too many dimensions\00", align 1
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_ANYORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64*, i32*, i32, i8*, i32)* @conform_reduce_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conform_reduce_result(i32 %0, i64* %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* @NPY_MAXDIMS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load i32, i32* @NPY_MAXDIMS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @PyArray_STRIDES(i32* %33)
  store i32* %34, i32** %17, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @PyArray_DIMS(i32* %35)
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @PyArray_NDIM(i32* %37)
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %6
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @PyArray_NDIM(i32* %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @PyExc_ValueError, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @PyErr_Format(i32 %47, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

50:                                               ; preds = %41
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @PyExc_ValueError, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @PyErr_Format(i32 %70, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %51

78:                                               ; preds = %51
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @Py_INCREF(i32* %79)
  %81 = load i32*, i32** %10, align 8
  store i32* %81, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

82:                                               ; preds = %6
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %129, %82
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %132

87:                                               ; preds = %83
  %88 = load i64*, i64** %9, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %29, i64 %96
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %32, i64 %99
  store i32 1, i32* %100, align 4
  br label %128

101:                                              ; preds = %87
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @PyExc_ValueError, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @PyErr_Format(i32 %106, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

109:                                              ; preds = %101
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %29, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %32, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %128

128:                                              ; preds = %109, %94
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %83

132:                                              ; preds = %83
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* @PyExc_ValueError, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @PyErr_Format(i32 %137, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

140:                                              ; preds = %132
  %141 = load i32*, i32** %10, align 8
  %142 = call i32* @PyArray_DESCR(i32* %141)
  store i32* %142, i32** %22, align 8
  %143 = load i32*, i32** %22, align 8
  %144 = call i32 @Py_INCREF(i32* %143)
  %145 = load i32*, i32** %22, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @PyArray_DATA(i32* %147)
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @PyArray_FLAGS(i32* %149)
  %151 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, i32* %145, i32 %146, i32* %32, i32* %29, i32 %148, i32 %150, i32* null)
  %152 = inttoptr i64 %151 to i32*
  store i32* %152, i32** %23, align 8
  %153 = load i32*, i32** %23, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

156:                                              ; preds = %140
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @Py_INCREF(i32* %157)
  %159 = load i32*, i32** %23, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = call i64 @PyArray_SetBaseObject(i32* %159, i32* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32*, i32** %23, align 8
  %165 = call i32 @Py_DECREF(i32* %164)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

166:                                              ; preds = %156
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %201

169:                                              ; preds = %166
  %170 = load i32*, i32** %23, align 8
  %171 = load i32, i32* @NPY_ANYORDER, align 4
  %172 = call i64 @PyArray_NewLikeArray(i32* %170, i32 %171, i32* null, i32 0)
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %25, align 8
  %174 = load i32*, i32** %25, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i32*, i32** %23, align 8
  %178 = call i32 @Py_DECREF(i32* %177)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

179:                                              ; preds = %169
  %180 = load i32*, i32** %25, align 8
  %181 = load i32*, i32** %23, align 8
  %182 = call i64 @PyArray_CopyInto(i32* %180, i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i32*, i32** %23, align 8
  %186 = call i32 @Py_DECREF(i32* %185)
  %187 = load i32*, i32** %25, align 8
  %188 = call i32 @Py_DECREF(i32* %187)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

189:                                              ; preds = %179
  %190 = load i32*, i32** %25, align 8
  %191 = load i32*, i32** %23, align 8
  %192 = call i64 @PyArray_SetWritebackIfCopyBase(i32* %190, i32* %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load i32*, i32** %23, align 8
  %196 = call i32 @Py_DECREF(i32* %195)
  %197 = load i32*, i32** %25, align 8
  %198 = call i32 @Py_DECREF(i32* %197)
  store i32* null, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

199:                                              ; preds = %189
  %200 = load i32*, i32** %25, align 8
  store i32* %200, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

201:                                              ; preds = %166
  %202 = load i32*, i32** %23, align 8
  store i32* %202, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %203

203:                                              ; preds = %201, %199, %194, %184, %176, %163, %155, %136, %105, %78, %69, %46
  %204 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32*, i32** %7, align 8
  ret i32* %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @PyArray_STRIDES(i32*) #2

declare dso_local i32* @PyArray_DIMS(i32*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #2

declare dso_local i32 @Py_INCREF(i32*) #2

declare dso_local i32* @PyArray_DESCR(i32*) #2

declare dso_local i64 @PyArray_NewFromDescr(i32*, i32*, i32, i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @PyArray_DATA(i32*) #2

declare dso_local i32 @PyArray_FLAGS(i32*) #2

declare dso_local i64 @PyArray_SetBaseObject(i32*, i32*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i64 @PyArray_NewLikeArray(i32*, i32, i32*, i32) #2

declare dso_local i64 @PyArray_CopyInto(i32*, i32*) #2

declare dso_local i64 @PyArray_SetWritebackIfCopyBase(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
