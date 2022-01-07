; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_write_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_write_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i64, %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { {}* }
%struct.ssl_async_args = type { i64, %struct.TYPE_8__, i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i8*, i64, i64*)* }

@SSL_F_SSL_WRITE_INTERNAL = common dso_local global i32 0, align 4
@SSL_R_UNINITIALIZED = common dso_local global i32 0, align 4
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4
@SSL_R_PROTOCOL_IS_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECT_RETRY = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_ACCEPT_RETRY = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_READ_RETRY = common dso_local global i64 0, align 8
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@SSL_MODE_ASYNC = common dso_local global i32 0, align 4
@WRITEFUNC = common dso_local global i32 0, align 4
@ssl_io_intern = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_write_internal(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssl_async_args, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @SSL_F_SSL_WRITE_INTERNAL, align 4
  %18 = load i32, i32* @SSL_R_UNINITIALIZED, align 4
  %19 = call i32 @SSLerr(i32 %17, i32 %18)
  store i32 -1, i32* %5, align 4
  br label %105

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @SSL_NOTHING, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @SSL_F_SSL_WRITE_INTERNAL, align 4
  %32 = load i32, i32* @SSL_R_PROTOCOL_IS_SHUTDOWN, align 4
  %33 = call i32 @SSLerr(i32 %31, i32 %32)
  store i32 -1, i32* %5, align 4
  br label %105

34:                                               ; preds = %20
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SSL_EARLY_DATA_CONNECT_RETRY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SSL_EARLY_DATA_ACCEPT_RETRY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SSL_EARLY_DATA_READ_RETRY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %40, %34
  %53 = load i32, i32* @SSL_F_SSL_WRITE_INTERNAL, align 4
  %54 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %55 = call i32 @SSLerr(i32 %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %105

56:                                               ; preds = %46
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = call i32 @ossl_statem_check_finish_init(%struct.TYPE_10__* %57, i32 1)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SSL_MODE_ASYNC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %56
  %66 = call i32* (...) @ASYNC_get_current_job()
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %11, i32 0, i32 4
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %70, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %11, i32 0, i32 3
  store i8* %71, i8** %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %11, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @WRITEFUNC, align 4
  %76 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %11, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = bitcast {}** %80 to i32 (%struct.TYPE_10__*, i8*, i64, i64*)**
  %82 = load i32 (%struct.TYPE_10__*, i8*, i64, i64*)*, i32 (%struct.TYPE_10__*, i8*, i64, i64*)** %81, align 8
  %83 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %11, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 (%struct.TYPE_10__*, i8*, i64, i64*)* %82, i32 (%struct.TYPE_10__*, i8*, i64, i64*)** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = load i32, i32* @ssl_io_intern, align 4
  %87 = call i32 @ssl_start_async_job(%struct.TYPE_10__* %85, %struct.ssl_async_args* %11, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %105

93:                                               ; preds = %65, %56
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = bitcast {}** %97 to i32 (%struct.TYPE_10__*, i8*, i64, i64*)**
  %99 = load i32 (%struct.TYPE_10__*, i8*, i64, i64*)*, i32 (%struct.TYPE_10__*, i8*, i64, i64*)** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = call i32 %99(%struct.TYPE_10__* %100, i8* %101, i64 %102, i64* %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %93, %68, %52, %27, %16
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ossl_statem_check_finish_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @ASYNC_get_current_job(...) #1

declare dso_local i32 @ssl_start_async_job(%struct.TYPE_10__*, %struct.ssl_async_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
