; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_get_binary_op_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_get_binary_op_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i8**, i32*, i32* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__*, i8*, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Getting binary op function for type number %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Trying loop with signature %d %d -> %d\0A\00", align 1
@NPY_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i8**)* @get_binary_op_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_binary_op_function(%struct.TYPE_5__* %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @NPY_UF_DBG_PRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %92

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @PyTypeNum_ISUSERDEF(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @PyInt_FromLong(i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %275

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32* @PyDict_GetItem(i32* %39, i32* %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @Py_DECREF(i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %91

46:                                               ; preds = %36
  %47 = load i32*, i32** %13, align 8
  %48 = call i64 @NpyCapsule_AsVoidPtr(i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %11, align 8
  br label %50

50:                                               ; preds = %86, %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %53
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %9, align 8
  store i8* %84, i8** %85, align 8
  store i32 0, i32* %5, align 4
  br label %275

86:                                               ; preds = %70, %63, %53
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %11, align 8
  br label %50

90:                                               ; preds = %50
  br label %91

91:                                               ; preds = %90, %36
  br label %92

92:                                               ; preds = %91, %24, %4
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %188, %92
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %191

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %102, i64 %108
  store i8* %109, i8** %15, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %15, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @NPY_UF_DBG_PRINT3(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 signext %112, i8 signext %115, i8 signext %118)
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @PyArray_CanCastSafely(i32 %121, i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %187

127:                                              ; preds = %99
  %128 = load i8*, i8** %15, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8*, i8** %15, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %137, label %187

137:                                              ; preds = %127
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NPY_OBJECT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %149, label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %15, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = load i32, i32* @NPY_OBJECT, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %142, %137
  %150 = load i8*, i8** %15, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8*, i8** %15, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %153, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %149
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %8, align 8
  store i32 %166, i32* %167, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %9, align 8
  store i8* %174, i8** %175, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = load i32*, i32** %7, align 8
  store i32 %179, i32* %180, align 4
  store i32 0, i32* %5, align 4
  br label %275

181:                                              ; preds = %149
  %182 = load i8*, i8** %15, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = load i32*, i32** %7, align 8
  store i32 %185, i32* %186, align 4
  br label %191

187:                                              ; preds = %142, %127, %99
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %93

191:                                              ; preds = %181, %93
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %271, %191
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %274

198:                                              ; preds = %192
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %201, i64 %207
  store i8* %208, i8** %16, align 8
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i8*, i8** %16, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @PyArray_CanCastSafely(i32 %210, i8 signext %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %270

216:                                              ; preds = %198
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = load i8*, i8** %16, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %220, %224
  br i1 %225, label %226, label %270

226:                                              ; preds = %216
  %227 = load i8*, i8** %16, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = load i8*, i8** %16, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %230, %234
  br i1 %235, label %236, label %270

236:                                              ; preds = %226
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @NPY_OBJECT, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %248, label %241

241:                                              ; preds = %236
  %242 = load i8*, i8** %16, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = load i32, i32* @NPY_OBJECT, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %270

248:                                              ; preds = %241, %236
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %8, align 8
  store i32 %255, i32* %256, align 4
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 3
  %259 = load i8**, i8*** %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = load i8**, i8*** %9, align 8
  store i8* %263, i8** %264, align 8
  %265 = load i8*, i8** %16, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = load i32*, i32** %7, align 8
  store i32 %268, i32* %269, align 4
  store i32 0, i32* %5, align 4
  br label %275

270:                                              ; preds = %241, %226, %216, %198
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %192

274:                                              ; preds = %192
  store i32 -1, i32* %5, align 4
  br label %275

275:                                              ; preds = %274, %248, %159, %77, %35
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local i32 @NPY_UF_DBG_PRINT1(i8*, i32) #1

declare dso_local i64 @PyTypeNum_ISUSERDEF(i32) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @NpyCapsule_AsVoidPtr(i32*) #1

declare dso_local i32 @NPY_UF_DBG_PRINT3(i8*, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @PyArray_CanCastSafely(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
