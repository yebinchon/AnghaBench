; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_shutdown.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { {}* }
%struct.ssl_async_args = type { %struct.TYPE_9__, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }

@SSL_F_SSL_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_R_UNINITIALIZED = common dso_local global i32 0, align 4
@SSL_MODE_ASYNC = common dso_local global i32 0, align 4
@OTHERFUNC = common dso_local global i32 0, align 4
@ssl_io_intern = common dso_local global i32 0, align 4
@SSL_R_SHUTDOWN_WHILE_IN_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_shutdown(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.ssl_async_args, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @SSL_F_SSL_SHUTDOWN, align 4
  %11 = load i32, i32* @SSL_R_UNINITIALIZED, align 4
  %12 = call i32 @SSLerr(i32 %10, i32 %11)
  store i32 -1, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @SSL_in_init(%struct.TYPE_10__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SSL_MODE_ASYNC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = call i32* (...) @ASYNC_get_current_job()
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %4, i32 0, i32 2
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %29, align 8
  %30 = load i32, i32* @OTHERFUNC, align 4
  %31 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %4, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.TYPE_10__*)**
  %37 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %36, align 8
  %38 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 (%struct.TYPE_10__*)* %37, i32 (%struct.TYPE_10__*)** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load i32, i32* @ssl_io_intern, align 4
  %42 = call i32 @ssl_start_async_job(%struct.TYPE_10__* %40, %struct.ssl_async_args* %4, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %24, %17
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.TYPE_10__*)**
  %49 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = call i32 %49(%struct.TYPE_10__* %50)
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %13
  %53 = load i32, i32* @SSL_F_SSL_SHUTDOWN, align 4
  %54 = load i32, i32* @SSL_R_SHUTDOWN_WHILE_IN_INIT, align 4
  %55 = call i32 @SSLerr(i32 %53, i32 %54)
  store i32 -1, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %43, %27, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_in_init(%struct.TYPE_10__*) #1

declare dso_local i32* @ASYNC_get_current_job(...) #1

declare dso_local i32 @ssl_start_async_job(%struct.TYPE_10__*, %struct.ssl_async_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
