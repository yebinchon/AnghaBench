; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_match.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@JSCLASS_REGEXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_match(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %13, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 (...) @jsval_null()
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %7, align 4
  br label %97

29:                                               ; preds = %6
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @is_object_instance(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_object(i32 %38)
  %40 = call i32* @iface_to_jsdisp(i32 %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @JSCLASS_REGEXP, align 4
  %46 = call i32 @is_class(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @jsdisp_release(i32* %49)
  store i32* null, i32** %14, align 8
  br label %51

51:                                               ; preds = %48, %43, %35
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32*, i32** %14, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %78, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @to_string(i32* %56, i32 %59, i32** %17)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %97

66:                                               ; preds = %55
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @create_regexp(i32* %67, i32* %68, i32 0, i32** %14)
  store i32 %69, i32* %16, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @jsstr_release(i32* %70)
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %7, align 4
  br label %97

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @get_string_val(i32* %79, i32* %80, i32** %15)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i64 @SUCCEEDED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @regexp_string_match(i32* %86, i32* %87, i32* %88, i32* %89)
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @jsdisp_release(i32* %92)
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @jsstr_release(i32* %94)
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %91, %75, %64, %27
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @is_class(i32*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @create_regexp(i32*, i32*, i32, i32**) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @regexp_string_match(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
