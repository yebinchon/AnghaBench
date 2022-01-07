; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_defineProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_defineProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"not implemented non-JS object\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Object_defineProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Object_defineProperty(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_object_instance(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %32 = call i32 @throw_type_error(i32* %30, i32 %31, i32* null)
  store i32 %32, i32* %7, align 4
  br label %117

33:                                               ; preds = %23
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_object(i32 %36)
  %38 = call i32* @to_jsdisp(i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %43, i32* %7, align 4
  br label %117

44:                                               ; preds = %33
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp uge i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  br label %54

52:                                               ; preds = %44
  %53 = call i32 (...) @jsval_undefined()
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  %56 = call i32 @to_flat_string(i32* %45, i32 %55, i32** %18, i32** %17)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %7, align 4
  br label %117

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp uge i32 %63, 3
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @is_object_instance(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @get_object(i32 %74)
  %76 = call i32* @to_jsdisp(i32 %75)
  store i32* %76, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @to_property_descriptor(i32* %80, i32* %81, i32* %14)
  store i32 %82, i32* %19, align 4
  br label %86

83:                                               ; preds = %71
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %83, %79
  br label %91

87:                                               ; preds = %65, %62
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %90 = call i32 @throw_type_error(i32* %88, i32 %89, i32* null)
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %87, %86
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @jsstr_release(i32* %92)
  %94 = load i32, i32* %19, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %19, align 4
  store i32 %98, i32* %7, align 4
  br label %117

99:                                               ; preds = %91
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @jsdisp_define_property(i32* %100, i32* %101, i32* %14)
  store i32 %102, i32* %19, align 4
  %103 = call i32 @release_property_descriptor(i32* %14)
  %104 = load i32, i32* %19, align 4
  %105 = call i64 @SUCCEEDED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i32*, i32** %13, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @jsdisp_addref(i32* %111)
  %113 = call i32 @jsval_obj(i32 %112)
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %107, %99
  %116 = load i32, i32* %19, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %97, %60, %41, %29
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32* @to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_property_descriptor(i32*, i32*, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @jsdisp_define_property(i32*, i32*, i32*) #1

declare dso_local i32 @release_property_descriptor(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_obj(i32) #1

declare dso_local i32 @jsdisp_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
