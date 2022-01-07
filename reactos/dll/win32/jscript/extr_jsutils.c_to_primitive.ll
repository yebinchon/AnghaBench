; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_primitive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_primitive.toStringW = internal constant [9 x i8] c"toString\00", align 1
@to_primitive.valueOfW = internal constant [8 x i8] c"valueOf\00", align 1
@S_OK = common dso_local global i32 0, align 4
@DISPID_VALUE = common dso_local global i32 0, align 4
@NO_HINT = common dso_local global i64 0, align 8
@JSCLASS_DATE = common dso_local global i32 0, align 4
@HINT_STRING = common dso_local global i64 0, align 8
@HINT_NUMBER = common dso_local global i64 0, align 8
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"call error - forwarding exception\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@JS_E_TO_PRIMITIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_primitive(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @is_object_instance(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %140

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @get_object(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @jsval_null()
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @S_OK, align 4
  store i32 %24, i32* %5, align 4
  br label %144

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_object(i32 %26)
  %28 = call i32* @iface_to_jsdisp(i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @get_object(i32 %33)
  %35 = load i32, i32* @DISPID_VALUE, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @disp_propget(i32* %32, i32 %34, i32 %35, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %144

38:                                               ; preds = %25
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @NO_HINT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @JSCLASS_DATE, align 4
  %45 = call i64 @is_class(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @HINT_STRING, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load i64, i64* @HINT_NUMBER, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %51, %38
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @HINT_STRING, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @to_primitive.toStringW, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @to_primitive.valueOfW, i64 0, i64 0)
  %60 = call i32 @jsdisp_get_id(i32* %54, i8* %59, i32 0, i32* %12)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @SUCCEEDED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %53
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @DISPATCH_METHOD, align 4
  %68 = call i32 @jsdisp_call(i32* %65, i32 %66, i32 %67, i32 0, i32* null, i32* %11)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @FAILED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @jsdisp_release(i32* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %144

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @is_object_instance(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @jsdisp_release(i32* %82)
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @S_OK, align 4
  store i32 %86, i32* %5, align 4
  br label %144

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @get_object(i32 %88)
  %90 = call i32 @IDispatch_Release(i32 %89)
  br label %91

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %53
  %94 = load i32*, i32** %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @HINT_STRING, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @to_primitive.valueOfW, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @to_primitive.toStringW, i64 0, i64 0)
  %100 = call i32 @jsdisp_get_id(i32* %94, i8* %99, i32 0, i32* %12)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @SUCCEEDED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %93
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @DISPATCH_METHOD, align 4
  %108 = call i32 @jsdisp_call(i32* %105, i32 %106, i32 %107, i32 0, i32* null, i32* %11)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i64 @FAILED(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @jsdisp_release(i32* %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %144

117:                                              ; preds = %104
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @is_object_instance(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @jsdisp_release(i32* %122)
  %124 = load i32, i32* %11, align 4
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @S_OK, align 4
  store i32 %126, i32* %5, align 4
  br label %144

127:                                              ; preds = %117
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @get_object(i32 %128)
  %130 = call i32 @IDispatch_Release(i32 %129)
  br label %131

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %93
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @jsdisp_release(i32* %134)
  %136 = call i32 @WARN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @JS_E_TO_PRIMITIVE, align 4
  %139 = call i32 @throw_type_error(i32* %137, i32 %138, i32* null)
  store i32 %139, i32* %5, align 4
  br label %144

140:                                              ; preds = %4
  %141 = load i32, i32* %7, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @jsval_copy(i32 %141, i32* %142)
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %133, %121, %112, %81, %72, %31, %21
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @disp_propget(i32*, i32, i32, i32*) #1

declare dso_local i64 @is_class(i32*, i32) #1

declare dso_local i32 @jsdisp_get_id(i32*, i8*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_call(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @IDispatch_Release(i32) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @jsval_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
