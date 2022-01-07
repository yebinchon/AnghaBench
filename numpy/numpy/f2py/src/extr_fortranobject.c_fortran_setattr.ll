; ModuleID = '/home/carl/AnghaBench/numpy/numpy/f2py/src/extr_fortranobject.c_fortran_setattr.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/f2py/src/extr_fortranobject.c_fortran_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32 (i32*, i32*, i32, i32*)*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_7__* }

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"over-writing fortran routine\00", align 1
@F2PY_MAX_DIMS = common dso_local global i32 0, align 4
@save_def = common dso_local global %struct.TYPE_7__* null, align 8
@Py_None = common dso_local global i32* null, align 8
@F2PY_INTENT_IN = common dso_local global i32 0, align 4
@set_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"delete non-existing fortran attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32*)* @fortran_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortran_setattr(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %39, %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i8* %25, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %24, %18
  %37 = phi i1 [ false, %18 ], [ %35, %24 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %18

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %337

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @PyExc_AttributeError, align 4
  %57 = call i32 @PyErr_SetString(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %375

58:                                               ; preds = %45
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %65, align 8
  %67 = icmp ne i32 (i32*, i32*, i32, i32*)* %66, null
  br i1 %67, label %68, label %225

68:                                               ; preds = %58
  %69 = load i32, i32* @F2PY_MAX_DIMS, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %12, align 8
  %72 = alloca i32, i64 %70, align 16
  store i64 %70, i64* %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** @save_def, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** @Py_None, align 8
  %81 = icmp ne i32* %79, %80
  br i1 %81, label %82, label %143

82:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %84, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %72, i64 %96
  store i32 -1, i32* %97, align 4
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %83

101:                                              ; preds = %83
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @F2PY_INTENT_IN, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = call i32* @array_from_pyobj(i32 %109, i32* %72, i32 %117, i32 %118, i32* %119)
  store i32* %120, i32** %11, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %101
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %221

123:                                              ; preds = %101
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32*, i32** %11, align 8
  %140 = call i32* @PyArray_DIMS(i32* %139)
  %141 = load i32, i32* @set_data, align 4
  %142 = call i32 %131(i32* %138, i32* %140, i32 %141, i32* %10)
  br label %199

143:                                              ; preds = %68
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %159, %143
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %145, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %144
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %72, i64 %157
  store i32 0, i32* %158, align 4
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %144

162:                                              ; preds = %144
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %169, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* @set_data, align 4
  %179 = call i32 %170(i32* %177, i32* %72, i32 %178, i32* %10)
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %195, %162
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %181, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %180
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %72, i64 %193
  store i32 -1, i32* %194, align 4
  br label %195

195:                                              ; preds = %191
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %180

198:                                              ; preds = %180
  br label %199

199:                                              ; preds = %198, %123
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = call i32* @memcpy(i32* %208, i32* %72, i32 %219)
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %199, %122
  %222 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %15, align 4
  switch i32 %223, label %377 [
    i32 0, label %224
    i32 1, label %375
  ]

224:                                              ; preds = %221
  br label %257

225:                                              ; preds = %58
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @F2PY_INTENT_IN, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = call i32* @array_from_pyobj(i32 %233, i32* %242, i32 %250, i32 %251, i32* %252)
  store i32* %253, i32** %11, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %225
  store i32 -1, i32* %4, align 4
  br label %375

256:                                              ; preds = %225
  br label %257

257:                                              ; preds = %256, %224
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %324

267:                                              ; preds = %257
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = call i32 @PyArray_NDIM(i32* %277)
  %279 = call i32 @PyArray_MultiplyList(i32* %276, i32 %278)
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* %16, align 4
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %288

282:                                              ; preds = %267
  %283 = load i32*, i32** %11, align 8
  %284 = call i32* @PyArray_DIMS(i32* %283)
  %285 = load i32*, i32** %11, align 8
  %286 = call i32 @PyArray_NDIM(i32* %285)
  %287 = call i32 @PyArray_MultiplyList(i32* %284, i32 %286)
  store i32 %287, i32* %16, align 4
  br label %288

288:                                              ; preds = %282, %267
  %289 = load i32, i32* %16, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %308, label %291

291:                                              ; preds = %288
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = load i32*, i32** %11, align 8
  %301 = call i32* @PyArray_DATA(i32* %300)
  %302 = load i32, i32* %16, align 4
  %303 = load i32*, i32** %11, align 8
  %304 = call i32 @PyArray_ITEMSIZE(i32* %303)
  %305 = mul nsw i32 %302, %304
  %306 = call i32* @memcpy(i32* %299, i32* %301, i32 %305)
  %307 = icmp eq i32* %306, null
  br i1 %307, label %308, label %316

308:                                              ; preds = %291, %288
  %309 = load i32*, i32** %11, align 8
  %310 = load i32*, i32** %7, align 8
  %311 = icmp ne i32* %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i32*, i32** %11, align 8
  %314 = call i32 @Py_DECREF(i32* %313)
  br label %315

315:                                              ; preds = %312, %308
  store i32 -1, i32* %4, align 4
  br label %375

316:                                              ; preds = %291
  %317 = load i32*, i32** %11, align 8
  %318 = load i32*, i32** %7, align 8
  %319 = icmp ne i32* %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i32*, i32** %11, align 8
  %322 = call i32 @Py_DECREF(i32* %321)
  br label %323

323:                                              ; preds = %320, %316
  br label %336

324:                                              ; preds = %257
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %331, align 8
  %333 = icmp eq i32 (i32*, i32*, i32, i32*)* %332, null
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 -1, i32 0
  store i32 %335, i32* %4, align 4
  br label %375

336:                                              ; preds = %323
  store i32 0, i32* %4, align 4
  br label %375

337:                                              ; preds = %42
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = icmp eq i32* %340, null
  br i1 %341, label %342, label %352

342:                                              ; preds = %337
  %343 = call i32* (...) @PyDict_New()
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  store i32* %343, i32** %345, align 8
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = icmp eq i32* %348, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %342
  store i32 -1, i32* %4, align 4
  br label %375

351:                                              ; preds = %342
  br label %352

352:                                              ; preds = %351, %337
  %353 = load i32*, i32** %7, align 8
  %354 = icmp eq i32* %353, null
  br i1 %354, label %355, label %368

355:                                              ; preds = %352
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i8*, i8** %6, align 8
  %360 = call i32 @PyDict_DelItemString(i32* %358, i8* %359)
  store i32 %360, i32* %17, align 4
  %361 = load i32, i32* %17, align 4
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %355
  %364 = load i32, i32* @PyExc_AttributeError, align 4
  %365 = call i32 @PyErr_SetString(i32 %364, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %366

366:                                              ; preds = %363, %355
  %367 = load i32, i32* %17, align 4
  store i32 %367, i32* %4, align 4
  br label %375

368:                                              ; preds = %352
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = load i8*, i8** %6, align 8
  %373 = load i32*, i32** %7, align 8
  %374 = call i32 @PyDict_SetItemString(i32* %371, i8* %372, i32* %373)
  store i32 %374, i32* %4, align 4
  br label %375

375:                                              ; preds = %368, %366, %350, %336, %324, %315, %255, %221, %55
  %376 = load i32, i32* %4, align 4
  ret i32 %376

377:                                              ; preds = %221
  unreachable
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @array_from_pyobj(i32, i32*, i32, i32, i32*) #1

declare dso_local i32* @PyArray_DIMS(i32*) #1

declare dso_local i32* @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @PyArray_MultiplyList(i32*, i32) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32* @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_ITEMSIZE(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @PyDict_DelItemString(i32*, i8*) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
