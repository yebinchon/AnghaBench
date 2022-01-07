; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_out.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@ngx_http_image_filter_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"gdImageJpegPtr() failed\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gdImageGifPtr() failed\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gdImagePngPtr() failed\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"nginx was built without GD WebP support\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32, i32, i32*)* @ngx_http_image_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_image_out(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %44 [
    i32 130, label %15
    i32 131, label %35
    i32 129, label %39
    i32 128, label %43
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = load i32, i32* @ngx_http_image_filter_module, align 4
  %18 = call %struct.TYPE_10__* @ngx_http_get_module_loc_conf(%struct.TYPE_9__* %16, i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %13, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ngx_http_image_filter_get_value(%struct.TYPE_9__* %19, i32 %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32* null, i32** %5, align 8
  br label %59

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32* @gdImageJpegPtr(i32 %31, i32* %32, i32 %33)
  store i32* %34, i32** %11, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %45

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @gdImageGifPtr(i32 %36, i32* %37)
  store i32* %38, i32** %11, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %45

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @gdImagePngPtr(i32 %40, i32* %41)
  store i32* %42, i32** %11, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %45

43:                                               ; preds = %4
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %45

44:                                               ; preds = %4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %45

45:                                               ; preds = %44, %43, %39, %35, %30
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* @NGX_LOG_ERR, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @ngx_log_error(i32 %49, i32 %54, i32 0, i8* %55)
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32*, i32** %11, align 8
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %57, %29
  %60 = load i32*, i32** %5, align 8
  ret i32* %60
}

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_loc_conf(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ngx_http_image_filter_get_value(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @gdImageJpegPtr(i32, i32*, i32) #1

declare dso_local i32* @gdImageGifPtr(i32, i32*) #1

declare dso_local i32* @gdImagePngPtr(i32, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
