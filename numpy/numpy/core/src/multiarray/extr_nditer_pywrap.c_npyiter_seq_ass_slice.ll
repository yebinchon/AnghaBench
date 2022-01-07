; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_seq_ass_slice.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_seq_ass_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot delete iterator elements\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Iterator is past the end\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Iterator construction used delayed buffer allocation, and no reset has been done yet\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Wrong size to assign to iterator slice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64, i32*)* @npyiter_seq_ass_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_seq_ass_slice(%struct.TYPE_4__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @PyExc_TypeError, align 4
  %17 = call i32 @PyErr_SetString(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %114

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @PyExc_ValueError, align 4
  %30 = call i32 @PyErr_SetString(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %114

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @NpyIter_HasDelayedBufAlloc(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = call i32 @PyErr_SetString(i32 %38, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %114

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @NpyIter_GetNOp(i32* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %56

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %8, align 8
  br label %69

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @PySequence_Check(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @PySequence_Size(i32* %74)
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub nsw i64 %76, %77
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %69
  %81 = load i32, i32* @PyExc_ValueError, align 4
  %82 = call i32 @PyErr_SetString(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %114

83:                                               ; preds = %73
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %110, %83
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %7, align 8
  %93 = sub nsw i64 %91, %92
  %94 = call i32* @PySequence_GetItem(i32* %90, i64 %93)
  store i32* %94, i32** %12, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %114

98:                                               ; preds = %89
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i64 @npyiter_seq_ass_item(%struct.TYPE_4__* %99, i64 %100, i32* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @Py_DECREF(i32* %105)
  store i32 -1, i32* %5, align 4
  br label %114

107:                                              ; preds = %98
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @Py_DECREF(i32* %108)
  br label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %11, align 8
  br label %85

113:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %104, %97, %80, %37, %28, %15
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @NpyIter_HasDelayedBufAlloc(i32*) #1

declare dso_local i64 @NpyIter_GetNOp(i32*) #1

declare dso_local i32 @PySequence_Check(i32*) #1

declare dso_local i64 @PySequence_Size(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i64) #1

declare dso_local i64 @npyiter_seq_ass_item(%struct.TYPE_4__*, i64, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
