; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_prepare_one_operand.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_prepare_one_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }

@NPY_ITER_ALLOCATE = common dso_local global i32 0, align 4
@NPY_ITER_VIRTUAL = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Iterator operand was NULL, but neither the ALLOCATE nor the VIRTUAL flag was specified\00", align 1
@NPY_OP_ITFLAG_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"Automatic allocation was requested for an iterator operand, but it wasn't flagged for writing\00", align 1
@NPY_ITER_BUFFERED = common dso_local global i32 0, align 4
@NPY_ITER_DELAY_BUFALLOC = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [146 x i8] c"Automatic allocation was requested for an iterator operand, and it was flagged as readable, but buffering  without delayed allocation was enabled\00", align 1
@NPY_ITER_ARRAYMASK = common dso_local global i32 0, align 4
@NPY_BOOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Iterator operand flag VIRTUAL was specified, but the operand was not NULL\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"operand array with iterator write flag set\00", align 1
@NPY_ITER_ZEROSIZE_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Iteration of zero-sized operands is not enabled\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Iterator input operand has no dtype descr\00", align 1
@NPY_ITER_REFS_OK = common dso_local global i32 0, align 4
@NPY_ITEM_REFCOUNT = common dso_local global i32 0, align 4
@NPY_ITEM_IS_POINTER = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [91 x i8] c"Iterator operand or requested dtype holds references, but the REFS_OK flag was not enabled\00", align 1
@NPY_ITER_NBO = common dso_local global i32 0, align 4
@NPY_NATIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"Iterator: Setting NPY_OP_ITFLAG_CAST because of NPY_ITER_NBO\0A\00", align 1
@NPY_OP_ITFLAG_CAST = common dso_local global i32 0, align 4
@NPY_ITER_ALIGNED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"Iterator: Setting NPY_OP_ITFLAG_CAST because of NPY_ITER_ALIGNED\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Iterator inputs must be ndarrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, %struct.TYPE_14__*, %struct.TYPE_14__**, i32, i32, i32*)* @npyiter_prepare_one_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_prepare_one_operand(i32** %0, i8** %1, %struct.TYPE_14__* %2, %struct.TYPE_14__** %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32** %0, i32*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %90

21:                                               ; preds = %7
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @NPY_ITER_ALLOCATE, align 4
  %24 = load i32, i32* @NPY_ITER_VIRTUAL, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @PyExc_ValueError, align 4
  %30 = call i32 @PyErr_SetString(i32 %29, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

31:                                               ; preds = %21
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @NPY_ITER_ALLOCATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @PyExc_ValueError, align 4
  %44 = call i32 @PyErr_SetString(i32 %43, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @NPY_ITER_BUFFERED, align 4
  %48 = load i32, i32* @NPY_ITER_DELAY_BUFALLOC, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = load i32, i32* @NPY_ITER_BUFFERED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @PyExc_ValueError, align 4
  %61 = call i32 @PyErr_SetString(i32 %60, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

62:                                               ; preds = %53, %45
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %64 = call i32 @Py_XINCREF(%struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %66, align 8
  br label %69

67:                                               ; preds = %31
  %68 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %68, align 8
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @NPY_ITER_ARRAYMASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = icmp eq %struct.TYPE_14__* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* @NPY_BOOL, align 4
  %80 = call %struct.TYPE_14__* @PyArray_DescrFromType(i32 %79)
  %81 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %81, align 8
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = icmp eq %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %254

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i8**, i8*** %10, align 8
  store i8* null, i8** %89, align 8
  store i32 1, i32* %8, align 4
  br label %254

90:                                               ; preds = %7
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @NPY_ITER_VIRTUAL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @PyExc_ValueError, align 4
  %97 = call i32 @PyErr_SetString(i32 %96, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

98:                                               ; preds = %90
  %99 = load i32**, i32*** %9, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @PyArray_Check(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %250

103:                                              ; preds = %98
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32**, i32*** %9, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @PyArray_FailUnlessWriteable(i32* %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %254

115:                                              ; preds = %109, %103
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @NPY_ITER_ZEROSIZE_OK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load i32**, i32*** %9, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @PyArray_SIZE(i32* %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @PyExc_ValueError, align 4
  %127 = call i32 @PyErr_SetString(i32 %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

128:                                              ; preds = %120, %115
  %129 = load i32**, i32*** %9, align 8
  %130 = load i32*, i32** %129, align 8
  %131 = call i8* @PyArray_BYTES(i32* %130)
  %132 = load i8**, i8*** %10, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32**, i32*** %9, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = call %struct.TYPE_14__* @PyArray_DESCR(i32* %134)
  %136 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %136, align 8
  %137 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = icmp eq %struct.TYPE_14__* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %128
  %141 = load i32, i32* @PyExc_ValueError, align 4
  %142 = call i32 @PyErr_SetString(i32 %141, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

143:                                              ; preds = %128
  %144 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = call i32 @Py_INCREF(%struct.TYPE_14__* %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @NPY_ITER_REFS_OK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %143
  %152 = load i32**, i32*** %9, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = call %struct.TYPE_14__* @PyArray_DESCR(i32* %153)
  store %struct.TYPE_14__* %154, %struct.TYPE_14__** %16, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @NPY_ITEM_REFCOUNT, align 4
  %159 = load i32, i32* @NPY_ITEM_IS_POINTER, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %151
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %165 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = icmp ne %struct.TYPE_14__* %164, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @NPY_ITEM_REFCOUNT, align 4
  %174 = load i32, i32* @NPY_ITEM_IS_POINTER, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %168, %151
  %179 = load i32, i32* @PyExc_TypeError, align 4
  %180 = call i32 @PyErr_SetString(i32 %179, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

181:                                              ; preds = %168, %163
  br label %182

182:                                              ; preds = %181, %143
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %184 = icmp ne %struct.TYPE_14__* %183, null
  br i1 %184, label %185, label %204

185:                                              ; preds = %182
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %187 = call i32 @Py_INCREF(%struct.TYPE_14__* %186)
  %188 = load i32**, i32*** %9, align 8
  %189 = load i32*, i32** %188, align 8
  %190 = load i32**, i32*** %9, align 8
  %191 = load i32*, i32** %190, align 8
  %192 = call %struct.TYPE_14__* @PyArray_DESCR(i32* %191)
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %194 = call %struct.TYPE_14__* @PyArray_AdaptFlexibleDType(i32* %189, %struct.TYPE_14__* %192, %struct.TYPE_14__* %193)
  store %struct.TYPE_14__* %194, %struct.TYPE_14__** %11, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %196 = icmp eq %struct.TYPE_14__* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  store i32 0, i32* %8, align 4
  br label %254

198:                                              ; preds = %185
  %199 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = call i32 @Py_DECREF(%struct.TYPE_14__* %200)
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %203 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %202, %struct.TYPE_14__** %203, align 8
  br label %204

204:                                              ; preds = %198, %182
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @NPY_ITER_NBO, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %204
  %210 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @PyArray_ISNBO(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %231, label %216

216:                                              ; preds = %209
  %217 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = load i32, i32* @NPY_NATIVE, align 4
  %220 = call %struct.TYPE_14__* @PyArray_DescrNewByteorder(%struct.TYPE_14__* %218, i32 %219)
  store %struct.TYPE_14__* %220, %struct.TYPE_14__** %17, align 8
  %221 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = call i32 @Py_DECREF(%struct.TYPE_14__* %222)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %225 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %224, %struct.TYPE_14__** %225, align 8
  %226 = call i32 @NPY_IT_DBG_PRINT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %227 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %228 = load i32*, i32** %15, align 8
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %227
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %216, %209
  br label %232

232:                                              ; preds = %231, %204
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* @NPY_ITER_ALIGNED, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load i32**, i32*** %9, align 8
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @IsAligned(i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %237
  %243 = call i32 @NPY_IT_DBG_PRINT(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %244 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %244
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %242, %237
  br label %249

249:                                              ; preds = %248, %232
  br label %253

250:                                              ; preds = %98
  %251 = load i32, i32* @PyExc_ValueError, align 4
  %252 = call i32 @PyErr_SetString(i32 %251, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %254

253:                                              ; preds = %249
  store i32 1, i32* %8, align 4
  br label %254

254:                                              ; preds = %253, %250, %197, %178, %140, %125, %114, %95, %88, %85, %59, %42, %28
  %255 = load i32, i32* %8, align 4
  ret i32 %255
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @Py_XINCREF(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @PyArray_DescrFromType(i32) #1

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i64 @PyArray_FailUnlessWriteable(i32*, i8*) #1

declare dso_local i64 @PyArray_SIZE(i32*) #1

declare dso_local i8* @PyArray_BYTES(i32*) #1

declare dso_local %struct.TYPE_14__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @PyArray_AdaptFlexibleDType(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_14__*) #1

declare dso_local i32 @PyArray_ISNBO(i32) #1

declare dso_local %struct.TYPE_14__* @PyArray_DescrNewByteorder(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @NPY_IT_DBG_PRINT(i8*) #1

declare dso_local i32 @IsAligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
