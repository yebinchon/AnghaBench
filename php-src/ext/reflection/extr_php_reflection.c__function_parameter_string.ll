; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__function_parameter_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__function_parameter_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, %struct._zend_arg_info* }
%struct._zend_arg_info = type { i32 }

@ZEND_ACC_VARIADIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s- Parameters [%d] {\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*)* @_function_parameter_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_function_parameter_string(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._zend_arg_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load %struct._zend_arg_info*, %struct._zend_arg_info** %13, align 8
  store %struct._zend_arg_info* %14, %struct._zend_arg_info** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct._zend_arg_info*, %struct._zend_arg_info** %7, align 8
  %20 = icmp ne %struct._zend_arg_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @smart_str_appendc(i32* %38, i8 signext 10)
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %41, i64 %42)
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %66, %37
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = load %struct._zend_arg_info*, %struct._zend_arg_info** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp slt i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @_parameter_string(i32* %52, %struct.TYPE_6__* %53, %struct._zend_arg_info* %54, i64 %55, i32 %59, i8* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @smart_str_appendc(i32* %62, i8 signext 10)
  %64 = load %struct._zend_arg_info*, %struct._zend_arg_info** %7, align 8
  %65 = getelementptr inbounds %struct._zend_arg_info, %struct._zend_arg_info* %64, i32 1
  store %struct._zend_arg_info* %65, %struct._zend_arg_info** %7, align 8
  br label %66

66:                                               ; preds = %48
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %8, align 8
  br label %44

69:                                               ; preds = %44
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %21
  ret void
}

declare dso_local i32 @smart_str_appendc(i32*, i8 signext) #1

declare dso_local i32 @smart_str_append_printf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @_parameter_string(i32*, %struct.TYPE_6__*, %struct._zend_arg_info*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
