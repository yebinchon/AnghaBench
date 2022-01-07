; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_escape_html.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_escape_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_escape_html(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  switch i32 %19, label %32 [
    i32 60, label %20
    i32 62, label %23
    i32 38, label %26
    i32 34, label %29
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %9, align 8
  br label %33

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 3
  store i64 %25, i64* %9, align 8
  br label %33

26:                                               ; preds = %16
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %9, align 8
  br label %33

29:                                               ; preds = %16
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 5
  store i64 %31, i64* %9, align 8
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %29, %26, %23, %20
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %7, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %4, align 8
  br label %99

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %89 [
    i32 60, label %47
    i32 62, label %56
    i32 38, label %65
    i32 34, label %76
  ]

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  store i32 38, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 108, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  store i32 116, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  store i32 59, i32* %54, align 4
  br label %93

56:                                               ; preds = %42
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  store i32 38, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  store i32 103, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %5, align 8
  store i32 116, i32* %61, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 59, i32* %63, align 4
  br label %93

65:                                               ; preds = %42
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %5, align 8
  store i32 38, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  store i32 97, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  store i32 109, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  store i32 112, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %5, align 8
  store i32 59, i32* %74, align 4
  br label %93

76:                                               ; preds = %42
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %5, align 8
  store i32 38, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %5, align 8
  store i32 113, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %5, align 8
  store i32 117, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %5, align 8
  store i32 111, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %5, align 8
  store i32 116, i32* %85, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %5, align 8
  store i32 59, i32* %87, align 4
  br label %93

89:                                               ; preds = %42
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %89, %76, %65, %56, %47
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %7, align 8
  br label %39

96:                                               ; preds = %39
  %97 = load i32*, i32** %5, align 8
  %98 = ptrtoint i32* %97 to i64
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %96, %36
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
