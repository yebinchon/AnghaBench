; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c__vec_string_with_args.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c__vec_string_with_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_32__**, i32, i32 }

@NPY_MAXARGS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"len(args) must be < %d\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"result array type does not match underlying function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*)* @_vec_string_with_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @_vec_string_with_args(%struct.TYPE_32__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__* %2, %struct.TYPE_32__* %3) #0 {
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca %struct.TYPE_32__*, align 8
  %22 = alloca %struct.TYPE_32__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  %24 = load i32, i32* @NPY_MAXARGS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca %struct.TYPE_32__*, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %12, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %13, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %14, align 8
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %29 = call i32 @PySequence_Size(%struct.TYPE_32__* %28)
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* @NPY_MAXARGS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33, %4
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = load i32, i32* @NPY_MAXARGS, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @PyErr_Format(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %43 = call i32 @Py_DECREF(%struct.TYPE_32__* %42)
  br label %180

44:                                               ; preds = %33
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %27, i64 0
  store %struct.TYPE_32__* %45, %struct.TYPE_32__** %46, align 16
  store i32 1, i32* %15, align 4
  br label %47

47:                                               ; preds = %68, %44
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call %struct.TYPE_32__* @PySequence_GetItem(%struct.TYPE_32__* %52, i32 %54)
  store %struct.TYPE_32__* %55, %struct.TYPE_32__** %18, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %57 = icmp eq %struct.TYPE_32__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %60 = call i32 @Py_DECREF(%struct.TYPE_32__* %59)
  br label %180

61:                                               ; preds = %51
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %27, i64 %64
  store %struct.TYPE_32__* %62, %struct.TYPE_32__** %65, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %67 = call i32 @Py_DECREF(%struct.TYPE_32__* %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %47

71:                                               ; preds = %47
  %72 = load i32, i32* %17, align 4
  %73 = call i64 @PyArray_MultiIterFromObjects(%struct.TYPE_32__** %27, i32 %72, i32 0)
  %74 = inttoptr i64 %73 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %74, %struct.TYPE_32__** %12, align 8
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %76 = icmp eq %struct.TYPE_32__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %79 = call i32 @Py_DECREF(%struct.TYPE_32__* %78)
  br label %180

80:                                               ; preds = %71
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %91 = call i64 @PyArray_SimpleNewFromDescr(i32 %86, i32 %89, %struct.TYPE_32__* %90)
  %92 = inttoptr i64 %91 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %92, %struct.TYPE_32__** %13, align 8
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %94 = icmp eq %struct.TYPE_32__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %180

96:                                               ; preds = %80
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %98 = call i64 @PyArray_IterNew(%struct.TYPE_32__* %97)
  %99 = inttoptr i64 %98 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %99, %struct.TYPE_32__** %14, align 8
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %101 = icmp eq %struct.TYPE_32__* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %180

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %167, %103
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %106 = call i64 @PyArray_MultiIter_NOTDONE(%struct.TYPE_32__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %174

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = call %struct.TYPE_32__* @PyTuple_New(i32 %109)
  store %struct.TYPE_32__* %110, %struct.TYPE_32__** %20, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %112 = icmp eq %struct.TYPE_32__* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %180

114:                                              ; preds = %108
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %143, %114
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %115
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %122, i64 %124
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %125, align 8
  store %struct.TYPE_32__* %126, %struct.TYPE_32__** %21, align 8
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %128 = call i32 @PyArray_ITER_DATA(%struct.TYPE_32__* %127)
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_32__* @PyArray_ToScalar(i32 %128, i32 %131)
  store %struct.TYPE_32__* %132, %struct.TYPE_32__** %22, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %134 = icmp eq %struct.TYPE_32__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %119
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %137 = call i32 @Py_DECREF(%struct.TYPE_32__* %136)
  br label %180

138:                                              ; preds = %119
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %142 = call i32 @PyTuple_SetItem(%struct.TYPE_32__* %139, i32 %140, %struct.TYPE_32__* %141)
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %115

146:                                              ; preds = %115
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %149 = call %struct.TYPE_32__* @PyObject_CallObject(%struct.TYPE_32__* %147, %struct.TYPE_32__* %148)
  store %struct.TYPE_32__* %149, %struct.TYPE_32__** %19, align 8
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %151 = call i32 @Py_DECREF(%struct.TYPE_32__* %150)
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %153 = icmp eq %struct.TYPE_32__* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %180

155:                                              ; preds = %146
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %158 = call i32 @PyArray_ITER_DATA(%struct.TYPE_32__* %157)
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %160 = call i64 @PyArray_SETITEM(%struct.TYPE_32__* %156, i32 %158, %struct.TYPE_32__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %164 = call i32 @Py_DECREF(%struct.TYPE_32__* %163)
  %165 = load i32, i32* @PyExc_TypeError, align 4
  %166 = call i32 @PyErr_SetString(i32 %165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %180

167:                                              ; preds = %155
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %169 = call i32 @Py_DECREF(%struct.TYPE_32__* %168)
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %171 = call i32 @PyArray_MultiIter_NEXT(%struct.TYPE_32__* %170)
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %173 = call i32 @PyArray_ITER_NEXT(%struct.TYPE_32__* %172)
  br label %104

174:                                              ; preds = %104
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %176 = call i32 @Py_DECREF(%struct.TYPE_32__* %175)
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %178 = call i32 @Py_DECREF(%struct.TYPE_32__* %177)
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  store %struct.TYPE_32__* %179, %struct.TYPE_32__** %5, align 8
  store i32 1, i32* %23, align 4
  br label %187

180:                                              ; preds = %162, %154, %135, %113, %102, %95, %77, %58, %37
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %182 = call i32 @Py_XDECREF(%struct.TYPE_32__* %181)
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %184 = call i32 @Py_XDECREF(%struct.TYPE_32__* %183)
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %186 = call i32 @Py_XDECREF(%struct.TYPE_32__* %185)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %5, align 8
  store i32 1, i32* %23, align 4
  br label %187

187:                                              ; preds = %180, %174
  %188 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  ret %struct.TYPE_32__* %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PySequence_Size(%struct.TYPE_32__*) #2

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #2

declare dso_local i32 @Py_DECREF(%struct.TYPE_32__*) #2

declare dso_local %struct.TYPE_32__* @PySequence_GetItem(%struct.TYPE_32__*, i32) #2

declare dso_local i64 @PyArray_MultiIterFromObjects(%struct.TYPE_32__**, i32, i32) #2

declare dso_local i64 @PyArray_SimpleNewFromDescr(i32, i32, %struct.TYPE_32__*) #2

declare dso_local i64 @PyArray_IterNew(%struct.TYPE_32__*) #2

declare dso_local i64 @PyArray_MultiIter_NOTDONE(%struct.TYPE_32__*) #2

declare dso_local %struct.TYPE_32__* @PyTuple_New(i32) #2

declare dso_local %struct.TYPE_32__* @PyArray_ToScalar(i32, i32) #2

declare dso_local i32 @PyArray_ITER_DATA(%struct.TYPE_32__*) #2

declare dso_local i32 @PyTuple_SetItem(%struct.TYPE_32__*, i32, %struct.TYPE_32__*) #2

declare dso_local %struct.TYPE_32__* @PyObject_CallObject(%struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i64 @PyArray_SETITEM(%struct.TYPE_32__*, i32, %struct.TYPE_32__*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @PyArray_MultiIter_NEXT(%struct.TYPE_32__*) #2

declare dso_local i32 @PyArray_ITER_NEXT(%struct.TYPE_32__*) #2

declare dso_local i32 @Py_XDECREF(%struct.TYPE_32__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
