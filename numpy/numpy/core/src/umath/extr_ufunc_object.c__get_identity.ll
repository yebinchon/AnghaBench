; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__get_identity.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__get_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@Py_RETURN_NONE = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ufunc %s has an invalid identity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @_get_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_get_identity(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %33 [
    i32 130, label %9
    i32 128, label %12
    i32 132, label %15
    i32 129, label %18
    i32 131, label %21
    i32 133, label %24
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 1, i32* %10, align 4
  %11 = call i32* @PyInt_FromLong(i32 1)
  store i32* %11, i32** %3, align 8
  br label %38

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  store i32 1, i32* %13, align 4
  %14 = call i32* @PyInt_FromLong(i32 0)
  store i32* %14, i32** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  store i32 1, i32* %16, align 4
  %17 = call i32* @PyInt_FromLong(i32 -1)
  store i32* %17, i32** %3, align 8
  br label %38

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %21

21:                                               ; preds = %2, %18
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %24

24:                                               ; preds = %2, %21
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @Py_INCREF(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %3, align 8
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @PyExc_ValueError, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = call i32 @ufunc_get_name_cstr(%struct.TYPE_4__* %35)
  %37 = call i32 @PyErr_Format(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32* null, i32** %3, align 8
  br label %38

38:                                               ; preds = %33, %24, %15, %12, %9
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @ufunc_get_name_cstr(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
