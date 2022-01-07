; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_php_variables.c_php_register_server_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_php_variables.c_php_register_server_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@http_globals = common dso_local global i32 0, align 4
@TRACK_VARS_SERVER = common dso_local global i64 0, align 8
@sapi_module = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@request_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PHP_AUTH_USER\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PHP_AUTH_PW\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PHP_AUTH_DIGEST\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"REQUEST_TIME_FLOAT\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"REQUEST_TIME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @php_register_server_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_register_server_variables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = load i32, i32* @http_globals, align 4
  %11 = call i32* @PG(i32 %10)
  %12 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @zval_ptr_dtor_nogc(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @array_init(i32* %16)
  %18 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %19 = icmp ne i32 (i32*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 %21(i32* %22)
  br label %24

24:                                               ; preds = %20, %0
  %25 = load i32*, i32** %2, align 8
  %26 = call i32* @Z_ARRVAL_P(i32* %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32, i32* @request_info, align 4
  call void @SG(%struct.TYPE_4__* sret %4, i32 %27)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* @request_info, align 4
  call void @SG(%struct.TYPE_4__* sret %5, i32 %32)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ZVAL_STRING(i32* %1, i64 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @php_register_variable_quick(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13, i32* %1, i32* %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* @request_info, align 4
  call void @SG(%struct.TYPE_4__* sret %6, i32 %39)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @request_info, align 4
  call void @SG(%struct.TYPE_4__* sret %7, i32 %44)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ZVAL_STRING(i32* %1, i64 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @php_register_variable_quick(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11, i32* %1, i32* %48)
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* @request_info, align 4
  call void @SG(%struct.TYPE_4__* sret %8, i32 %51)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @request_info, align 4
  call void @SG(%struct.TYPE_4__* sret %9, i32 %56)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ZVAL_STRING(i32* %1, i64 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @php_register_variable_quick(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15, i32* %1, i32* %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = call i32 (...) @sapi_get_request_time()
  %64 = call i32 @ZVAL_DOUBLE(i32* %1, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @php_register_variable_quick(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 18, i32* %1, i32* %65)
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @Z_DVAL(i32 %67)
  %69 = call i32 @zend_dval_to_lval(i32 %68)
  %70 = call i32 @ZVAL_LONG(i32* %1, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @php_register_variable_quick(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12, i32* %1, i32* %71)
  ret void
}

declare dso_local i32* @PG(i32) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32* @Z_ARRVAL_P(i32*) #1

declare dso_local void @SG(%struct.TYPE_4__* sret, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i64) #1

declare dso_local i32 @php_register_variable_quick(i8*, i32, i32*, i32*) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, i32) #1

declare dso_local i32 @sapi_get_request_time(...) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zend_dval_to_lval(i32) #1

declare dso_local i32 @Z_DVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
