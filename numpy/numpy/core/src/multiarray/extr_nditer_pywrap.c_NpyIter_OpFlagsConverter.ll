; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_NpyIter_OpFlagsConverter.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_NpyIter_OpFlagsConverter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"op_flags must be a tuple or array of per-op flag-tuples\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@NPY_ITER_ALIGNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@NPY_ITER_ALLOCATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"arraymask\00", align 1
@NPY_ITER_ARRAYMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@NPY_ITER_COPY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"contig\00", align 1
@NPY_ITER_CONTIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"nbo\00", align 1
@NPY_ITER_NBO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"no_subtype\00", align 1
@NPY_ITER_NO_SUBTYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"no_broadcast\00", align 1
@NPY_ITER_NO_BROADCAST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"overlap_assume_elementwise\00", align 1
@NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@NPY_ITER_READONLY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"readwrite\00", align 1
@NPY_ITER_READWRITE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"updateifcopy\00", align 1
@NPY_ITER_UPDATEIFCOPY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@NPY_ITER_VIRTUAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"writeonly\00", align 1
@NPY_ITER_WRITEONLY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"writemasked\00", align 1
@NPY_ITER_WRITEMASKED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"Unexpected per-op iterator flag \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @NpyIter_OpFlagsConverter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NpyIter_OpFlagsConverter(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @PyTuple_Check(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @PyList_Check(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @PyExc_ValueError, align 4
  %22 = call i32 @PyErr_SetString(i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %236

23:                                               ; preds = %16, %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PySequence_Size(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %232, %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %235

31:                                               ; preds = %27
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32* @PySequence_GetItem(i32* %32, i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %236

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @PyUnicode_Check(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @PyUnicode_AsASCIIString(i32* %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @Py_DECREF(i32* %48)
  store i32 0, i32* %3, align 4
  br label %236

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @Py_DECREF(i32* %51)
  %53 = load i32*, i32** %12, align 8
  store i32* %53, i32** %9, align 8
  br label %54

54:                                               ; preds = %50, %38
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @PyBytes_AsStringAndSize(i32* %55, i8** %10, i32* %11)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = call i32 (...) @PyErr_Clear()
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  %62 = load i32, i32* @PyExc_ValueError, align 4
  %63 = call i32 @PyErr_SetString(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %236

64:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %215 [
    i32 97, label %69
    i32 99, label %100
    i32 110, label %113
    i32 111, label %140
    i32 114, label %147
    i32 117, label %171
    i32 118, label %184
    i32 119, label %191
  ]

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  switch i32 %76, label %98 [
    i32 105, label %77
    i32 108, label %84
    i32 114, label %91
  ]

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @NPY_ITER_ALIGNED, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %98

84:                                               ; preds = %72
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @NPY_ITER_ALLOCATE, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %84
  br label %98

91:                                               ; preds = %72
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @NPY_ITER_ARRAYMASK, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %72, %97, %90, %83
  br label %99

99:                                               ; preds = %98, %69
  br label %215

100:                                              ; preds = %64
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @NPY_ITER_COPY, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @NPY_ITER_CONTIG, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %106
  br label %215

113:                                              ; preds = %64
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  switch i32 %117, label %139 [
    i32 98, label %118
    i32 111, label %125
  ]

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @NPY_ITER_NBO, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %118
  br label %139

125:                                              ; preds = %113
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @NPY_ITER_NO_SUBTYPE, align 4
  store i32 %130, i32* %8, align 4
  br label %138

131:                                              ; preds = %125
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @NPY_ITER_NO_BROADCAST, align 4
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %135, %131
  br label %138

138:                                              ; preds = %137, %129
  br label %139

139:                                              ; preds = %113, %138, %124
  br label %215

140:                                              ; preds = %64
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %144, %140
  br label %215

147:                                              ; preds = %64
  %148 = load i32, i32* %11, align 4
  %149 = icmp sgt i32 %148, 4
  br i1 %149, label %150, label %170

150:                                              ; preds = %147
  %151 = load i8*, i8** %10, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  switch i32 %154, label %169 [
    i32 111, label %155
    i32 119, label %162
  ]

155:                                              ; preds = %150
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @NPY_ITER_READONLY, align 4
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %159, %155
  br label %169

162:                                              ; preds = %150
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @NPY_ITER_READWRITE, align 4
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %166, %162
  br label %169

169:                                              ; preds = %150, %168, %161
  br label %170

170:                                              ; preds = %169, %147
  br label %215

171:                                              ; preds = %64
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  switch i32 %175, label %183 [
    i32 112, label %176
  ]

176:                                              ; preds = %171
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @NPY_ITER_UPDATEIFCOPY, align 4
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %180, %176
  br label %183

183:                                              ; preds = %171, %182
  br label %215

184:                                              ; preds = %64
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @NPY_ITER_VIRTUAL, align 4
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %188, %184
  br label %215

191:                                              ; preds = %64
  %192 = load i32, i32* %11, align 4
  %193 = icmp sgt i32 %192, 5
  br i1 %193, label %194, label %214

194:                                              ; preds = %191
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 5
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  switch i32 %198, label %213 [
    i32 111, label %199
    i32 109, label %206
  ]

199:                                              ; preds = %194
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i32, i32* @NPY_ITER_WRITEONLY, align 4
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %203, %199
  br label %213

206:                                              ; preds = %194
  %207 = load i8*, i8** %10, align 8
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @NPY_ITER_WRITEMASKED, align 4
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %210, %206
  br label %213

213:                                              ; preds = %194, %212, %205
  br label %214

214:                                              ; preds = %213, %191
  br label %215

215:                                              ; preds = %64, %214, %190, %183, %170, %146, %139, %112, %99
  %216 = load i32, i32* %8, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i32, i32* @PyExc_ValueError, align 4
  %220 = load i8*, i8** %10, align 8
  %221 = call i32 @PyErr_Format(i32 %219, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* %220)
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @Py_DECREF(i32* %222)
  store i32 0, i32* %3, align 4
  br label %236

224:                                              ; preds = %215
  %225 = load i32, i32* %8, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %225
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %224
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @Py_DECREF(i32* %230)
  br label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %27

235:                                              ; preds = %27
  store i32 1, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %218, %58, %47, %37, %20
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyList_Check(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PySequence_Size(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyBytes_AsStringAndSize(i32*, i8**, i32*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
