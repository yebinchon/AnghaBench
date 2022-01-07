; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime.c_recursive_find_object_datetime64_type.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime.c_recursive_find_object_datetime64_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }

@NPY_STRING = common dso_local global i64 0, align 8
@NPY_UNICODE = common dso_local global i64 0, align 8
@NPY_DATETIME = common dso_local global i64 0, align 8
@NPY_TIMEDELTA = common dso_local global i64 0, align 8
@NPY_OBJECT = common dso_local global i64 0, align 8
@Datetime = common dso_local global i32 0, align 4
@NPY_FR_ERROR = common dso_local global i32 0, align 4
@NPY_UNSAFE_CASTING = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@NPY_FR_us = common dso_local global i32 0, align 4
@NPY_FR_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c" in recursive_find_object_datetime64_type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*)* @recursive_find_object_datetime64_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_find_object_datetime64_type(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @PyArray_Check(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_14__* @PyArray_DESCR(i32* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NPY_STRING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NPY_UNICODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %21
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = call i32 @find_string_array_datetime64_type(i32* %37, %struct.TYPE_15__* %38)
  store i32 %39, i32* %3, align 4
  br label %206

40:                                               ; preds = %30
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NPY_DATETIME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NPY_TIMEDELTA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = call %struct.TYPE_15__* @get_datetime_metadata_from_dtype(%struct.TYPE_14__* %53)
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %8, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = icmp eq %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %206

58:                                               ; preds = %52
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = call i64 @compute_datetime_metadata_greatest_common_divisor(%struct.TYPE_15__* %59, %struct.TYPE_15__* %60, %struct.TYPE_15__* %61, i32 0, i32 0)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %206

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %206

66:                                               ; preds = %46
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NPY_OBJECT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %206

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %158

76:                                               ; preds = %2
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @Datetime, align 4
  %79 = call i64 @PyArray_IsScalar(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %9, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = call i64 @compute_datetime_metadata_greatest_common_divisor(%struct.TYPE_15__* %84, %struct.TYPE_15__* %86, %struct.TYPE_15__* %87, i32 0, i32 0)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %206

91:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %206

92:                                               ; preds = %76
  %93 = load i32*, i32** %4, align 8
  %94 = call i64 @PyBytes_Check(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @PyUnicode_Check(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %96, %92
  store i32 0, i32* %10, align 4
  %101 = load i32, i32* @NPY_FR_ERROR, align 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 1, i32* %103, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* @NPY_UNSAFE_CASTING, align 4
  %106 = call i64 @convert_pyobject_to_datetime(%struct.TYPE_15__* %11, i32* %104, i32 %105, i32* %10)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = call i64 (...) @PyErr_Occurred()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = call i64 (...) @PyErr_Occurred()
  %113 = load i32, i32* @PyExc_ValueError, align 4
  %114 = call i64 @PyErr_GivenExceptionMatches(i64 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (...) @PyErr_Clear()
  store i32 0, i32* %3, align 4
  br label %206

118:                                              ; preds = %111, %108
  store i32 -1, i32* %3, align 4
  br label %206

119:                                              ; preds = %100
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = call i64 @compute_datetime_metadata_greatest_common_divisor(%struct.TYPE_15__* %120, %struct.TYPE_15__* %11, %struct.TYPE_15__* %121, i32 0, i32 0)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 -1, i32* %3, align 4
  br label %206

125:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %206

126:                                              ; preds = %96
  %127 = load i32*, i32** %4, align 8
  %128 = call i64 @PyDateTime_Check(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i32, i32* @NPY_FR_us, align 4
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = call i64 @compute_datetime_metadata_greatest_common_divisor(%struct.TYPE_15__* %134, %struct.TYPE_15__* %12, %struct.TYPE_15__* %135, i32 0, i32 0)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 -1, i32* %3, align 4
  br label %206

139:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %206

140:                                              ; preds = %126
  %141 = load i32*, i32** %4, align 8
  %142 = call i64 @PyDate_Check(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i32, i32* @NPY_FR_D, align 4
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 1, i32* %147, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = call i64 @compute_datetime_metadata_greatest_common_divisor(%struct.TYPE_15__* %148, %struct.TYPE_15__* %13, %struct.TYPE_15__* %149, i32 0, i32 0)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 -1, i32* %3, align 4
  br label %206

153:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %206

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %75
  %159 = load i32*, i32** %4, align 8
  %160 = call i64 @PySequence_Check(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %205

162:                                              ; preds = %158
  %163 = load i32*, i32** %4, align 8
  %164 = call i64 @PySequence_Size(i32* %163)
  store i64 %164, i64* %15, align 8
  %165 = load i64, i64* %15, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = call i64 (...) @PyErr_Occurred()
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 -1, i32* %3, align 4
  br label %206

171:                                              ; preds = %167, %162
  store i64 0, i64* %14, align 8
  br label %172

172:                                              ; preds = %201, %171
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %172
  %177 = load i32*, i32** %4, align 8
  %178 = load i64, i64* %14, align 8
  %179 = call i32* @PySequence_GetItem(i32* %177, i64 %178)
  store i32* %179, i32** %17, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 -1, i32* %3, align 4
  br label %206

183:                                              ; preds = %176
  %184 = call i64 @Npy_EnterRecursiveCall(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32*, i32** %17, align 8
  %188 = call i32 @Py_DECREF(i32* %187)
  store i32 -1, i32* %3, align 4
  br label %206

189:                                              ; preds = %183
  %190 = load i32*, i32** %17, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = call i32 @recursive_find_object_datetime64_type(i32* %190, %struct.TYPE_15__* %191)
  store i32 %192, i32* %16, align 4
  %193 = call i32 (...) @Py_LeaveRecursiveCall()
  %194 = load i32*, i32** %17, align 8
  %195 = call i32 @Py_DECREF(i32* %194)
  %196 = load i32, i32* %16, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %3, align 4
  br label %206

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %14, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %14, align 8
  br label %172

204:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %206

205:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %204, %198, %186, %182, %170, %153, %152, %139, %138, %125, %124, %118, %116, %91, %90, %72, %65, %64, %57, %36
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local %struct.TYPE_14__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @find_string_array_datetime64_type(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @get_datetime_metadata_from_dtype(%struct.TYPE_14__*) #1

declare dso_local i64 @compute_datetime_metadata_greatest_common_divisor(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i64 @convert_pyobject_to_datetime(%struct.TYPE_15__*, i32*, i32, i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @PyErr_GivenExceptionMatches(i64, i32) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i64 @PyDateTime_Check(i32*) #1

declare dso_local i64 @PyDate_Check(i32*) #1

declare dso_local i64 @PySequence_Check(i32*) #1

declare dso_local i64 @PySequence_Size(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i64) #1

declare dso_local i64 @Npy_EnterRecursiveCall(i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_LeaveRecursiveCall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
