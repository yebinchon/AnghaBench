; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__descriptor_from_pep3118_format_fast.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__descriptor_from_pep3118_format_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @_descriptor_from_pep3118_format_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_descriptor_from_pep3118_format_fast(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %7, align 4
  store i8 61, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @NPY_BYTE, align 4
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %29 [
    i32 64, label %22
    i32 94, label %22
    i32 60, label %23
    i32 62, label %24
    i32 33, label %24
    i32 61, label %25
    i32 90, label %26
  ]

22:                                               ; preds = %18, %18
  store i8 61, i8* %8, align 1
  store i32 0, i32* %7, align 4
  br label %46

23:                                               ; preds = %18
  store i8 60, i8* %8, align 1
  store i32 1, i32* %7, align 4
  br label %46

24:                                               ; preds = %18, %18
  store i8 62, i8* %8, align 1
  store i32 1, i32* %7, align 4
  br label %46

25:                                               ; preds = %18
  store i8 61, i8* %8, align 1
  store i32 1, i32* %7, align 4
  br label %46

26:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %18, %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %72

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @_pep3118_letter_to_type(i8 signext %35, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %72

45:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %25, %24, %23, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %72

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = call i32* @PyArray_DescrFromType(i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 61
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load i32**, i32*** %5, align 8
  store i32* %61, i32** %62, align 8
  br label %71

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = load i8, i8* %8, align 1
  %66 = call i64 @PyArray_DescrNewByteorder(i32* %64, i8 signext %65)
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32**, i32*** %5, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @Py_DECREF(i32* %69)
  br label %71

71:                                               ; preds = %63, %60
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %53, %44, %32
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @_pep3118_letter_to_type(i8 signext, i32, i32) #1

declare dso_local i32* @PyArray_DescrFromType(i32) #1

declare dso_local i64 @PyArray_DescrNewByteorder(i32*, i8 signext) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
