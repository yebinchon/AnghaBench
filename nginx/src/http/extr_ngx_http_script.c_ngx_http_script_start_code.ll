; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_script.c_ngx_http_script_start_code.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_script.c_ngx_http_script_start_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_script_start_code(i32* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32**, i32*** %6, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @ngx_array_create(i32* %12, i32 256, i32 1)
  %14 = load i32**, i32*** %6, align 8
  store i32* %13, i32** %14, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* null, i8** %4, align 8
  br label %25

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i8* @ngx_array_push_n(i32* %22, i64 %23)
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local i32* @ngx_array_create(i32*, i32, i32) #1

declare dso_local i8* @ngx_array_push_n(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
