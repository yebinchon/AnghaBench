; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_farray_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_farray_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NPY_ARRAY_ALIGNED = common dso_local global i32 0, align 4
@NPY_ARRAY_WRITEABLE = common dso_local global i32 0, align 4
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@NPY_ARRAY_C_CONTIGUOUS = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@Py_False = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @arrayflags_farray_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arrayflags_farray_get(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NPY_ARRAY_ALIGNED, align 4
  %8 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i32*, i32** @Py_True, align 8
  store i32* %22, i32** %3, align 8
  br label %25

23:                                               ; preds = %14, %1
  %24 = load i32*, i32** @Py_False, align 8
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @Py_INCREF(i32* %26)
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
