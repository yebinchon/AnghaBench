; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg.c_phpdbg_register_file_handles.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg.c_phpdbg_register_file_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"php://stdin\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"php://stdout\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"php://stderr\00", align 1
@CONST_CS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@zend_constants = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@PHP_STREAM_FLAG_NO_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phpdbg_register_file_handles() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_9__* @php_stream_open_wrapper_ex(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.TYPE_9__* @php_stream_open_wrapper_ex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.TYPE_9__* @php_stream_open_wrapper_ex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24, %21, %0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i32 @php_stream_close(%struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call i32 @php_stream_close(%struct.TYPE_9__* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i32 @php_stream_close(%struct.TYPE_9__* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %92

46:                                               ; preds = %24
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = call i32 @php_stream_to_zval(%struct.TYPE_9__* %47, i8** %1)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = call i32 @php_stream_to_zval(%struct.TYPE_9__* %49, i8** %2)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i32 @php_stream_to_zval(%struct.TYPE_9__* %51, i8** %3)
  %53 = load i8*, i8** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @CONST_CS, align 4
  %56 = call i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_8__* %10, i32 %55, i32 0)
  %57 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %58 = call i8* @zend_string_init(i32 %57, i32 0)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @zend_constants, align 4
  %61 = call i32 @EG(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @zend_hash_del(i32 %61, i8* %63)
  %65 = call i32 @zend_register_constant(%struct.TYPE_8__* %10)
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @CONST_CS, align 4
  %69 = call i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_8__* %11, i32 %68, i32 0)
  %70 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %71 = call i8* @zend_string_init(i32 %70, i32 0)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @zend_constants, align 4
  %74 = call i32 @EG(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @zend_hash_del(i32 %74, i8* %76)
  %78 = call i32 @zend_register_constant(%struct.TYPE_8__* %11)
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* @CONST_CS, align 4
  %82 = call i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_8__* %12, i32 %81, i32 0)
  %83 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %84 = call i8* @zend_string_init(i32 %83, i32 0)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @zend_constants, align 4
  %87 = call i32 @EG(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @zend_hash_del(i32 %87, i8* %89)
  %91 = call i32 @zend_register_constant(%struct.TYPE_8__* %12)
  br label %92

92:                                               ; preds = %46, %45
  ret void
}

declare dso_local %struct.TYPE_9__* @php_stream_open_wrapper_ex(i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @php_stream_close(%struct.TYPE_9__*) #1

declare dso_local i32 @php_stream_to_zval(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @ZEND_CONSTANT_SET_FLAGS(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @zend_string_init(i32, i32) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

declare dso_local i32 @zend_hash_del(i32, i8*) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @zend_register_constant(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
