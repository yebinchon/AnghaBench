; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_Function_call.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_Function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32, i32*, i32*)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_FUNCTION_EXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Function_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Function_call(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_6__* @function_this(i32* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %14, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @JS_E_FUNCTION_EXPECTED, align 4
  %25 = call i32 @throw_type_error(i32* %23, i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  br label %78

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @is_undefined(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @is_null(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @to_object(i32* %42, i32 %45, i32** %15)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %7, align 4
  br label %78

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %35, %29
  %54 = load i32, i32* %11, align 4
  %55 = sub i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %53, %26
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32, i32*, i32*)*, i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32, i32*, i32*)** %60, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 %61(i32* %62, %struct.TYPE_6__* %63, i32* %64, i32 %65, i32 %66, i32* %68, i32* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @IDispatch_Release(i32* %74)
  br label %76

76:                                               ; preds = %73, %56
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %50, %22
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_6__* @function_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @is_null(i32) #1

declare dso_local i32 @to_object(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
