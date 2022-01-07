; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_utf8_cpystrn.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_utf8_cpystrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_utf8_cpystrn(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %5, align 8
  br label %63

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %59, %31, %16
  %18 = load i64, i64* %8, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %9, align 8
  br label %17

38:                                               ; preds = %28
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %5, align 8
  br label %63

40:                                               ; preds = %21
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @ngx_utf8_decode(i32** %11, i64 %42)
  %44 = icmp sgt i32 %43, 1114111
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ult i32* %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  %54 = load i32, i32* %52, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %9, align 8
  br label %47

59:                                               ; preds = %47
  br label %17

60:                                               ; preds = %45, %17
  %61 = load i32*, i32** %6, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %60, %38, %14
  %64 = load i32*, i32** %5, align 8
  ret i32* %64
}

declare dso_local i32 @ngx_utf8_decode(i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
