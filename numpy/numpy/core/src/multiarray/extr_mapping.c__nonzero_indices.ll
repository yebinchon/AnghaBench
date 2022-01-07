; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c__nonzero_indices.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c__nonzero_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@_nonzero_indices.one = internal global i64 1, align 8
@NPY_BEGIN_THREADS_DEF = common dso_local global i32 0, align 4
@NPY_BOOL = common dso_local global i32 0, align 4
@NPY_ARRAY_CARRAY = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_INTP = common dso_local global i32 0, align 4
@NPY_END_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @_nonzero_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nonzero_indices(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %20 = load i32, i32* @NPY_MAXDIMS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* @NPY_MAXDIMS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %27 = load i32, i32* @NPY_MAXDIMS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i64*, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load i32, i32* @NPY_BEGIN_THREADS_DEF, align 4
  %31 = load i32, i32* @NPY_BOOL, align 4
  %32 = call i32* @PyArray_DescrFromType(i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @NPY_ARRAY_CARRAY, align 4
  %36 = call i64 @PyArray_FromAny(i32* %33, i32* %34, i32 0, i32 0, i32 %35, i32* null)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %198

41:                                               ; preds = %2
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @PyArray_NDIM(i32* %42)
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %53, %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32**, i32*** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %44

56:                                               ; preds = %44
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @PyArray_SIZE(i32* %57)
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @PyArray_DATA(i32* %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = call i64 @count_boolean_trues(i32 1, i8* %63, i64* %11, i64* @_nonzero_indices.one)
  store i64 %64, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %102, %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %65
  %70 = load i32, i32* @NPY_INTP, align 4
  %71 = call i32* @PyArray_DescrFromType(i32 %70)
  %72 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, i32* %71, i32 1, i64* %13, i32* null, i32* null, i32 0, i32* null)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %180

77:                                               ; preds = %69
  %78 = load i32*, i32** %8, align 8
  %79 = load i32**, i32*** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* %78, i32** %82, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @PyArray_DATA(i32* %83)
  %85 = inttoptr i64 %84 to i64*
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64*, i64** %29, i64 %87
  store i64* %85, i64** %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %23, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i64* @PyArray_DIMS(i32* %92)
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %26, i64 %100
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %77
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %65

105:                                              ; preds = %65
  %106 = load i64, i64* %13, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %176

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @NPY_BEGIN_THREADS_THRESHOLDED(i64 %110)
  store i64 0, i64* %12, align 8
  br label %112

112:                                              ; preds = %171, %109
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %174

116:                                              ; preds = %112
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %14, align 8
  %119 = load i32, i32* %117, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %136, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %23, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64*, i64** %29, i64 %132
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %133, align 8
  store i64 %130, i64* %134, align 8
  br label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %122

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %116
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %167, %140
  %144 = load i32, i32* %10, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %23, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %26, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %150, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %23, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %170

162:                                              ; preds = %146
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %23, i64 %164
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %10, align 4
  br label %143

170:                                              ; preds = %156, %143
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %12, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %12, align 8
  br label %112

174:                                              ; preds = %112
  %175 = load i32, i32* @NPY_END_THREADS, align 4
  br label %176

176:                                              ; preds = %174, %108
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @Py_DECREF(i32* %177)
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %198

180:                                              ; preds = %76
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %192, %180
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i32**, i32*** %5, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @Py_XDECREF(i32* %190)
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %181

195:                                              ; preds = %181
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 @Py_XDECREF(i32* %196)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %198

198:                                              ; preds = %195, %176, %40
  %199 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @PyArray_DescrFromType(i32) #2

declare dso_local i64 @PyArray_FromAny(i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i64 @PyArray_SIZE(i32*) #2

declare dso_local i64 @PyArray_DATA(i32*) #2

declare dso_local i64 @count_boolean_trues(i32, i8*, i64*, i64*) #2

declare dso_local i64 @PyArray_NewFromDescr(i32*, i32*, i32, i64*, i32*, i32*, i32, i32*) #2

declare dso_local i64* @PyArray_DIMS(i32*) #2

declare dso_local i32 @NPY_BEGIN_THREADS_THRESHOLDED(i64) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i32 @Py_XDECREF(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
