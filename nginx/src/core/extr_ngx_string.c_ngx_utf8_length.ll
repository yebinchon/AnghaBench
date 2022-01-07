; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_utf8_length.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_utf8_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_utf8_length(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32* %11, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  br label %37

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ngx_utf8_decode(i32** %4, i32 %31)
  %33 = icmp sgt i32 %32, 1114111
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %3, align 8
  br label %42

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %12

40:                                               ; preds = %12
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @ngx_utf8_decode(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
