; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_start_async_job.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_start_async_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32*, i32* }
%struct.ssl_async_args = type { i32 }

@ssl_async_wait_ctx_cb = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i8* null, align 8
@SSL_F_SSL_START_ASYNC_JOB = common dso_local global i32 0, align 4
@SSL_R_FAILED_TO_INIT_ASYNC = common dso_local global i32 0, align 4
@SSL_ASYNC_PAUSED = common dso_local global i8* null, align 8
@SSL_ASYNC_NO_JOBS = common dso_local global i8* null, align 8
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.ssl_async_args*, i32 (i8*)*)* @ssl_start_async_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_start_async_job(%struct.TYPE_4__* %0, %struct.ssl_async_args* %1, i32 (i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.ssl_async_args*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.ssl_async_args* %1, %struct.ssl_async_args** %6, align 8
  store i32 (i8*)* %2, i32 (i8*)** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = call i32* (...) @ASYNC_WAIT_CTX_new()
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %72

22:                                               ; preds = %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @ssl_async_wait_ctx_cb, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = call i32 @ASYNC_WAIT_CTX_set_callback(i32* %30, i32 %31, %struct.TYPE_4__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %72

36:                                               ; preds = %27, %22
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %44 = load %struct.ssl_async_args*, %struct.ssl_async_args** %6, align 8
  %45 = call i32 @ASYNC_start_job(i32** %39, i32* %42, i32* %8, i32 (i8*)* %43, %struct.ssl_async_args* %44, i32 4)
  switch i32 %45, label %65 [
    i32 131, label %46
    i32 128, label %53
    i32 129, label %57
    i32 130, label %61
  ]

46:                                               ; preds = %37
  %47 = load i8*, i8** @SSL_NOTHING, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @SSL_F_SSL_START_ASYNC_JOB, align 4
  %51 = load i32, i32* @SSL_R_FAILED_TO_INIT_ASYNC, align 4
  %52 = call i32 @SSLerr(i32 %50, i32 %51)
  store i32 -1, i32* %4, align 4
  br label %72

53:                                               ; preds = %37
  %54 = load i8*, i8** @SSL_ASYNC_PAUSED, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i32 -1, i32* %4, align 4
  br label %72

57:                                               ; preds = %37
  %58 = load i8*, i8** @SSL_ASYNC_NO_JOBS, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 -1, i32* %4, align 4
  br label %72

61:                                               ; preds = %37
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %37
  %66 = load i8*, i8** @SSL_NOTHING, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @SSL_F_SSL_START_ASYNC_JOB, align 4
  %70 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %71 = call i32 @SSLerr(i32 %69, i32 %70)
  store i32 -1, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %61, %57, %53, %46, %35, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32* @ASYNC_WAIT_CTX_new(...) #1

declare dso_local i32 @ASYNC_WAIT_CTX_set_callback(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ASYNC_start_job(i32**, i32*, i32*, i32 (i8*)*, %struct.ssl_async_args*, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
