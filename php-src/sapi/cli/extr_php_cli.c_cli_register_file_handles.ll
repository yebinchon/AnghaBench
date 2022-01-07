; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli.c_cli_register_file_handles.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli.c_cli_register_file_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"php://stdin\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"php://stdout\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"php://stderr\00", align 1
@s_in_process = common dso_local global %struct.TYPE_10__* null, align 8
@CONST_CS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@PHP_STREAM_FLAG_NO_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cli_register_file_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cli_register_file_handles() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_10__* @php_stream_open_wrapper_ex(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %1, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_10__* @php_stream_open_wrapper_ex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %2, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_10__* @php_stream_open_wrapper_ex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21, %18, %0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %29 = call i32 @php_stream_close(%struct.TYPE_10__* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = call i32 @php_stream_close(%struct.TYPE_10__* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call i32 @php_stream_close(%struct.TYPE_10__* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %69

43:                                               ; preds = %21
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** @s_in_process, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %47 = call i32 @php_stream_to_zval(%struct.TYPE_10__* %45, i32* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %50 = call i32 @php_stream_to_zval(%struct.TYPE_10__* %48, i32* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %53 = call i32 @php_stream_to_zval(%struct.TYPE_10__* %51, i32* %52)
  %54 = load i32, i32* @CONST_CS, align 4
  %55 = call i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_9__* %7, i32 %54, i32 0)
  %56 = call i8* @zend_string_init_interned(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5, i32 0)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = call i32 @zend_register_constant(%struct.TYPE_9__* %7)
  %59 = load i32, i32* @CONST_CS, align 4
  %60 = call i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_9__* %8, i32 %59, i32 0)
  %61 = call i8* @zend_string_init_interned(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6, i32 0)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = call i32 @zend_register_constant(%struct.TYPE_9__* %8)
  %64 = load i32, i32* @CONST_CS, align 4
  %65 = call i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_9__* %9, i32 %64, i32 0)
  %66 = call i8* @zend_string_init_interned(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6, i32 0)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = call i32 @zend_register_constant(%struct.TYPE_9__* %9)
  br label %69

69:                                               ; preds = %43, %42
  ret void
}

declare dso_local %struct.TYPE_10__* @php_stream_open_wrapper_ex(i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @php_stream_close(%struct.TYPE_10__*) #1

declare dso_local i32 @php_stream_to_zval(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @zend_string_init_interned(i8*, i32, i32) #1

declare dso_local i32 @zend_register_constant(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
