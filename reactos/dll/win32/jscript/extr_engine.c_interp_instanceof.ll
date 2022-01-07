; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_instanceof.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_instanceof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@FALSE = common dso_local global i32 0, align 4
@interp_instanceof.prototypeW = internal constant [10 x i8] c"prototype\00", align 1
@JS_E_FUNCTION_EXPECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"non-jsdisp objects not supported\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@JSCLASS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"prototype is not an object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_instanceof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_instanceof(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @stack_pop(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @is_object_instance(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @get_object(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @jsval_release(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @JS_E_FUNCTION_EXPECTED, align 4
  %26 = call i32 @throw_type_error(i32* %24, i32 %25, i32* null)
  store i32 %26, i32* %2, align 4
  br label %123

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @get_object(i32 %28)
  %30 = call %struct.TYPE_7__* @iface_to_jsdisp(i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @get_object(i32 %31)
  %33 = call i32 @IDispatch_Release(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @E_FAIL, align 4
  store i32 %38, i32* %2, align 4
  br label %123

39:                                               ; preds = %27
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load i32, i32* @JSCLASS_FUNCTION, align 4
  %42 = call i64 @is_class(%struct.TYPE_7__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 @jsdisp_propget_name(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @interp_instanceof.prototypeW, i64 0, i64 0), i32* %7)
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @JS_E_FUNCTION_EXPECTED, align 4
  %50 = call i32 @throw_type_error(i32* %48, i32 %49, i32* null)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 @jsdisp_release(%struct.TYPE_7__* %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %2, align 4
  br label %123

59:                                               ; preds = %51
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @stack_pop(i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @is_object_instance(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @is_object_instance(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @get_object(i32 %70)
  %72 = call %struct.TYPE_7__* @iface_to_jsdisp(i32 %71)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %6, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %5, align 8
  br label %75

75:                                               ; preds = %94, %73
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ false, %75 ], [ %80, %78 ]
  br i1 %82, label %83, label %98

83:                                               ; preds = %81
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @get_object(i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = call i32 @to_disp(%struct.TYPE_7__* %86)
  %88 = call i32 @disp_cmp(i32 %85, i32 %87, i32* %9)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %98

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %5, align 8
  br label %75

98:                                               ; preds = %92, %81
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = call i32 @jsdisp_release(%struct.TYPE_7__* %102)
  br label %104

104:                                              ; preds = %101, %98
  br label %108

105:                                              ; preds = %59
  %106 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @E_FAIL, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @jsval_release(i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @jsval_release(i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = call i64 @FAILED(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %2, align 4
  br label %123

118:                                              ; preds = %108
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @jsval_bool(i32 %120)
  %122 = call i32 @stack_push(i32* %119, i32 %121)
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %118, %116, %57, %36, %21
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @iface_to_jsdisp(i32) #1

declare dso_local i32 @IDispatch_Release(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @is_class(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @jsdisp_propget_name(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @jsdisp_release(%struct.TYPE_7__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @disp_cmp(i32, i32, i32*) #1

declare dso_local i32 @to_disp(%struct.TYPE_7__*) #1

declare dso_local i32 @stack_push(i32*, i32) #1

declare dso_local i32 @jsval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
