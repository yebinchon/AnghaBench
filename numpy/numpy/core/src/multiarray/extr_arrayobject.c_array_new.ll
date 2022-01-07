; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayobject.c_array_new.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayobject.c_array_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i32*, i32* }

@array_new.kwlist = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"strides\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@NPY_CORDER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"O&|O&O&LO&O&:ndarray\00", align 1
@PyArray_IntpConverter = common dso_local global i32 0, align 4
@PyArray_DescrConverter = common dso_local global i32 0, align 4
@PyArray_BufferConverter = common dso_local global i32 0, align 4
@PyArray_OrderConverter = common dso_local global i32 0, align 4
@NPY_FORTRANORDER = common dso_local global i64 0, align 8
@NPY_DEFAULT_TYPE = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"strides, if given, must be the same length as shape\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"strides is incompatible with shape of requested array and size of buffer\00", align 1
@NPY_ITEM_HASOBJECT = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"buffer is too small for requested array\00", align 1
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_new(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %19 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  store i64 0, i64* %13, align 8
  %21 = load i64, i64* @NPY_CORDER, align 8
  store i64 %21, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @PyArray_IntpConverter, align 4
  %26 = load i32, i32* @PyArray_DescrConverter, align 4
  %27 = load i32, i32* @PyArray_BufferConverter, align 4
  %28 = call i32 @PyArg_ParseTupleAndKeywords(i32* %23, i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @array_new.kwlist, i64 0, i64 0), i32 %25, %struct.TYPE_13__* %10, i32 %26, %struct.TYPE_14__** %8, i32 %27, %struct.TYPE_15__* %12, i64* %13, i32* @PyArray_IntpConverter, %struct.TYPE_13__* %11, i32* @PyArray_OrderConverter, i64* %14)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %197

31:                                               ; preds = %3
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @NPY_FORTRANORDER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %15, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = icmp eq %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @NPY_DEFAULT_TYPE, align 4
  %41 = call %struct.TYPE_14__* @PyArray_DescrFromType(i32 %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %8, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %84

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @PyExc_ValueError, align 4
  %57 = call i32 @PyErr_SetString(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %197

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %17, align 4
  %66 = load i64, i64* %13, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %63, %62
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @PyArray_CheckStrides(i32 %69, i32 %71, i32 %72, i32 %73, i32* %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* @PyExc_ValueError, align 4
  %82 = call i32 @PyErr_SetString(i32 %81, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  br label %197

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %42
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i64 @PyArray_NewFromDescr_int(i32* %89, %struct.TYPE_14__* %90, i32 %92, i32* %94, i32* %96, i8* null, i32 %97, i32* null, i32* null, i32 0, i32 1)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %16, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  br label %197

103:                                              ; preds = %88
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = load i32, i32* @NPY_ITEM_HASOBJECT, align 4
  %106 = call i64 @PyDataType_FLAGCHK(%struct.TYPE_14__* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* @Py_None, align 4
  %111 = call i32 @PyArray_FillObjectArray(i32* %109, i32 %110)
  %112 = call i64 (...) @PyErr_Occurred()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  br label %197

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %103
  br label %193

117:                                              ; preds = %84
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %13, align 8
  %131 = trunc i64 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = load i32, i32* %9, align 4
  %134 = sdiv i32 %132, %133
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %134, i32* %137, align 4
  br label %161

138:                                              ; preds = %121, %117
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %13, align 8
  %147 = load i32, i32* %9, align 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @PyArray_MultiplyList(i32* %149, i32 %151)
  %153 = mul nsw i32 %147, %152
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %146, %154
  %156 = icmp slt i64 %145, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %142
  %158 = load i32, i32* @PyExc_TypeError, align 4
  %159 = call i32 @PyErr_SetString(i32 %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %197

160:                                              ; preds = %142, %138
  br label %161

161:                                              ; preds = %160, %127
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %165
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = bitcast i32* %180 to i8*
  %182 = getelementptr inbounds i8, i8* %181, i64 %178
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i64 @PyArray_NewFromDescr_int(i32* %170, %struct.TYPE_14__* %171, i32 %173, i32* %175, i32* %177, i8* %182, i32 %184, i32* null, i32* %186, i32 0, i32 1)
  %188 = inttoptr i64 %187 to i32*
  store i32* %188, i32** %16, align 8
  %189 = load i32*, i32** %16, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %169
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  br label %197

192:                                              ; preds = %169
  br label %193

193:                                              ; preds = %192, %116
  %194 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %10)
  %195 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %11)
  %196 = load i32*, i32** %16, align 8
  store i32* %196, i32** %4, align 8
  br label %202

197:                                              ; preds = %191, %157, %114, %102, %80, %55, %30
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = call i32 @Py_XDECREF(%struct.TYPE_14__* %198)
  %200 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %10)
  %201 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %11)
  store i32* null, i32** %4, align 8
  br label %202

202:                                              ; preds = %197, %193
  %203 = load i32*, i32** %4, align 8
  ret i32* %203
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__**, i32, %struct.TYPE_15__*, i64*, i32*, %struct.TYPE_13__*, i32*, i64*) #2

declare dso_local %struct.TYPE_14__* @PyArray_DescrFromType(i32) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @PyArray_CheckStrides(i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i64 @PyArray_NewFromDescr_int(i32*, %struct.TYPE_14__*, i32, i32*, i32*, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @PyDataType_FLAGCHK(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @PyArray_FillObjectArray(i32*, i32) #2

declare dso_local i64 @PyErr_Occurred(...) #2

declare dso_local i32 @PyArray_MultiplyList(i32*, i32) #2

declare dso_local i32 @npy_free_cache_dim_obj(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8) #2

declare dso_local i32 @Py_XDECREF(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
