; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_browser_module.c_ngx_http_browser_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_browser_module.c_ngx_http_browser_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@ngx_http_browser_module = common dso_local global i32 0, align 4
@NGX_HTTP_MODERN_BROWSER = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_ANCIENT_BROWSER = common dso_local global i64 0, align 8
@ngx_http_variable_null_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @ngx_http_browser_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_browser_variable(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @ngx_http_browser_module, align 4
  %12 = call %struct.TYPE_4__* @ngx_http_get_module_loc_conf(i32* %10, i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = call i64 @ngx_http_browser(i32* %13, %struct.TYPE_4__* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @NGX_HTTP_MODERN_BROWSER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @NGX_HTTP_MODERN_BROWSER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @NGX_OK, align 4
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %19, %3
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @NGX_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %34, %30
  %46 = load i32, i32* @ngx_http_variable_null_value, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @NGX_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %38, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_4__* @ngx_http_get_module_loc_conf(i32*, i32) #1

declare dso_local i64 @ngx_http_browser(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
