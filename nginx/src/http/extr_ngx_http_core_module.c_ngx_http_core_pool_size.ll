; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_pool_size.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_pool_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_MIN_POOL_SIZE = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"the pool size must be no less than %uz\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_POOL_ALIGNMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"the pool size must be a multiple of %uz\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_core_pool_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_pool_size(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %8, align 8
  %11 = load i64*, i64** %8, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NGX_MIN_POOL_SIZE, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @NGX_LOG_EMERG, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* @NGX_MIN_POOL_SIZE, align 8
  %19 = call i32 @ngx_conf_log_error(i32 %16, i32* %17, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %20, i8** %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_POOL_ALIGNMENT, align 8
  %25 = urem i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @NGX_LOG_EMERG, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @NGX_POOL_ALIGNMENT, align 8
  %31 = call i32 @ngx_conf_log_error(i32 %28, i32* %29, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %4, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %33, %27, %15
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
