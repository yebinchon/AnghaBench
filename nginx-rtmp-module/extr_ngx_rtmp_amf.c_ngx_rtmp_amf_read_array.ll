; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_amf.c_ngx_rtmp_amf_read_array.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_amf.c_ngx_rtmp_amf_read_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64)* @ngx_rtmp_amf_read_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_amf_read_array(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %13 = call i64 @ngx_rtmp_amf_get(i32* %11, i32* %12, i32 4)
  %14 = load i64, i64* @NGX_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @NGX_ERROR, align 8
  store i64 %17, i64* %4, align 8
  br label %48

18:                                               ; preds = %3
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %20 = call i32 @ngx_rtmp_amf_reverse_copy(i64* %8, i32* %19, i32 4)
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %43, %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32* [ %33, %30 ], [ null, %34 ]
  %37 = call i64 @ngx_rtmp_amf_read(i32* %26, i32* %36, i32 1)
  %38 = load i64, i64* @NGX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @NGX_ERROR, align 8
  store i64 %41, i64* %4, align 8
  br label %48

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load i64, i64* @NGX_OK, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %40, %16
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i64 @ngx_rtmp_amf_get(i32*, i32*, i32) #1

declare dso_local i32 @ngx_rtmp_amf_reverse_copy(i64*, i32*, i32) #1

declare dso_local i64 @ngx_rtmp_amf_read(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
