; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_struct_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_struct_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@NPY_ARRAY_WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_UPDATEIFCOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_OWNDATA = common dso_local global i32 0, align 4
@NPY_ARRAY_NOTSWAPPED = common dso_local global i32 0, align 4
@NPY_ARR_HAS_DESCR = common dso_local global i32 0, align 4
@gentype_struct_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @array_struct_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_struct_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @PyArray_ISWRITEABLE(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @array_might_be_written(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %167

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %1
  %16 = call i64 @PyArray_malloc(i32 56)
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32* (...) @PyErr_NoMemory()
  store i32* %21, i32** %2, align 8
  br label %167

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @PyArray_NDIM(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_8__* @PyArray_DESCR(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_8__* @PyArray_DESCR(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @PyArray_FLAGS(i32* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %46 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @PyArray_ISNOTSWAPPED(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %22
  %59 = load i32, i32* @NPY_ARRAY_NOTSWAPPED, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %22
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @PyArray_NDIM(i32* %65)
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %64
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @PyArray_NDIM(i32* %69)
  %71 = sext i32 %70 to i64
  %72 = mul i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = call i64 @PyArray_malloc(i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 6
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = call i32 @PyArray_free(%struct.TYPE_7__* %83)
  %85 = call i32* (...) @PyErr_NoMemory()
  store i32* %85, i32** %2, align 8
  br label %167

86:                                               ; preds = %68
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @PyArray_NDIM(i32* %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  store i32* %93, i32** %95, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @PyArray_NDIM(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %86
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @PyArray_DIMS(i32* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @PyArray_NDIM(i32* %105)
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i32* %102, i32 %104, i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @PyArray_STRIDES(i32* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @PyArray_NDIM(i32* %116)
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memcpy(i32* %113, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %99, %86
  br label %128

123:                                              ; preds = %64
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  store i32* null, i32** %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %123, %122
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @PyArray_DATA(i32* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = call %struct.TYPE_8__* @PyArray_DESCR(i32* %133)
  %135 = call i64 @PyDataType_HASFIELDS(%struct.TYPE_8__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %128
  %138 = load i32*, i32** %3, align 8
  %139 = call %struct.TYPE_8__* @PyArray_DESCR(i32* %138)
  %140 = call i32* @arraydescr_protocol_descr_get(%struct.TYPE_8__* %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = call i32 (...) @PyErr_Clear()
  br label %155

149:                                              ; preds = %137
  %150 = load i32, i32* @NPY_ARR_HAS_DESCR, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %147
  br label %159

156:                                              ; preds = %128
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  store i32* null, i32** %158, align 8
  br label %159

159:                                              ; preds = %156, %155
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @Py_INCREF(i32* %160)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = load i32, i32* @gentype_struct_free, align 4
  %165 = call i32* @NpyCapsule_FromVoidPtrAndDesc(%struct.TYPE_7__* %162, i32* %163, i32 %164)
  store i32* %165, i32** %5, align 8
  %166 = load i32*, i32** %5, align 8
  store i32* %166, i32** %2, align 8
  br label %167

167:                                              ; preds = %159, %82, %20, %13
  %168 = load i32*, i32** %2, align 8
  ret i32* %168
}

declare dso_local i64 @PyArray_ISWRITEABLE(i32*) #1

declare dso_local i64 @array_might_be_written(i32*) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local %struct.TYPE_8__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

declare dso_local i64 @PyArray_ISNOTSWAPPED(i32*) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i64 @PyDataType_HASFIELDS(%struct.TYPE_8__*) #1

declare dso_local i32* @arraydescr_protocol_descr_get(%struct.TYPE_8__*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @NpyCapsule_FromVoidPtrAndDesc(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
