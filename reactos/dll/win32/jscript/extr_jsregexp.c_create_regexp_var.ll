; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_create_regexp_var.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_create_regexp_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }

@JSCLASS_REGEXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"src_arg = %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unimplemented for %s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_regexp_var(i32* %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @is_object_instance(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_object(i32 %22)
  %24 = call i32* @iface_to_jsdisp(i32 %23)
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* @JSCLASS_REGEXP, align 4
  %30 = call i64 @is_class(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load i32*, i32** %15, align 8
  %34 = call %struct.TYPE_5__* @regexp_from_jsdisp(i32* %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %16, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32**, i32*** %9, align 8
  %45 = call i32 @create_regexp(i32* %35, i32* %38, i32 %43, i32** %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @jsdisp_release(i32* %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %106

49:                                               ; preds = %27
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @jsdisp_release(i32* %50)
  br label %52

52:                                               ; preds = %49, %21
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @is_string(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @debugstr_jsval(i32 %58)
  %60 = call i32 @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %61, i32* %5, align 4
  br label %106

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = call i32* @get_string(i32 %63)
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %91

67:                                               ; preds = %62
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @is_string(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @debugstr_jsval(i32 %74)
  %76 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %77, i32* %5, align 4
  br label %106

78:                                               ; preds = %67
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @get_string(i32 %80)
  store i32* %81, i32** %17, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = call i32* @jsstr_flatten(i32* %82)
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %87, i32* %5, align 4
  br label %106

88:                                               ; preds = %78
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @jsstr_length(i32* %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %62
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @parse_regexp_flags(i32* %92, i32 %93, i32* %10)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @FAILED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %106

100:                                              ; preds = %91
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32**, i32*** %9, align 8
  %105 = call i32 @create_regexp(i32* %101, i32* %102, i32 %103, i32** %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %100, %98, %86, %72, %57, %32
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i64 @is_class(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @regexp_from_jsdisp(i32*) #1

declare dso_local i32 @create_regexp(i32*, i32*, i32, i32**) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @is_string(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i32* @get_string(i32) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @parse_regexp_flags(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
