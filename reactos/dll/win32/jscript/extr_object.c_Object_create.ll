; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Invalid arg\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Non-JS prototype\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid arg %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Object_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Object_create(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load i32*, i32** %12, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_object_instance(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_null(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %6
  %32 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %33, i32* %7, align 4
  br label %129

34:                                               ; preds = %25, %19
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @debugstr_jsval(i32 %37)
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @is_object_instance(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @get_object(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @get_object(i32 %57)
  %59 = call i32* @to_jsdisp(i64 %58)
  store i32* %59, i32** %14, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %65, i32* %7, align 4
  br label %129

66:                                               ; preds = %60
  br label %88

67:                                               ; preds = %42, %34
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @is_null(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  br label %82

80:                                               ; preds = %73
  %81 = call i32 (...) @jsval_undefined()
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %79, %76 ], [ %81, %80 ]
  %84 = call i32 @debugstr_jsval(i32 %83)
  %85 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %86, i32* %7, align 4
  br label %129

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %66
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @create_dispex(i32* %89, i32* null, i32* %90, i32** %15)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i64 @FAILED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %7, align 4
  br label %129

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp uge i32 %98, 2
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @is_undefined(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @jsdisp_define_properties(i32* %107, i32* %108, i32 %111)
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %106, %100, %97
  %114 = load i32, i32* %16, align 4
  %115 = call i64 @SUCCEEDED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32*, i32** %13, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @jsval_obj(i32* %121)
  %123 = load i32*, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  br label %127

124:                                              ; preds = %117, %113
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @jsdisp_release(i32* %125)
  br label %127

127:                                              ; preds = %124, %120
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %95, %82, %63, %31
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @is_null(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i64 @get_object(i32) #1

declare dso_local i32* @to_jsdisp(i64) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @create_dispex(i32*, i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @jsdisp_define_properties(i32*, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
