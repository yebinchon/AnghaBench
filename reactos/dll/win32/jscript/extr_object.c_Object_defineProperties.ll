; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_defineProperties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_defineProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"not an object\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Object_defineProperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Object_defineProperties(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ult i32 %16, 1
  br i1 %17, label %37, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @is_object_instance(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_object(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_object(i32 %33)
  %35 = call i32* @to_jsdisp(i32 %34)
  store i32* %35, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30, %24, %18, %6
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %39, i32* %7, align 4
  br label %69

40:                                               ; preds = %30
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp uge i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  br label %53

51:                                               ; preds = %40
  %52 = call i32 (...) @jsval_undefined()
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %50, %47 ], [ %52, %51 ]
  %55 = call i32 @jsdisp_define_properties(i32* %43, i32* %44, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @SUCCEEDED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @jsdisp_addref(i32* %63)
  %65 = call i32 @jsval_obj(i32 %64)
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %59, %53
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %37
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32* @to_jsdisp(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @jsdisp_define_properties(i32*, i32*, i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_obj(i32) #1

declare dso_local i32 @jsdisp_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
