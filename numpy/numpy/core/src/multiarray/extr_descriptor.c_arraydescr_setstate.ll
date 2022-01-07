; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_setstate.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_61__ = type { i32, i8, i32, i32, i8, %struct.TYPE_61__*, i64, i32, %struct.TYPE_61__*, %struct.TYPE_61__*, %struct.TYPE_63__* }
%struct.TYPE_63__ = type { %struct.TYPE_61__*, %struct.TYPE_61__* }
%struct.TYPE_62__ = type { i32 }

@Py_None = common dso_local global %struct.TYPE_61__* null, align 8
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(iOOOOiiiO):__setstate__\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"(iOOOOiii):__setstate__\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"(iOOOOii):__setstate__\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(iOOOii):__setstate__\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(OOOii):__setstate__\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"can't handle version %d of numpy.dtype pickle\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"endian is not 1-char string in Numpy dtype unpickling\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"endian is not a string in Numpy dtype unpickling\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"inconsistent fields and names in Numpy dtype unpickling\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"non-tuple names in Numpy dtype unpickling\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"non-dict fields in Numpy dtype unpickling\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"incorrect subarray in __setstate__\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"incorrect subarray shape in __setstate__\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"non-string names in Numpy dtype unpickling\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"incorrect value for flags variable (overflow)\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Invalid datetime dtype (metadata, c_metadata): \00", align 1
@NPY_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_61__* (%struct.TYPE_61__*, %struct.TYPE_61__*)* @arraydescr_setstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_61__* @arraydescr_setstate(%struct.TYPE_61__* %0, %struct.TYPE_61__* %1) #0 {
  %3 = alloca %struct.TYPE_61__*, align 8
  %4 = alloca %struct.TYPE_61__*, align 8
  %5 = alloca %struct.TYPE_61__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_61__*, align 8
  %11 = alloca %struct.TYPE_61__*, align 8
  %12 = alloca %struct.TYPE_61__*, align 8
  %13 = alloca %struct.TYPE_61__*, align 8
  %14 = alloca %struct.TYPE_61__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca %struct.TYPE_61__*, align 8
  %19 = alloca %struct.TYPE_61__*, align 8
  %20 = alloca %struct.TYPE_61__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_61__*, align 8
  %24 = alloca %struct.TYPE_61__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_61__*, align 8
  %28 = alloca %struct.TYPE_61__*, align 8
  %29 = alloca %struct.TYPE_61__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_61__*, align 8
  store %struct.TYPE_61__* %0, %struct.TYPE_61__** %4, align 8
  store %struct.TYPE_61__* %1, %struct.TYPE_61__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 4, i32* %8, align 4
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %13, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %14, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %32 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_61__*, %struct.TYPE_61__** %33, align 8
  %35 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %36 = icmp eq %struct.TYPE_61__* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %39

39:                                               ; preds = %37, %2
  %40 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %41 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_61__* %40)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %45 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %44, i32 0)
  %46 = call i64 @PyTuple_Check(%struct.TYPE_61__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43, %39
  %49 = call i32 (...) @PyErr_BadInternalCall()
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

50:                                               ; preds = %43
  %51 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %52 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %51, i32 0)
  %53 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_61__* %52)
  switch i32 %53, label %85 [
    i32 9, label %54
    i32 8, label %61
    i32 7, label %67
    i32 6, label %73
    i32 5, label %79
  ]

54:                                               ; preds = %50
  %55 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %56 = call i32 (%struct.TYPE_61__*, i8*, ...) @PyArg_ParseTuple(%struct.TYPE_61__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %8, %struct.TYPE_61__** %10, %struct.TYPE_61__** %11, %struct.TYPE_61__** %13, %struct.TYPE_61__** %12, i32* %6, i32* %7, i32* %16, %struct.TYPE_61__** %14)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (...) @PyErr_Clear()
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

60:                                               ; preds = %54
  br label %96

61:                                               ; preds = %50
  %62 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %63 = call i32 (%struct.TYPE_61__*, i8*, ...) @PyArg_ParseTuple(%struct.TYPE_61__* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %8, %struct.TYPE_61__** %10, %struct.TYPE_61__** %11, %struct.TYPE_61__** %13, %struct.TYPE_61__** %12, i32* %6, i32* %7, i32* %16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

66:                                               ; preds = %61
  br label %96

67:                                               ; preds = %50
  %68 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %69 = call i32 (%struct.TYPE_61__*, i8*, ...) @PyArg_ParseTuple(%struct.TYPE_61__* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %8, %struct.TYPE_61__** %10, %struct.TYPE_61__** %11, %struct.TYPE_61__** %13, %struct.TYPE_61__** %12, i32* %6, i32* %7)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

72:                                               ; preds = %67
  br label %96

73:                                               ; preds = %50
  %74 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %75 = call i32 (%struct.TYPE_61__*, i8*, ...) @PyArg_ParseTuple(%struct.TYPE_61__* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %8, %struct.TYPE_61__** %10, %struct.TYPE_61__** %11, %struct.TYPE_61__** %12, i32* %6, i32* %7)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

78:                                               ; preds = %73
  br label %96

79:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  %80 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %81 = call i32 (%struct.TYPE_61__*, i8*, ...) @PyArg_ParseTuple(%struct.TYPE_61__* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_61__** %10, %struct.TYPE_61__** %11, %struct.TYPE_61__** %12, i32* %6, i32* %7)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

84:                                               ; preds = %79
  br label %96

85:                                               ; preds = %50
  %86 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %87 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %86, i32 0)
  %88 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_61__* %87)
  %89 = icmp sgt i32 %88, 5
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %92 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %91, i32 0)
  %93 = call i32 @PyInt_AsLong(%struct.TYPE_61__* %92)
  store i32 %93, i32* %8, align 4
  br label %95

94:                                               ; preds = %85
  store i32 -1, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %90
  br label %96

96:                                               ; preds = %95, %84, %78, %72, %66, %60
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 4
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %96
  %103 = load i32, i32* @PyExc_ValueError, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

106:                                              ; preds = %99
  %107 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %107, i32 0, i32 0
  store i32 -1, i32* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %111, %106
  %115 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %116 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %117 = icmp ne %struct.TYPE_61__* %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = call %struct.TYPE_61__* @PyInt_FromLong(i32 -1)
  store %struct.TYPE_61__* %119, %struct.TYPE_61__** %18, align 8
  %120 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %121 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %122 = call %struct.TYPE_61__* @PyDict_GetItem(%struct.TYPE_61__* %120, %struct.TYPE_61__* %121)
  store %struct.TYPE_61__* %122, %struct.TYPE_61__** %19, align 8
  %123 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %124 = icmp ne %struct.TYPE_61__* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

126:                                              ; preds = %118
  %127 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %128 = call i32 @Py_INCREF(%struct.TYPE_61__* %127)
  %129 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  store %struct.TYPE_61__* %129, %struct.TYPE_61__** %13, align 8
  %130 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %131 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %132 = call i32 @PyDict_DelItem(%struct.TYPE_61__* %130, %struct.TYPE_61__* %131)
  store i32 0, i32* %15, align 4
  br label %135

133:                                              ; preds = %114
  %134 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  store %struct.TYPE_61__* %134, %struct.TYPE_61__** %13, align 8
  br label %135

135:                                              ; preds = %133, %126
  br label %136

136:                                              ; preds = %135, %111
  %137 = load %struct.TYPE_61__*, %struct.TYPE_61__** %10, align 8
  %138 = call i64 @PyUnicode_Check(%struct.TYPE_61__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load %struct.TYPE_61__*, %struct.TYPE_61__** %10, align 8
  %142 = call i64 @PyBytes_Check(%struct.TYPE_61__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %140, %136
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %20, align 8
  %145 = load %struct.TYPE_61__*, %struct.TYPE_61__** %10, align 8
  %146 = call i64 @PyUnicode_Check(%struct.TYPE_61__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %10, align 8
  %150 = call %struct.TYPE_61__* @PyUnicode_AsASCIIString(%struct.TYPE_61__* %149)
  store %struct.TYPE_61__* %150, %struct.TYPE_61__** %20, align 8
  %151 = load %struct.TYPE_61__*, %struct.TYPE_61__** %20, align 8
  %152 = icmp eq %struct.TYPE_61__* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

154:                                              ; preds = %148
  %155 = load %struct.TYPE_61__*, %struct.TYPE_61__** %20, align 8
  store %struct.TYPE_61__* %155, %struct.TYPE_61__** %10, align 8
  br label %156

156:                                              ; preds = %154, %144
  %157 = load %struct.TYPE_61__*, %struct.TYPE_61__** %10, align 8
  %158 = call i64 @PyBytes_AsStringAndSize(%struct.TYPE_61__* %157, i8** %21, i32* %22)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.TYPE_61__*, %struct.TYPE_61__** %20, align 8
  %162 = call i32 @Py_XDECREF(%struct.TYPE_61__* %161)
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

163:                                              ; preds = %156
  %164 = load i32, i32* %22, align 4
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i32, i32* @PyExc_ValueError, align 4
  %168 = call i32 @PyErr_SetString(i32 %167, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %169 = load %struct.TYPE_61__*, %struct.TYPE_61__** %20, align 8
  %170 = call i32 @Py_XDECREF(%struct.TYPE_61__* %169)
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

171:                                              ; preds = %163
  %172 = load i8*, i8** %21, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  store i8 %174, i8* %9, align 1
  %175 = load %struct.TYPE_61__*, %struct.TYPE_61__** %20, align 8
  %176 = call i32 @Py_XDECREF(%struct.TYPE_61__* %175)
  br label %180

177:                                              ; preds = %140
  %178 = load i32, i32* @PyExc_ValueError, align 4
  %179 = call i32 @PyErr_SetString(i32 %178, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

180:                                              ; preds = %171
  %181 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %182 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %183 = icmp eq %struct.TYPE_61__* %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %186 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %187 = icmp ne %struct.TYPE_61__* %185, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %184, %180
  %189 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %190 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %191 = icmp eq %struct.TYPE_61__* %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %194 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %195 = icmp ne %struct.TYPE_61__* %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192, %184
  %197 = load i32, i32* @PyExc_ValueError, align 4
  %198 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %197, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

199:                                              ; preds = %192, %188
  %200 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %201 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %202 = icmp ne %struct.TYPE_61__* %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %205 = call i64 @PyTuple_Check(%struct.TYPE_61__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* @PyExc_ValueError, align 4
  %209 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %208, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

210:                                              ; preds = %203, %199
  %211 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %212 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %213 = icmp ne %struct.TYPE_61__* %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %216 = call i32 @PyDict_Check(%struct.TYPE_61__* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* @PyExc_ValueError, align 4
  %220 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %219, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

221:                                              ; preds = %214, %210
  %222 = load i8, i8* %9, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp ne i32 %223, 124
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = load i8, i8* %9, align 1
  %227 = call i64 @PyArray_IsNativeByteOrder(i8 signext %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i8 61, i8* %9, align 1
  br label %230

230:                                              ; preds = %229, %225, %221
  %231 = load i8, i8* %9, align 1
  %232 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %232, i32 0, i32 1
  store i8 %231, i8* %233, align 4
  %234 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %234, i32 0, i32 10
  %236 = load %struct.TYPE_63__*, %struct.TYPE_63__** %235, align 8
  %237 = icmp ne %struct.TYPE_63__* %236, null
  br i1 %237, label %238, label %255

238:                                              ; preds = %230
  %239 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %239, i32 0, i32 10
  %241 = load %struct.TYPE_63__*, %struct.TYPE_63__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_61__*, %struct.TYPE_61__** %242, align 8
  %244 = call i32 @Py_XDECREF(%struct.TYPE_61__* %243)
  %245 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %245, i32 0, i32 10
  %247 = load %struct.TYPE_63__*, %struct.TYPE_63__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_61__*, %struct.TYPE_61__** %248, align 8
  %250 = call i32 @Py_XDECREF(%struct.TYPE_61__* %249)
  %251 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %251, i32 0, i32 10
  %253 = load %struct.TYPE_63__*, %struct.TYPE_63__** %252, align 8
  %254 = call i32 @PyArray_free(%struct.TYPE_63__* %253)
  br label %255

255:                                              ; preds = %238, %230
  %256 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %256, i32 0, i32 10
  store %struct.TYPE_63__* null, %struct.TYPE_63__** %257, align 8
  %258 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %259 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %260 = icmp ne %struct.TYPE_61__* %258, %259
  br i1 %260, label %261, label %336

261:                                              ; preds = %255
  %262 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %263 = call i64 @PyTuple_Check(%struct.TYPE_61__* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %261
  %266 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %267 = call i32 @PyTuple_Size(%struct.TYPE_61__* %266)
  %268 = icmp eq i32 %267, 2
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %271 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %270, i32 0)
  %272 = call i64 @PyArray_DescrCheck(%struct.TYPE_61__* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %269, %265, %261
  %275 = load i32, i32* @PyExc_ValueError, align 4
  %276 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %275, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

277:                                              ; preds = %269
  %278 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %279 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %278, i32 1)
  store %struct.TYPE_61__* %279, %struct.TYPE_61__** %23, align 8
  %280 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %281 = call i64 @PyNumber_Check(%struct.TYPE_61__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %277
  %284 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %285 = call %struct.TYPE_61__* @PyNumber_Int(%struct.TYPE_61__* %284)
  store %struct.TYPE_61__* %285, %struct.TYPE_61__** %24, align 8
  %286 = load %struct.TYPE_61__*, %struct.TYPE_61__** %24, align 8
  %287 = icmp eq %struct.TYPE_61__* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

289:                                              ; preds = %283
  %290 = load %struct.TYPE_61__*, %struct.TYPE_61__** %24, align 8
  %291 = call %struct.TYPE_61__* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_61__* %290)
  store %struct.TYPE_61__* %291, %struct.TYPE_61__** %23, align 8
  %292 = load %struct.TYPE_61__*, %struct.TYPE_61__** %24, align 8
  %293 = call i32 @Py_DECREF(%struct.TYPE_61__* %292)
  %294 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %295 = icmp eq %struct.TYPE_61__* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

297:                                              ; preds = %289
  br label %309

298:                                              ; preds = %277
  %299 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %300 = call i64 @_is_tuple_of_integers(%struct.TYPE_61__* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %298
  %303 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %304 = call i32 @Py_INCREF(%struct.TYPE_61__* %303)
  br label %308

305:                                              ; preds = %298
  %306 = load i32, i32* @PyExc_ValueError, align 4
  %307 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %306, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

308:                                              ; preds = %302
  br label %309

309:                                              ; preds = %308, %297
  %310 = call %struct.TYPE_63__* @PyArray_malloc(i32 4)
  %311 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %311, i32 0, i32 10
  store %struct.TYPE_63__* %310, %struct.TYPE_63__** %312, align 8
  %313 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %314 = call i32 @PyDataType_HASSUBARRAY(%struct.TYPE_61__* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %318, label %316

316:                                              ; preds = %309
  %317 = call %struct.TYPE_61__* (...) @PyErr_NoMemory()
  store %struct.TYPE_61__* %317, %struct.TYPE_61__** %3, align 8
  br label %497

318:                                              ; preds = %309
  %319 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %320 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %319, i32 0)
  %321 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %321, i32 0, i32 10
  %323 = load %struct.TYPE_63__*, %struct.TYPE_63__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %323, i32 0, i32 1
  store %struct.TYPE_61__* %320, %struct.TYPE_61__** %324, align 8
  %325 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %325, i32 0, i32 10
  %327 = load %struct.TYPE_63__*, %struct.TYPE_63__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_61__*, %struct.TYPE_61__** %328, align 8
  %330 = call i32 @Py_INCREF(%struct.TYPE_61__* %329)
  %331 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %332 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %332, i32 0, i32 10
  %334 = load %struct.TYPE_63__*, %struct.TYPE_63__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %334, i32 0, i32 0
  store %struct.TYPE_61__* %331, %struct.TYPE_61__** %335, align 8
  br label %336

336:                                              ; preds = %318, %255
  %337 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %338 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %339 = icmp ne %struct.TYPE_61__* %337, %338
  br i1 %339, label %340, label %388

340:                                              ; preds = %336
  store i32 1, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %341

341:                                              ; preds = %355, %340
  %342 = load i32, i32* %25, align 4
  %343 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %344 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_61__* %343)
  %345 = icmp slt i32 %342, %344
  br i1 %345, label %346, label %358

346:                                              ; preds = %341
  %347 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %348 = load i32, i32* %25, align 4
  %349 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %347, i32 %348)
  store %struct.TYPE_61__* %349, %struct.TYPE_61__** %27, align 8
  %350 = load %struct.TYPE_61__*, %struct.TYPE_61__** %27, align 8
  %351 = call i32 @PyUString_Check(%struct.TYPE_61__* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %346
  store i32 0, i32* %26, align 4
  br label %358

354:                                              ; preds = %346
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %25, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %25, align 4
  br label %341

358:                                              ; preds = %353, %341
  %359 = load i32, i32* %26, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %384

361:                                              ; preds = %358
  %362 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %362, i32 0, i32 8
  %364 = load %struct.TYPE_61__*, %struct.TYPE_61__** %363, align 8
  %365 = call i32 @Py_XDECREF(%struct.TYPE_61__* %364)
  %366 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %367 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %367, i32 0, i32 8
  store %struct.TYPE_61__* %366, %struct.TYPE_61__** %368, align 8
  %369 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %370 = call i32 @Py_INCREF(%struct.TYPE_61__* %369)
  %371 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %371, i32 0, i32 9
  %373 = load %struct.TYPE_61__*, %struct.TYPE_61__** %372, align 8
  %374 = call i32 @Py_XDECREF(%struct.TYPE_61__* %373)
  %375 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %376 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %376, i32 0, i32 9
  store %struct.TYPE_61__* %375, %struct.TYPE_61__** %377, align 8
  %378 = load i32, i32* %15, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %361
  %381 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %382 = call i32 @Py_INCREF(%struct.TYPE_61__* %381)
  br label %383

383:                                              ; preds = %380, %361
  br label %387

384:                                              ; preds = %358
  %385 = load i32, i32* @PyExc_ValueError, align 4
  %386 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %385, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

387:                                              ; preds = %383
  br label %388

388:                                              ; preds = %387, %336
  %389 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %389, i32 0, i32 7
  %391 = load i32, i32* %390, align 8
  %392 = call i64 @PyTypeNum_ISEXTENDED(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %388
  %395 = load i32, i32* %6, align 4
  %396 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %396, i32 0, i32 2
  store i32 %395, i32* %397, align 8
  %398 = load i32, i32* %7, align 4
  %399 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %399, i32 0, i32 3
  store i32 %398, i32* %400, align 4
  br label %401

401:                                              ; preds = %394, %388
  %402 = load i32, i32* %16, align 4
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %17, align 1
  %404 = load i8, i8* %17, align 1
  %405 = sext i8 %404 to i32
  %406 = load i32, i32* %16, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %401
  %409 = load i32, i32* @PyExc_ValueError, align 4
  %410 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %409, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

411:                                              ; preds = %401
  %412 = load i8, i8* %17, align 1
  %413 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %413, i32 0, i32 4
  store i8 %412, i8* %414, align 8
  br label %415

415:                                              ; preds = %411
  %416 = load i32, i32* %8, align 4
  %417 = icmp slt i32 %416, 3
  br i1 %417, label %418, label %423

418:                                              ; preds = %415
  %419 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %420 = call signext i8 @_descr_find_object(%struct.TYPE_61__* %419)
  %421 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %421, i32 0, i32 4
  store i8 %420, i8* %422, align 8
  br label %423

423:                                              ; preds = %418, %415
  %424 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %425 = load %struct.TYPE_61__*, %struct.TYPE_61__** @Py_None, align 8
  %426 = icmp eq %struct.TYPE_61__* %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %423
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %14, align 8
  br label %428

428:                                              ; preds = %427, %423
  %429 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %430 = call i64 @PyDataType_ISDATETIME(%struct.TYPE_61__* %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %482

432:                                              ; preds = %428
  %433 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %434 = icmp ne %struct.TYPE_61__* %433, null
  br i1 %434, label %435, label %482

435:                                              ; preds = %432
  %436 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %437 = call i64 @PyTuple_Check(%struct.TYPE_61__* %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %435
  %440 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %441 = call i32 @PyTuple_Size(%struct.TYPE_61__* %440)
  %442 = icmp ne i32 %441, 2
  br i1 %442, label %443, label %453

443:                                              ; preds = %439, %435
  %444 = call %struct.TYPE_61__* @PyUString_FromString(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0))
  store %struct.TYPE_61__* %444, %struct.TYPE_61__** %29, align 8
  %445 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %446 = call i32 @PyObject_Repr(%struct.TYPE_61__* %445)
  %447 = call i32 @PyUString_ConcatAndDel(%struct.TYPE_61__** %29, i32 %446)
  %448 = load i32, i32* @PyExc_ValueError, align 4
  %449 = load %struct.TYPE_61__*, %struct.TYPE_61__** %29, align 8
  %450 = call i32 @PyErr_SetObject(i32 %448, %struct.TYPE_61__* %449)
  %451 = load %struct.TYPE_61__*, %struct.TYPE_61__** %29, align 8
  %452 = call i32 @Py_DECREF(%struct.TYPE_61__* %451)
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

453:                                              ; preds = %439
  %454 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %455 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %454, i32 1)
  %456 = load i32, i32* @NPY_TRUE, align 4
  %457 = call i64 @convert_datetime_metadata_tuple_to_datetime_metadata(%struct.TYPE_61__* %455, i32* %30, i32 %456)
  %458 = icmp slt i64 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %453
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %3, align 8
  br label %497

460:                                              ; preds = %453
  %461 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %461, i32 0, i32 5
  %463 = load %struct.TYPE_61__*, %struct.TYPE_61__** %462, align 8
  store %struct.TYPE_61__* %463, %struct.TYPE_61__** %28, align 8
  %464 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %465 = call %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__* %464, i32 0)
  %466 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %466, i32 0, i32 5
  store %struct.TYPE_61__* %465, %struct.TYPE_61__** %467, align 8
  %468 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %468, i32 0, i32 6
  %470 = load i64, i64* %469, align 8
  %471 = inttoptr i64 %470 to %struct.TYPE_62__*
  %472 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %471, i32 0, i32 0
  %473 = bitcast i32* %472 to i8*
  %474 = bitcast i32* %30 to i8*
  %475 = call i32 @memcpy(i8* %473, i8* %474, i32 4)
  %476 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %476, i32 0, i32 5
  %478 = load %struct.TYPE_61__*, %struct.TYPE_61__** %477, align 8
  %479 = call i32 @Py_XINCREF(%struct.TYPE_61__* %478)
  %480 = load %struct.TYPE_61__*, %struct.TYPE_61__** %28, align 8
  %481 = call i32 @Py_XDECREF(%struct.TYPE_61__* %480)
  br label %495

482:                                              ; preds = %432, %428
  %483 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %483, i32 0, i32 5
  %485 = load %struct.TYPE_61__*, %struct.TYPE_61__** %484, align 8
  store %struct.TYPE_61__* %485, %struct.TYPE_61__** %31, align 8
  %486 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %487 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %487, i32 0, i32 5
  store %struct.TYPE_61__* %486, %struct.TYPE_61__** %488, align 8
  %489 = load %struct.TYPE_61__*, %struct.TYPE_61__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %489, i32 0, i32 5
  %491 = load %struct.TYPE_61__*, %struct.TYPE_61__** %490, align 8
  %492 = call i32 @Py_XINCREF(%struct.TYPE_61__* %491)
  %493 = load %struct.TYPE_61__*, %struct.TYPE_61__** %31, align 8
  %494 = call i32 @Py_XDECREF(%struct.TYPE_61__* %493)
  br label %495

495:                                              ; preds = %482, %460
  %496 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %497

497:                                              ; preds = %495, %459, %443, %408, %384, %316, %305, %296, %288, %274, %218, %207, %196, %177, %166, %160, %153, %125, %102, %83, %77, %71, %65, %58, %48
  %498 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  ret %struct.TYPE_61__* %498
}

declare dso_local i32 @PyTuple_GET_SIZE(%struct.TYPE_61__*) #1

declare dso_local i64 @PyTuple_Check(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @PyTuple_GET_ITEM(%struct.TYPE_61__*, i32) #1

declare dso_local i32 @PyErr_BadInternalCall(...) #1

declare dso_local i32 @PyArg_ParseTuple(%struct.TYPE_61__*, i8*, ...) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PyInt_AsLong(%struct.TYPE_61__*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, ...) #1

declare dso_local %struct.TYPE_61__* @PyInt_FromLong(i32) #1

declare dso_local %struct.TYPE_61__* @PyDict_GetItem(%struct.TYPE_61__*, %struct.TYPE_61__*) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_61__*) #1

declare dso_local i32 @PyDict_DelItem(%struct.TYPE_61__*, %struct.TYPE_61__*) #1

declare dso_local i64 @PyUnicode_Check(%struct.TYPE_61__*) #1

declare dso_local i64 @PyBytes_Check(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @PyUnicode_AsASCIIString(%struct.TYPE_61__*) #1

declare dso_local i64 @PyBytes_AsStringAndSize(%struct.TYPE_61__*, i8**, i32*) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_61__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyDict_Check(%struct.TYPE_61__*) #1

declare dso_local i64 @PyArray_IsNativeByteOrder(i8 signext) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_63__*) #1

declare dso_local i32 @PyTuple_Size(%struct.TYPE_61__*) #1

declare dso_local i64 @PyArray_DescrCheck(%struct.TYPE_61__*) #1

declare dso_local i64 @PyNumber_Check(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @PyNumber_Int(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @Py_BuildValue(i8*, %struct.TYPE_61__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_61__*) #1

declare dso_local i64 @_is_tuple_of_integers(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_63__* @PyArray_malloc(i32) #1

declare dso_local i32 @PyDataType_HASSUBARRAY(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @PyErr_NoMemory(...) #1

declare dso_local i32 @PyUString_Check(%struct.TYPE_61__*) #1

declare dso_local i64 @PyTypeNum_ISEXTENDED(i32) #1

declare dso_local signext i8 @_descr_find_object(%struct.TYPE_61__*) #1

declare dso_local i64 @PyDataType_ISDATETIME(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_61__* @PyUString_FromString(i8*) #1

declare dso_local i32 @PyUString_ConcatAndDel(%struct.TYPE_61__**, i32) #1

declare dso_local i32 @PyObject_Repr(%struct.TYPE_61__*) #1

declare dso_local i32 @PyErr_SetObject(i32, %struct.TYPE_61__*) #1

declare dso_local i64 @convert_datetime_metadata_tuple_to_datetime_metadata(%struct.TYPE_61__*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @Py_XINCREF(%struct.TYPE_61__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
