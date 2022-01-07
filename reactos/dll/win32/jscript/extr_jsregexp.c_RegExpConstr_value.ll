; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExpConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExpConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JSCLASS_REGEXP = common dso_local global i32 0, align 4
@JS_E_REGEXP_SYNTAX = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"no args\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unimplemented flags: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @RegExpConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegExpConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %111 [
    i32 128, label %19
    i32 129, label %74
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  %23 = load i32*, i32** %12, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_object_instance(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_object(i32 %31)
  %33 = call i32* @iface_to_jsdisp(i32 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %28
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* @JSCLASS_REGEXP, align 4
  %39 = call i32 @is_class(i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @is_undefined(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @jsdisp_release(i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @JS_E_REGEXP_SYNTAX, align 4
  %55 = call i32 @throw_regexp_error(i32* %53, i32 %54, i32* null)
  store i32 %55, i32* %7, align 4
  br label %115

56:                                               ; preds = %44, %41
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @jsval_obj(i32* %60)
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %56
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @jsdisp_release(i32* %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* @S_OK, align 4
  store i32 %67, i32* %7, align 4
  br label %115

68:                                               ; preds = %36
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @jsdisp_release(i32* %69)
  br label %71

71:                                               ; preds = %68, %28
  br label %72

72:                                               ; preds = %71, %22
  br label %73

73:                                               ; preds = %72, %19
  br label %74

74:                                               ; preds = %6, %73
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %79, i32* %7, align 4
  br label %115

80:                                               ; preds = %74
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %87
  %92 = phi i32* [ %89, %87 ], [ null, %90 ]
  %93 = call i32 @create_regexp_var(i32* %81, i32 %84, i32* %92, i32** %15)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @FAILED(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %7, align 4
  br label %115

99:                                               ; preds = %91
  %100 = load i32*, i32** %13, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @jsval_obj(i32* %103)
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  br label %109

106:                                              ; preds = %99
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @jsdisp_release(i32* %107)
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* @S_OK, align 4
  store i32 %110, i32* %7, align 4
  br label %115

111:                                              ; preds = %6
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %109, %97, %77, %66, %50
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @is_class(i32*, i32) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @throw_regexp_error(i32*, i32, i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @create_regexp_var(i32*, i32, i32*, i32**) #1

declare dso_local i32 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
