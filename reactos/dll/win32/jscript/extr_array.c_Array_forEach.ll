; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_forEach.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_forEach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid arg %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported context this %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Array_forEach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Array_forEach(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @get_length(i32* %22, i32* %23, i32** %17, i32* %18)
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %20, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %20, align 4
  store i32 %29, i32* %7, align 4
  br label %134

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_object_instance(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @get_object(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %39, %33, %30
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  br label %54

52:                                               ; preds = %45
  %53 = call i32 (...) @jsval_undefined()
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  %56 = call i32 @debugstr_jsval(i32 %55)
  %57 = call i32 @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %58, i32* %7, align 4
  br label %134

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @is_undefined(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @debugstr_jsval(i32 %71)
  %73 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %74, i32* %7, align 4
  br label %134

75:                                               ; preds = %62, %59
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %123, %75
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %76
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @jsdisp_get_idx(i32* %81, i32 %82, i32* %14)
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %123

88:                                               ; preds = %80
  %89 = load i32, i32* %20, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %20, align 4
  store i32 %93, i32* %7, align 4
  br label %134

94:                                               ; preds = %88
  %95 = load i32, i32* %14, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @jsval_number(i32 %97)
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @jsval_obj(i32* %100)
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @get_object(i32 %106)
  %108 = load i32, i32* @DISPATCH_METHOD, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %110 = call i32 @ARRAY_SIZE(i32* %109)
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %112 = call i32 @disp_call_value(i32* %103, i32 %107, i32* null, i32 %108, i32 %110, i32* %111, i32* %16)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @jsval_release(i32 %113)
  %115 = load i32, i32* %20, align 4
  %116 = call i64 @FAILED(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %94
  %119 = load i32, i32* %20, align 4
  store i32 %119, i32* %7, align 4
  br label %134

120:                                              ; preds = %94
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @jsval_release(i32 %121)
  br label %123

123:                                              ; preds = %120, %87
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %76

126:                                              ; preds = %76
  %127 = load i32*, i32** %13, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = call i32 (...) @jsval_undefined()
  %131 = load i32*, i32** %13, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* @S_OK, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %132, %118, %92, %68, %54, %28
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @disp_call_value(i32*, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
