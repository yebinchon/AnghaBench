; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_parse.c_ngx_parse_offset.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_parse.c_ngx_parse_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_parse_offset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NGX_ERROR, align 4
  store i32 %15, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %40 [
    i32 75, label %25
    i32 107, label %25
    i32 77, label %30
    i32 109, label %30
    i32 71, label %35
    i32 103, label %35
  ]

25:                                               ; preds = %16, %16
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %29 = sdiv i32 %28, 1024
  store i32 %29, i32* %7, align 4
  store i32 1024, i32* %6, align 4
  br label %42

30:                                               ; preds = %16, %16
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %34 = sdiv i32 %33, 1048576
  store i32 %34, i32* %7, align 4
  store i32 1048576, i32* %6, align 4
  br label %42

35:                                               ; preds = %16, %16
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %39 = sdiv i32 %38, 1073741824
  store i32 %39, i32* %7, align 4
  store i32 1073741824, i32* %6, align 4
  br label %42

40:                                               ; preds = %16
  %41 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  store i32 %41, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %35, %30, %25
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ngx_atoof(i32* %45, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NGX_ERROR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %42
  %56 = load i32, i32* @NGX_ERROR, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %55, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ngx_atoof(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
