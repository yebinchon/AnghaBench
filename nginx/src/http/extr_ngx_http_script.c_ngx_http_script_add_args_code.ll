; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_script.c_ngx_http_script_add_args_code.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_script.c_ngx_http_script_add_args_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_script_mark_args_code = common dso_local global i32 0, align 4
@ngx_http_script_start_args_code = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ngx_http_script_add_args_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_script_add_args_code(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i64* @ngx_http_script_add_code(i32 %8, i32 8, i32* null)
  store i64* %9, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @NGX_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @ngx_http_script_mark_args_code, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i64* @ngx_http_script_add_code(i32 %21, i32 8, i32* %23)
  store i64* %24, i64** %4, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %14
  %30 = load i32, i32* @ngx_http_script_start_args_code, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %27, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64* @ngx_http_script_add_code(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
