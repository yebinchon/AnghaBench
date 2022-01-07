; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c_array_getbuffer.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c_array_getbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8**, i32*, i8**, i8*, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i8**, i8**, i32* }

@PyBUF_C_CONTIGUOUS = common dso_local global i32 0, align 4
@NPY_ARRAY_C_CONTIGUOUS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ndarray is not C-contiguous\00", align 1
@PyBUF_F_CONTIGUOUS = common dso_local global i32 0, align 4
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ndarray is not Fortran contiguous\00", align 1
@PyBUF_ANY_CONTIGUOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ndarray is not contiguous\00", align 1
@PyBUF_STRIDES = common dso_local global i32 0, align 4
@PyBUF_WRITEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"buffer source array\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"NULL view in getbuffer\00", align 1
@NPY_ARRAY_WARN_ON_WRITE = common dso_local global i32 0, align 4
@PyBUF_FORMAT = common dso_local global i32 0, align 4
@PyBUF_ND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32)* @array_getbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_getbuffer(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PyBUF_C_CONTIGUOUS, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PyBUF_C_CONTIGUOUS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %19 = call i64 @PyArray_CHKFLAGS(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @PyExc_ValueError, align 4
  %23 = call i32 @PyErr_SetString(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %176

24:                                               ; preds = %16, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PyBUF_F_CONTIGUOUS, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PyBUF_F_CONTIGUOUS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %33 = call i64 @PyArray_CHKFLAGS(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @PyExc_ValueError, align 4
  %37 = call i32 @PyErr_SetString(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %176

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PyBUF_ANY_CONTIGUOUS, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @PyBUF_ANY_CONTIGUOUS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @PyArray_ISONESEGMENT(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @PyExc_ValueError, align 4
  %50 = call i32 @PyErr_SetString(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %176

51:                                               ; preds = %44, %38
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PyBUF_STRIDES, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @PyBUF_STRIDES, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %60 = call i64 @PyArray_CHKFLAGS(i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @PyExc_ValueError, align 4
  %64 = call i32 @PyErr_SetString(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %176

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PyBUF_WRITEABLE, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @PyBUF_WRITEABLE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @PyArray_FailUnlessWriteable(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %176

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = icmp eq %struct.TYPE_6__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @PyExc_ValueError, align 4
  %82 = call i32 @PyErr_SetString(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %176

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = call %struct.TYPE_5__* @_buffer_get_info(i32* %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %9, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = icmp eq %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %176

89:                                               ; preds = %83
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @PyArray_DATA(i32* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 9
  store i32* null, i32** %95, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i8* @PyArray_ITEMSIZE(i32* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @PyArray_ISWRITEABLE(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* @NPY_ARRAY_WARN_ON_WRITE, align 4
  %106 = call i64 @PyArray_CHKFLAGS(i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %103, %89
  %109 = phi i1 [ true, %89 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 8
  store i32* null, i32** %114, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @PyArray_NBYTES(i32* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @PyBUF_FORMAT, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @PyBUF_FORMAT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %108
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  store i32* %127, i32** %129, align 8
  br label %133

130:                                              ; preds = %108
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @PyBUF_ND, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @PyBUF_ND, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i8**, i8*** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  store i8** %147, i8*** %149, align 8
  br label %155

150:                                              ; preds = %133
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i8** null, i8*** %154, align 8
  br label %155

155:                                              ; preds = %150, %139
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @PyBUF_STRIDES, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @PyBUF_STRIDES, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i8**, i8*** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  store i8** %164, i8*** %166, align 8
  br label %170

167:                                              ; preds = %155
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i8** null, i8*** %169, align 8
  br label %170

170:                                              ; preds = %167, %161
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  store i32* %171, i32** %173, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @Py_INCREF(i32* %174)
  store i32 0, i32* %4, align 4
  br label %177

176:                                              ; preds = %88, %80, %75, %62, %48, %35, %21
  store i32 -1, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %170
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @PyArray_CHKFLAGS(i32*, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArray_ISONESEGMENT(i32*) #1

declare dso_local i64 @PyArray_FailUnlessWriteable(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @_buffer_get_info(i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i8* @PyArray_ITEMSIZE(i32*) #1

declare dso_local i32 @PyArray_ISWRITEABLE(i32*) #1

declare dso_local i32 @PyArray_NBYTES(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
