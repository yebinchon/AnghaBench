; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_amf.c_ngx_rtmp_amf_write_object.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_amf.c_ngx_rtmp_amf_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*, i64)* @ngx_rtmp_amf_write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_amf_write_object(i32* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %56, %3
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %25 = call i8* @ngx_rtmp_amf_reverse_copy(i32* %24, i32* %8, i32 2)
  %26 = call i64 @ngx_rtmp_amf_put(i32* %23, i8* %25, i32 2)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %4, align 8
  br label %68

31:                                               ; preds = %15
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ngx_rtmp_amf_put(i32* %32, i8* %38, i32 %39)
  %41 = load i64, i64* @NGX_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* @NGX_ERROR, align 8
  store i64 %44, i64* %4, align 8
  br label %68

45:                                               ; preds = %31
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = call i64 @ngx_rtmp_amf_write(i32* %46, %struct.TYPE_6__* %49, i32 1)
  %51 = load i64, i64* @NGX_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @NGX_ERROR, align 8
  store i64 %54, i64* %4, align 8
  br label %68

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %11

59:                                               ; preds = %11
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @ngx_rtmp_amf_put(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %4, align 8
  br label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @NGX_OK, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %66, %64, %53, %43, %29
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i64 @ngx_rtmp_amf_put(i32*, i8*, i32) #1

declare dso_local i8* @ngx_rtmp_amf_reverse_copy(i32*, i32*, i32) #1

declare dso_local i64 @ngx_rtmp_amf_write(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
