; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_VimToPython.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_VimToPython.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_17__*, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }

@Py_None = common dso_local global i32* null, align 8
@VAR_LIST = common dso_local global i64 0, align 8
@VAR_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@VAR_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VAR_NUMBER = common dso_local global i64 0, align 8
@NUMBUFLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@VAR_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32, i32*)* @VimToPython to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @VimToPython(%struct.TYPE_15__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [19 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 100
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32*, i32** @Py_None, align 8
  %23 = call i32 @Py_INCREF(i32* %22)
  %24 = load i32*, i32** @Py_None, align 8
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %4, align 8
  br label %274

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VAR_LIST, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = icmp ne %struct.TYPE_17__* %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VAR_DICT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %38
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %82

50:                                               ; preds = %44, %32
  %51 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VAR_LIST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = bitcast %struct.TYPE_17__* %61 to i8*
  br label %69

63:                                               ; preds = %50
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = bitcast %struct.TYPE_13__* %67 to i8*
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i8* [ %62, %57 ], [ %68, %63 ]
  %71 = ptrtoint i8* %70 to i64
  %72 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %75 = call i32* @PyDict_GetItemString(i32* %73, i8* %74)
  store i32* %75, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @Py_INCREF(i32* %78)
  %80 = load i32*, i32** %8, align 8
  store i32* %80, i32** %4, align 8
  br label %274

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %44, %38
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VAR_STRING, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %101

95:                                               ; preds = %88
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to i8*
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %94 ], [ %100, %95 ]
  %103 = call i32* @PyString_FromString(i8* %102)
  store i32* %103, i32** %8, align 8
  br label %272

104:                                              ; preds = %82
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VAR_NUMBER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i32, i32* @NUMBUFLEN, align 4
  %112 = zext i32 %111 to i64
  %113 = call i8* @llvm.stacksave()
  store i8* %113, i8** %11, align 8
  %114 = alloca i8, i64 %112, align 16
  store i64 %112, i64* %12, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = call i32* @PyString_FromString(i8* %114)
  store i32* %120, i32** %8, align 8
  %121 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %121)
  br label %271

122:                                              ; preds = %104
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @VAR_LIST, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %185

128:                                              ; preds = %122
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %13, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %134 = icmp eq %struct.TYPE_17__* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32* null, i32** %4, align 8
  br label %274

136:                                              ; preds = %128
  %137 = call i32* @PyList_New(i32 0)
  store i32* %137, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i32* null, i32** %4, align 8
  br label %274

140:                                              ; preds = %136
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %143 = load i32*, i32** %8, align 8
  %144 = call i64 @PyDict_SetItemString(i32* %141, i8* %142, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @Py_DECREF(i32* %147)
  store i32* null, i32** %4, align 8
  br label %274

149:                                              ; preds = %140
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  store %struct.TYPE_16__* %152, %struct.TYPE_16__** %14, align 8
  br label %153

153:                                              ; preds = %180, %149
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %155 = icmp ne %struct.TYPE_16__* %154, null
  br i1 %155, label %156, label %184

156:                                              ; preds = %153
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32*, i32** %7, align 8
  %162 = call i32* @VimToPython(%struct.TYPE_15__* %158, i32 %160, i32* %161)
  store i32* %162, i32** %9, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @Py_DECREF(i32* %165)
  store i32* null, i32** %4, align 8
  br label %274

167:                                              ; preds = %156
  %168 = load i32*, i32** %8, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = call i64 @PyList_Append(i32* %168, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @Py_DECREF(i32* %173)
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @Py_DECREF(i32* %175)
  store i32* null, i32** %4, align 8
  br label %274

177:                                              ; preds = %167
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @Py_DECREF(i32* %178)
  br label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  store %struct.TYPE_16__* %183, %struct.TYPE_16__** %14, align 8
  br label %153

184:                                              ; preds = %153
  br label %270

185:                                              ; preds = %122
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @VAR_DICT, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %265

191:                                              ; preds = %185
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %15, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %16, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = icmp eq %struct.TYPE_13__* %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  store i32* null, i32** %4, align 8
  br label %274

206:                                              ; preds = %191
  %207 = call i32* (...) @PyDict_New()
  store i32* %207, i32** %8, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  store i32* null, i32** %4, align 8
  br label %274

210:                                              ; preds = %206
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %213 = load i32*, i32** %8, align 8
  %214 = call i64 @PyDict_SetItemString(i32* %211, i8* %212, i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32*, i32** %8, align 8
  %218 = call i32 @Py_DECREF(i32* %217)
  store i32* null, i32** %4, align 8
  br label %274

219:                                              ; preds = %210
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  store %struct.TYPE_19__* %222, %struct.TYPE_19__** %17, align 8
  br label %223

223:                                              ; preds = %261, %219
  %224 = load i64, i64* %16, align 8
  %225 = icmp sgt i64 %224, 0
  br i1 %225, label %226, label %264

226:                                              ; preds = %223
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %228 = call i32 @HASHITEM_EMPTY(%struct.TYPE_19__* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %260, label %230

230:                                              ; preds = %226
  %231 = load i64, i64* %16, align 8
  %232 = add nsw i64 %231, -1
  store i64 %232, i64* %16, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %234 = call %struct.TYPE_20__* @dict_lookup(%struct.TYPE_19__* %233)
  store %struct.TYPE_20__* %234, %struct.TYPE_20__** %18, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32*, i32** %7, align 8
  %240 = call i32* @VimToPython(%struct.TYPE_15__* %236, i32 %238, i32* %239)
  store i32* %240, i32** %9, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %230
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @Py_DECREF(i32* %243)
  store i32* null, i32** %4, align 8
  br label %274

245:                                              ; preds = %230
  %246 = load i32*, i32** %8, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = inttoptr i64 %249 to i8*
  %251 = load i32*, i32** %9, align 8
  %252 = call i64 @PyDict_SetItemString(i32* %246, i8* %250, i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %245
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @Py_DECREF(i32* %255)
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @Py_DECREF(i32* %257)
  store i32* null, i32** %4, align 8
  br label %274

259:                                              ; preds = %245
  br label %260

260:                                              ; preds = %259, %226
  br label %261

261:                                              ; preds = %260
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 1
  store %struct.TYPE_19__* %263, %struct.TYPE_19__** %17, align 8
  br label %223

264:                                              ; preds = %223
  br label %269

265:                                              ; preds = %185
  %266 = load i32*, i32** @Py_None, align 8
  %267 = call i32 @Py_INCREF(i32* %266)
  %268 = load i32*, i32** @Py_None, align 8
  store i32* %268, i32** %8, align 8
  br label %269

269:                                              ; preds = %265, %264
  br label %270

270:                                              ; preds = %269, %184
  br label %271

271:                                              ; preds = %270, %110
  br label %272

272:                                              ; preds = %271, %101
  %273 = load i32*, i32** %8, align 8
  store i32* %273, i32** %4, align 8
  br label %274

274:                                              ; preds = %272, %254, %242, %216, %209, %205, %172, %164, %146, %139, %135, %77, %21
  %275 = load i32*, i32** %4, align 8
  ret i32* %275
}

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32* @PyDict_GetItemString(i32*, i8*) #1

declare dso_local i32* @PyString_FromString(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i64 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyList_Append(i32*, i32*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @HASHITEM_EMPTY(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @dict_lookup(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
