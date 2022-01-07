; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_sapi_lsapi_activate.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_sapi_lsapi_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@request_info = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SERVER_NAME\00", align 1
@DEFAULT_SLASH = common dso_local global i8 0, align 1
@parse_user_ini = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sapi_lsapi_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sapi_lsapi_activate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca %struct.TYPE_2__, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = load i32, i32* @request_info, align 4
  %12 = call i8* @SG(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* @FAILURE, align 4
  store i32 %18, i32* %1, align 4
  br label %113

19:                                               ; preds = %0
  %20 = call i64 (...) @php_ini_has_per_host_config()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = call i8* @sapi_lsapi_getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i8* @estrndup(i8* %29, i64 %30)
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @zend_str_tolower(i8* %32, i64 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @php_ini_activate_per_host_config(i8* %35, i64 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @efree(i8* %38)
  br label %40

40:                                               ; preds = %26, %22
  br label %41

41:                                               ; preds = %40, %19
  %42 = call i64 (...) @php_ini_has_per_dir_config()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %41
  %45 = load i32, i32* @request_info, align 4
  %46 = call i8* @SG(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  store i64 %50, i64* %4, align 8
  %51 = load i32, i32* @request_info, align 4
  %52 = call i8* @SG(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @IS_SLASH(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %44
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 2
  %64 = call i8* @emalloc(i64 %63)
  store i8* %64, i8** %2, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* @request_info, align 4
  %67 = call i8* @SG(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  %73 = call i32 @memcpy(i8* %65, i8* %70, i64 %72)
  %74 = load i8*, i8** %2, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @zend_dirname(i8* %74, i64 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i8, i8* @DEFAULT_SLASH, align 1
  %78 = load i8*, i8** %2, align 8
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %4, align 8
  %81 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 %77, i8* %81, align 1
  br label %93

82:                                               ; preds = %44
  %83 = load i32, i32* @request_info, align 4
  %84 = call i8* @SG(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i8* @estrndup(i8* %87, i64 %88)
  store i8* %89, i8** %2, align 8
  %90 = load i8*, i8** %2, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @zend_dirname(i8* %90, i64 %91)
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %82, %61
  %94 = load i8*, i8** %2, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %2, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @php_ini_activate_per_dir_config(i8* %97, i64 %98)
  %100 = load i8*, i8** %2, align 8
  %101 = call i32 @efree(i8* %100)
  br label %102

102:                                              ; preds = %93, %41
  %103 = load i64, i64* @parse_user_ini, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = call i32 (...) @lsapi_activate_user_ini()
  %107 = load i32, i32* @FAILURE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @FAILURE, align 4
  store i32 %110, i32* %1, align 4
  br label %113

111:                                              ; preds = %105, %102
  %112 = load i32, i32* @SUCCESS, align 4
  store i32 %112, i32* %1, align 4
  br label %113

113:                                              ; preds = %111, %109, %17
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i8* @SG(i32) #1

declare dso_local i64 @php_ini_has_per_host_config(...) #1

declare dso_local i8* @sapi_lsapi_getenv(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @estrndup(i8*, i64) #1

declare dso_local i32 @zend_str_tolower(i8*, i64) #1

declare dso_local i32 @php_ini_activate_per_host_config(i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @php_ini_has_per_dir_config(...) #1

declare dso_local i32 @IS_SLASH(i8 signext) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @zend_dirname(i8*, i64) #1

declare dso_local i32 @php_ini_activate_per_dir_config(i8*, i64) #1

declare dso_local i32 @lsapi_activate_user_ini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
