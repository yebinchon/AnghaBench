; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_encode.c_ngx_http_v2_write_int.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_encode.c_ngx_http_v2_write_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @ngx_http_v2_write_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_write_int(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %13, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %4, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %20, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %30, %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 128
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %31, 128
  %33 = add nsw i32 %32, 128
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 128
  store i32 %37, i32* %7, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %38, %11
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
