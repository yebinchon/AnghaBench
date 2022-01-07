; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_py_script_log_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_py_script_log_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@py_script_log_internal.calling_self = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@cur_py_log_chunk = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cur_python_script = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @py_script_log_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @py_script_log_internal(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @UNUSED_PARAMETER(i32* %13)
  %15 = load i32, i32* @py_script_log_internal.calling_self, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32* (...) @python_none()
  store i32* %18, i32** %4, align 8
  br label %85

19:                                               ; preds = %3
  store i32 1, i32* @py_script_log_internal.calling_self, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @parse_args(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8, i8** %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %83

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %24
  br label %83

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @dstr_cat(%struct.TYPE_5__* @cur_py_log_chunk, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @dstr_cat(%struct.TYPE_5__* @cur_py_log_chunk, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_py_log_chunk, i32 0, i32 0), align 8
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 10)
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %60, %39
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  store i8 0, i8* %47, align 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur_python_script, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur_python_script, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @script_log(i32* %52, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %60

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @script_log(i32* null, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i8*, i8** %11, align 8
  store i8 10, i8* %61, align 1
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 10)
  store i8* %65, i8** %11, align 8
  br label %43

66:                                               ; preds = %43
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_py_log_chunk, i32 0, i32 0), align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @memmove(i8* %75, i8* %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @dstr_resize(%struct.TYPE_5__* @cur_py_log_chunk, i64 %80)
  br label %82

82:                                               ; preds = %79, %66
  br label %83

83:                                               ; preds = %82, %31, %23
  store i32 0, i32* @py_script_log_internal.calling_self, align 4
  %84 = call i32* (...) @python_none()
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %83, %17
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @parse_args(i32*, i8*, i32*, i8**) #1

declare dso_local i32 @dstr_cat(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @script_log(i32*, i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @dstr_resize(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
