; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_error.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ENOENT = common dso_local global i32 0, align 4
@NGX_ENOTDIR = common dso_local global i32 0, align 4
@NGX_ENAMETOOLONG = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_EACCES = common dso_local global i32 0, align 4
@NGX_EPERM = common dso_local global i32 0, align 4
@NGX_HTTP_FORBIDDEN = common dso_local global i32 0, align 4
@NGX_EEXIST = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_ALLOWED = common dso_local global i32 0, align 4
@NGX_ENOSPC = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@NGX_HTTP_INSUFFICIENT_STORAGE = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32*)* @ngx_http_dav_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_dav_error(i32* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NGX_ENOENT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NGX_ENOTDIR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NGX_ENAMETOOLONG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %16, %5
  %25 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %11, align 4
  br label %58

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NGX_EACCES, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NGX_EPERM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @NGX_HTTP_FORBIDDEN, align 4
  store i32 %37, i32* %11, align 4
  br label %57

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NGX_EEXIST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @NGX_HTTP_NOT_ALLOWED, align 4
  store i32 %44, i32* %11, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NGX_ENOSPC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @NGX_LOG_CRIT, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @NGX_HTTP_INSUFFICIENT_STORAGE, align 4
  store i32 %51, i32* %11, align 4
  br label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @NGX_LOG_CRIT, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @ngx_log_error(i32 %59, i32* %60, i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %62, i32* %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
