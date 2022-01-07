; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c_get_view_from_index.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c_get_view_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_3__*, i32, i32)* @get_view_from_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_view_from_index(i32* %0, i32** %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @NPY_MAXDIMS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32, i32* @NPY_MAXDIMS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i8* @PyArray_BYTES(i32* %32)
  store i8* %33, i8** %19, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %174, %5
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %177

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %168 [
    i32 130, label %45
    i32 131, label %79
    i32 128, label %113
    i32 129, label %158
    i32 132, label %167
  ]

45:                                               ; preds = %38
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @PyArray_DIMS(i32* %51)
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @check_and_adjust_index(i32* %50, i32 %56, i32 %57, i32* null)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %211

61:                                               ; preds = %45
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @PyArray_STRIDE(i32* %62, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %64, %70
  %72 = load i8*, i8** %19, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %19, align 8
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 0
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %173

79:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @PyArray_STRIDE(i32* %90, i32 %91)
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %28, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i32* @PyArray_DIMS(i32* %96)
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %31, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %89
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %80

112:                                              ; preds = %80
  br label %173

113:                                              ; preds = %38
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = call i32* @PyArray_DIMS(i32* %120)
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @NpySlice_GetIndicesEx(i32 %119, i32 %125, i32* %20, i32* %21, i32* %22, i32* %23)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %211

129:                                              ; preds = %113
  %130 = load i32, i32* %23, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 0, i32* %23, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %132, %129
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @PyArray_STRIDE(i32* %134, i32 %135)
  %137 = load i32, i32* %20, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i8*, i8** %19, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %19, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @PyArray_STRIDE(i32* %142, i32 %143)
  %145 = load i32, i32* %22, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %28, i64 %148
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %31, i64 %152
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %173

158:                                              ; preds = %38
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %28, i64 %160
  store i32 0, i32* %161, align 4
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %31, i64 %163
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %173

167:                                              ; preds = %38
  br label %173

168:                                              ; preds = %38
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 0
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %168, %167, %158, %133, %112, %61
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %34

177:                                              ; preds = %34
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @PyArray_DESCR(i32* %178)
  %180 = call i32 @Py_INCREF(i32 %179)
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %187

184:                                              ; preds = %177
  %185 = load i32*, i32** %7, align 8
  %186 = call i32* @Py_TYPE(i32* %185)
  br label %187

187:                                              ; preds = %184, %183
  %188 = phi i32* [ @PyArray_Type, %183 ], [ %186, %184 ]
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @PyArray_DESCR(i32* %189)
  %191 = load i32, i32* %17, align 4
  %192 = load i8*, i8** %19, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @PyArray_FLAGS(i32* %193)
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %187
  br label %200

198:                                              ; preds = %187
  %199 = load i32*, i32** %7, align 8
  br label %200

200:                                              ; preds = %198, %197
  %201 = phi i32* [ null, %197 ], [ %199, %198 ]
  %202 = load i32*, i32** %7, align 8
  %203 = call i64 @PyArray_NewFromDescrAndBase(i32* %188, i32 %190, i32 %191, i32* %31, i32* %28, i8* %192, i32 %194, i32* %201, i32* %202)
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32**, i32*** %8, align 8
  store i32* %204, i32** %205, align 8
  %206 = load i32**, i32*** %8, align 8
  %207 = load i32*, i32** %206, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %211

210:                                              ; preds = %200
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %211

211:                                              ; preds = %210, %209, %128, %60
  %212 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @PyArray_BYTES(i32*) #2

declare dso_local i32 @check_and_adjust_index(i32*, i32, i32, i32*) #2

declare dso_local i32* @PyArray_DIMS(i32*) #2

declare dso_local i32 @PyArray_STRIDE(i32*, i32) #2

declare dso_local i32 @NpySlice_GetIndicesEx(i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @Py_INCREF(i32) #2

declare dso_local i32 @PyArray_DESCR(i32*) #2

declare dso_local i64 @PyArray_NewFromDescrAndBase(i32*, i32, i32, i32*, i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32* @Py_TYPE(i32*) #2

declare dso_local i32 @PyArray_FLAGS(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
