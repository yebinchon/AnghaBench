; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_updateifcopy_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_updateifcopy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"UPDATEIFCOPY deprecated, use WRITEBACKIFCOPY instead\00", align 1
@NPY_ARRAY_UPDATEIFCOPY = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@Py_False = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @arrayflags_updateifcopy_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arrayflags_updateifcopy_get(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = call i64 @DEPRECATE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32*, i32** @Py_True, align 8
  store i32* %17, i32** %4, align 8
  br label %20

18:                                               ; preds = %8
  %19 = load i32*, i32** @Py_False, align 8
  store i32* %19, i32** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @Py_INCREF(i32* %21)
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %24

24:                                               ; preds = %20, %7
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

declare dso_local i64 @DEPRECATE(i8*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
