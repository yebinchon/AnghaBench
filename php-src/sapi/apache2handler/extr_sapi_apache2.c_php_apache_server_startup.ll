; ModuleID = '/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_server_startup.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_server_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*)*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"apache2hook_post_config\00", align 1
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@apache2_php_ini_path_override = common dso_local global i64 0, align 8
@apache2_sapi_module = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SUCCESS = common dso_local global i64 0, align 8
@DONE = common dso_local global i32 0, align 4
@php_apache_server_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_8__*)* @php_apache_server_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_apache_server_startup(i32* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @apr_pool_userdata_get(i8** %10, i8* %12, i32 %17)
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* @apr_pool_cleanup_null, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @apr_pool_userdata_set(i8* inttoptr (i64 1 to i8*), i8* %22, i32 %23, i32 %28)
  %30 = load i32, i32* @OK, align 4
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load i64, i64* @apache2_php_ini_path_override, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @apache2_php_ini_path_override, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @apache2_sapi_module, i32 0, i32 1), align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = call i32 (...) @zend_signal_startup()
  %38 = call i32 @sapi_startup(%struct.TYPE_9__* @apache2_sapi_module)
  %39 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @apache2_sapi_module, i32 0, i32 0), align 8
  %40 = call i64 %39(%struct.TYPE_9__* @apache2_sapi_module)
  %41 = load i64, i64* @SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @DONE, align 4
  store i32 %44, i32* %5, align 4
  br label %53

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @php_apache_server_shutdown, align 4
  %48 = load i32, i32* @apr_pool_cleanup_null, align 4
  %49 = call i32 @apr_pool_cleanup_register(i32* %46, i32* null, i32 %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @php_apache_add_version(i32* %50)
  %52 = load i32, i32* @OK, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %43, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @apr_pool_userdata_get(i8**, i8*, i32) #1

declare dso_local i32 @apr_pool_userdata_set(i8*, i8*, i32, i32) #1

declare dso_local i32 @zend_signal_startup(...) #1

declare dso_local i32 @sapi_startup(%struct.TYPE_9__*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, i32*, i32, i32) #1

declare dso_local i32 @php_apache_add_version(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
