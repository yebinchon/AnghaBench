; ModuleID = '/home/carl/AnghaBench/numpy/numpy/f2py/src/extr_fortranobject.c_fortran_getattr.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/f2py/src/extr_fortranobject.c_fortran_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32*, i32, %struct.TYPE_6__, i32 (i32*, i32*, i32, i32*)* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_8__* }

@save_def = common dso_local global %struct.TYPE_8__* null, align 8
@set_data = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_ARRAY_FARRAY = common dso_local global i32 0, align 4
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"_cpointer\00", align 1
@fortran_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*)* @fortran_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fortran_getattr(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @PyDict_GetItemString(i32* %21, i8* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @Py_INCREF(i32* %27)
  %29 = load i32*, i32** %10, align 8
  store i32* %29, i32** %3, align 8
  br label %291

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* %39, i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %38, %32
  %51 = phi i1 [ false, %32 ], [ %49, %38 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %32

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %210

59:                                               ; preds = %56
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %209

69:                                               ; preds = %59
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %76, align 8
  %78 = icmp eq i32 (i32*, i32*, i32, i32*)* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32* null, i32** %3, align 8
  br label %291

80:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %82, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 -1, i32* %104, align 4
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %81

108:                                              ; preds = %81
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** @save_def, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 5
  %122 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @set_data, align 4
  %140 = call i32 %122(i32* %129, i32* %138, i32 %139, i32* %9)
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %153

143:                                              ; preds = %108
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %162

153:                                              ; preds = %108
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %153, %143
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %206

172:                                              ; preds = %162
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* @NPY_ARRAY_FARRAY, align 4
  %200 = call i32* @PyArray_New(i32* @PyArray_Type, i32 %173, i32* %182, i32 %190, i32* null, i32* %198, i32 0, i32 %199, i32* null)
  store i32* %200, i32** %11, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %172
  store i32* null, i32** %3, align 8
  br label %291

204:                                              ; preds = %172
  %205 = load i32*, i32** %11, align 8
  store i32* %205, i32** %3, align 8
  br label %291

206:                                              ; preds = %162
  %207 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %208

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %208, %59
  br label %210

210:                                              ; preds = %209, %56
  %211 = load i8*, i8** %5, align 8
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @Py_INCREF(i32* %217)
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  store i32* %221, i32** %3, align 8
  br label %291

222:                                              ; preds = %210
  %223 = load i8*, i8** %5, align 8
  %224 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %257

226:                                              ; preds = %222
  %227 = call i32* @PyString_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %227, i32** %12, align 8
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %243, %226
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %228
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %239
  %241 = call i32* @fortran_doc(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %240)
  %242 = call i32 @PyString_ConcatAndDel(i32** %12, i32* %241)
  br label %243

243:                                              ; preds = %234
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %228

246:                                              ; preds = %228
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i8*, i8** %5, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = call i64 @PyDict_SetItemString(i32* %249, i8* %250, i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %246
  store i32* null, i32** %3, align 8
  br label %291

255:                                              ; preds = %246
  %256 = load i32*, i32** %12, align 8
  store i32* %256, i32** %3, align 8
  br label %291

257:                                              ; preds = %222
  %258 = load i8*, i8** %5, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %285

261:                                              ; preds = %257
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %285

266:                                              ; preds = %261
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = bitcast i32* %272 to i8*
  %274 = call i32* @F2PyCapsule_FromVoidPtr(i8* %273, i32* null)
  store i32* %274, i32** %13, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i8*, i8** %5, align 8
  %279 = load i32*, i32** %13, align 8
  %280 = call i64 @PyDict_SetItemString(i32* %277, i8* %278, i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %266
  store i32* null, i32** %3, align 8
  br label %291

283:                                              ; preds = %266
  %284 = load i32*, i32** %13, align 8
  store i32* %284, i32** %3, align 8
  br label %291

285:                                              ; preds = %261, %257
  %286 = load i32, i32* @fortran_methods, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %288 = bitcast %struct.TYPE_7__* %287 to i32*
  %289 = load i8*, i8** %5, align 8
  %290 = call i32* @Py_FindMethod(i32 %286, i32* %288, i8* %289)
  store i32* %290, i32** %3, align 8
  br label %291

291:                                              ; preds = %285, %283, %282, %255, %254, %214, %204, %203, %79, %26
  %292 = load i32*, i32** %3, align 8
  ret i32* %292
}

declare dso_local i32* @PyDict_GetItemString(i32*, i8*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @PyArray_New(i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @PyString_FromString(i8*) #1

declare dso_local i32 @PyString_ConcatAndDel(i32**, i32*) #1

declare dso_local i32* @fortran_doc(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i64 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32* @F2PyCapsule_FromVoidPtr(i8*, i32*) #1

declare dso_local i32* @Py_FindMethod(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
