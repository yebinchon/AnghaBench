; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__subscript_by_index.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__subscript_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PyExc_IndexError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Field index %zd out of range.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32)* @_subscript_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_subscript_by_index(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @PySequence_GetItem(i32 %10, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @PyExc_IndexError, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PyErr_Format(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32* null, i32** %3, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @_subscript_by_name(%struct.TYPE_4__* %20, i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @Py_DECREF(i32* %23)
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32* @PySequence_GetItem(i32, i32) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32* @_subscript_by_name(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
