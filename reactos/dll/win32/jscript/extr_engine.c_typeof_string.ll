; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_typeof_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_typeof_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@undefinedW = common dso_local global i32* null, align 8
@objectW = common dso_local global i32* null, align 8
@JSCLASS_FUNCTION = common dso_local global i32 0, align 4
@functionW = common dso_local global i32* null, align 8
@stringW = common dso_local global i32* null, align 8
@numberW = common dso_local global i32* null, align 8
@booleanW = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"unhandled variant %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @typeof_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typeof_string(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @jsval_type(i32 %7)
  switch i32 %8, label %57 [
    i32 129, label %9
    i32 133, label %12
    i32 131, label %15
    i32 130, label %42
    i32 132, label %45
    i32 134, label %48
    i32 128, label %51
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** @undefinedW, align 8
  %11 = load i32**, i32*** %5, align 8
  store i32* %10, i32** %11, align 8
  br label %57

12:                                               ; preds = %2
  %13 = load i32*, i32** @objectW, align 8
  %14 = load i32**, i32*** %5, align 8
  store i32* %13, i32** %14, align 8
  br label %57

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @get_object(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @get_object(i32 %20)
  %22 = call i32* @iface_to_jsdisp(i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @JSCLASS_FUNCTION, align 4
  %27 = call i32 @is_class(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32*, i32** @functionW, align 8
  br label %33

31:                                               ; preds = %24
  %32 = load i32*, i32** @objectW, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32* [ %30, %29 ], [ %32, %31 ]
  %35 = load i32**, i32*** %5, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @jsdisp_release(i32* %36)
  br label %41

38:                                               ; preds = %19, %15
  %39 = load i32*, i32** @objectW, align 8
  %40 = load i32**, i32*** %5, align 8
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  br label %57

42:                                               ; preds = %2
  %43 = load i32*, i32** @stringW, align 8
  %44 = load i32**, i32*** %5, align 8
  store i32* %43, i32** %44, align 8
  br label %57

45:                                               ; preds = %2
  %46 = load i32*, i32** @numberW, align 8
  %47 = load i32**, i32*** %5, align 8
  store i32* %46, i32** %47, align 8
  br label %57

48:                                               ; preds = %2
  %49 = load i32*, i32** @booleanW, align 8
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  br label %57

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @get_variant(i32 %52)
  %54 = call i32 @debugstr_variant(i32 %53)
  %55 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %2, %48, %45, %42, %41, %12, %9
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @is_class(i32*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32) #1

declare dso_local i32 @get_variant(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
