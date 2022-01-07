; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_descr_subscript.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_descr_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Field key must be an integer field offset, single field name, or list of field names.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @descr_subscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @descr_subscript(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @_check_has_fields(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %49

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @PyBaseString_Check(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @_subscript_by_name(i32* %17, i32* %18)
  store i32* %19, i32** %3, align 8
  br label %49

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @_is_list_of_strings(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @arraydescr_field_subset_view(i32* %25, i32* %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %3, align 8
  br label %49

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @PyArray_PyIntAsIntp(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @error_converting(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = call i32* (...) @PyErr_Occurred()
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @PyExc_TypeError, align 4
  %39 = call i64 @PyErr_GivenExceptionMatches(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @PyExc_TypeError, align 4
  %43 = call i32 @PyErr_SetString(i32 %42, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  store i32* null, i32** %3, align 8
  br label %49

45:                                               ; preds = %29
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @_subscript_by_index(i32* %46, i32 %47)
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %45, %44, %24, %16, %11
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i64 @_check_has_fields(i32*) #1

declare dso_local i64 @PyBaseString_Check(i32*) #1

declare dso_local i32* @_subscript_by_name(i32*, i32*) #1

declare dso_local i64 @_is_list_of_strings(i32*) #1

declare dso_local i64 @arraydescr_field_subset_view(i32*, i32*) #1

declare dso_local i32 @PyArray_PyIntAsIntp(i32*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32* @PyErr_Occurred(...) #1

declare dso_local i64 @PyErr_GivenExceptionMatches(i32*, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @_subscript_by_index(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
