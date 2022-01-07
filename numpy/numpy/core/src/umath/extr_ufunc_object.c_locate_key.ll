; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_locate_key.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_locate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @locate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_key(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32**, i32*** %4, align 8
  store i32** %8, i32*** %6, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32**, i32*** %6, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %15, %16
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %22, i32*** %6, align 8
  br label %9

23:                                               ; preds = %18
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %28 = load i32**, i32*** %4, align 8
  store i32** %28, i32*** %6, align 8
  br label %29

29:                                               ; preds = %42, %27
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @Py_EQ, align 4
  %38 = call i32 @PyObject_RichCompareBool(i32* %34, i32* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i1 [ false, %29 ], [ %39, %33 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** %6, align 8
  br label %29

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %58

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32**, i32*** %6, align 8
  %52 = load i32**, i32*** %4, align 8
  %53 = ptrtoint i32** %51 to i64
  %54 = ptrtoint i32** %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %48
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @PyObject_RichCompareBool(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
