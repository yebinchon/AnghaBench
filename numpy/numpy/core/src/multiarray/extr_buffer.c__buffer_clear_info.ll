; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_clear_info.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_clear_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_buffer_info_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @_buffer_clear_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_buffer_clear_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** @_buffer_info_cache, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = call i32* @PyLong_FromVoidPtr(i8* %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** @_buffer_info_cache, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @PyDict_GetItem(i32* %15, i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @PyList_GET_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @PyList_GET_ITEM(i32* %27, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @PyLong_AsVoidPtr(i32* %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @_buffer_info_free(i32* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load i32*, i32** @_buffer_info_cache, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @PyDict_DelItem(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %11
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @Py_DECREF(i32* %43)
  br label %45

45:                                               ; preds = %42, %10
  ret void
}

declare dso_local i32* @PyLong_FromVoidPtr(i8*) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32*) #1

declare dso_local i32 @PyList_GET_SIZE(i32*) #1

declare dso_local i32* @PyList_GET_ITEM(i32*, i32) #1

declare dso_local i64 @PyLong_AsVoidPtr(i32*) #1

declare dso_local i32 @_buffer_info_free(i32*) #1

declare dso_local i32 @PyDict_DelItem(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
