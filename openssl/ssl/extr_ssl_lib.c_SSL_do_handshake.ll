; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_do_handshake.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_do_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { {}*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32)* }
%struct.ssl_async_args = type { %struct.TYPE_11__* }

@SSL_F_SSL_DO_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_R_CONNECTION_TYPE_NOT_SET = common dso_local global i32 0, align 4
@SSL_MODE_ASYNC = common dso_local global i32 0, align 4
@ssl_do_handshake_intern = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_do_handshake(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssl_async_args, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.TYPE_11__*)**
  %9 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %8, align 8
  %10 = icmp eq i32 (%struct.TYPE_11__*)* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @SSL_F_SSL_DO_HANDSHAKE, align 4
  %13 = load i32, i32* @SSL_R_CONNECTION_TYPE_NOT_SET, align 4
  %14 = call i32 @SSLerr(i32 %12, i32 %13)
  store i32 -1, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @ossl_statem_check_finish_init(%struct.TYPE_11__* %16, i32 -1)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 %22(%struct.TYPE_11__* %23, i32 0)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i64 @SSL_in_init(%struct.TYPE_11__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %15
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i64 @SSL_in_before(%struct.TYPE_11__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %28, %15
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SSL_MODE_ASYNC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = call i32* (...) @ASYNC_get_current_job()
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %5, i32 0, i32 0
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = load i32, i32* @ssl_do_handshake_intern, align 4
  %47 = call i32 @ssl_start_async_job(%struct.TYPE_11__* %45, %struct.ssl_async_args* %5, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %55

48:                                               ; preds = %39, %32
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.TYPE_11__*)**
  %52 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = call i32 %52(%struct.TYPE_11__* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %42
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ossl_statem_check_finish_init(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @SSL_in_init(%struct.TYPE_11__*) #1

declare dso_local i64 @SSL_in_before(%struct.TYPE_11__*) #1

declare dso_local i32* @ASYNC_get_current_job(...) #1

declare dso_local i32 @ssl_start_async_job(%struct.TYPE_11__*, %struct.ssl_async_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
