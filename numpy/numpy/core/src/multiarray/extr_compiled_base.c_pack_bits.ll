; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_pack_bits.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_pack_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@NPY_BEGIN_THREADS_DEF = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Expected an input array of integer or boolean data type\00", align 1
@NPY_UBYTE = common dso_local global i32 0, align 4
@NPY_END_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8)* @pack_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pack_bits(i32* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load i32, i32* @NPY_MAXDIMS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @NPY_BEGIN_THREADS_DEF, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @PyArray_FROM_O(i32* %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %197

30:                                               ; preds = %3
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @PyArray_ISBOOL(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @PyArray_ISINTEGER(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @PyExc_TypeError, align 4
  %40 = call i32 @PyErr_SetString(i32 %39, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @Py_DECREF(i32* %41)
  br label %192

43:                                               ; preds = %34, %30
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @PyArray_CheckAxis(i32* %44, i32* %6, i32 0)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %197

52:                                               ; preds = %43
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @PyArray_NDIM(i32* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @Py_TYPE(i32* %57)
  %59 = load i32, i32* @NPY_UBYTE, align 4
  %60 = call i32 @PyArray_DescrFromType(i32 %59)
  %61 = call i64 @PyArray_NewFromDescr(i32 %58, i32 %60, i32 0, i32* null, i32* null, i32* null, i32 0, i32* null)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %192

66:                                               ; preds = %56
  %67 = load i32*, i32** %10, align 8
  %68 = call i8* @PyArray_DATA(i32* %67)
  store i8* %68, i8** %17, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* @PyArray_DATA(i32* %69)
  store i8* %70, i8** %18, align 8
  %71 = load i8*, i8** %17, align 8
  store i8 0, i8* %71, align 1
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %87, %66
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @PyArray_ITEMSIZE(i32* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i8*, i8** %18, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i8*, i8** %17, align 8
  store i8 1, i8* %83, align 1
  br label %90

84:                                               ; preds = %77
  %85 = load i8*, i8** %18, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %18, align 8
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %72

90:                                               ; preds = %82, %72
  br label %188

91:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @PyArray_NDIM(i32* %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @PyArray_DIM(i32* %98, i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %22, i64 %102
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %92

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %22, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = ashr i32 %112, 3
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %22, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @Py_TYPE(i32* %118)
  %120 = load i32, i32* @NPY_UBYTE, align 4
  %121 = call i32 @PyArray_DescrFromType(i32 %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @PyArray_NDIM(i32* %122)
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @PyArray_ISFORTRAN(i32* %124)
  %126 = call i64 @PyArray_NewFromDescr(i32 %119, i32 %121, i32 %123, i32* %22, i32* null, i32* null, i32 %125, i32* null)
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %10, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %107
  br label %192

131:                                              ; preds = %107
  %132 = load i32*, i32** %9, align 8
  %133 = call i64 @PyArray_IterAllButAxis(i32* %132, i32* %6)
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** %14, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i64 @PyArray_IterAllButAxis(i32* %135, i32* %6)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = load i32*, i32** %15, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140, %131
  %144 = load i32*, i32** %14, align 8
  %145 = call i32 @Py_XDECREF(i32* %144)
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @Py_XDECREF(i32* %146)
  br label %192

148:                                              ; preds = %140
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @PyArray_DIM(i32* %149, i32 %150)
  %152 = call i32 @NPY_BEGIN_THREADS_THRESHOLDED(i32 %151)
  br label %153

153:                                              ; preds = %157, %148
  %154 = load i32*, i32** %14, align 8
  %155 = call i64 @PyArray_ITER_NOTDONE(i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %153
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @PyArray_ITER_DATA(i32* %158)
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @PyArray_ITEMSIZE(i32* %160)
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @PyArray_DIM(i32* %162, i32 %163)
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @PyArray_STRIDE(i32* %165, i32 %166)
  %168 = load i32*, i32** %15, align 8
  %169 = call i32 @PyArray_ITER_DATA(i32* %168)
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @PyArray_DIM(i32* %170, i32 %171)
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @PyArray_STRIDE(i32* %173, i32 %174)
  %176 = load i8, i8* %7, align 1
  %177 = call i32 @pack_inner(i32 %159, i32 %161, i32 %164, i32 %167, i32 %169, i32 %172, i32 %175, i8 signext %176)
  %178 = load i32*, i32** %14, align 8
  %179 = call i32 @PyArray_ITER_NEXT(i32* %178)
  %180 = load i32*, i32** %15, align 8
  %181 = call i32 @PyArray_ITER_NEXT(i32* %180)
  br label %153

182:                                              ; preds = %153
  %183 = load i32, i32* @NPY_END_THREADS, align 4
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @Py_DECREF(i32* %184)
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @Py_DECREF(i32* %186)
  br label %188

188:                                              ; preds = %182, %90
  %189 = load i32*, i32** %9, align 8
  %190 = call i32 @Py_DECREF(i32* %189)
  %191 = load i32*, i32** %10, align 8
  store i32* %191, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %197

192:                                              ; preds = %143, %130, %65, %38
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @Py_XDECREF(i32* %193)
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @Py_XDECREF(i32* %195)
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %197

197:                                              ; preds = %192, %188, %51, %29
  %198 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32*, i32** %4, align 8
  ret i32* %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PyArray_FROM_O(i32*) #2

declare dso_local i32 @PyArray_ISBOOL(i32*) #2

declare dso_local i32 @PyArray_ISINTEGER(i32*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i64 @PyArray_CheckAxis(i32*, i32*, i32) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i64 @PyArray_NewFromDescr(i32, i32, i32, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @Py_TYPE(i32*) #2

declare dso_local i32 @PyArray_DescrFromType(i32) #2

declare dso_local i8* @PyArray_DATA(i32*) #2

declare dso_local i32 @PyArray_ITEMSIZE(i32*) #2

declare dso_local i32 @PyArray_DIM(i32*, i32) #2

declare dso_local i32 @PyArray_ISFORTRAN(i32*) #2

declare dso_local i64 @PyArray_IterAllButAxis(i32*, i32*) #2

declare dso_local i32 @Py_XDECREF(i32*) #2

declare dso_local i32 @NPY_BEGIN_THREADS_THRESHOLDED(i32) #2

declare dso_local i64 @PyArray_ITER_NOTDONE(i32*) #2

declare dso_local i32 @pack_inner(i32, i32, i32, i32, i32, i32, i32, i8 signext) #2

declare dso_local i32 @PyArray_ITER_DATA(i32*) #2

declare dso_local i32 @PyArray_STRIDE(i32*, i32) #2

declare dso_local i32 @PyArray_ITER_NEXT(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
