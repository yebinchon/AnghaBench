; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_select_server_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_select_server_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@ex_data_idx = common dso_local global i32 0, align 4
@SSL_TEST_SERVERNAME_SERVER1 = common dso_local global i8* null, align 8
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"server2\00", align 1
@SSL_TEST_SERVERNAME_SERVER2 = common dso_local global i8* null, align 8
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"server1\00", align 1
@SSL_TLSEXT_ERR_ALERT_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @select_server_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_server_ctx(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %13 = call i8* @SSL_get_servername(i32* %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @ex_data_idx, align 4
  %16 = call i64 @SSL_get_ex_data(i32* %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER1, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @SSL_set_SSL_CTX(i32* %32, i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @SSL_clear_options(i32* %35, i32 -1)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @SSL_CTX_get_options(i32* %38)
  %40 = call i32 @SSL_set_options(i32* %37, i32 %39)
  %41 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER2, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %25
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER1, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER1, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @SSL_TLSEXT_ERR_ALERT_FATAL, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %57, %49, %29, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i8* @SSL_get_servername(i32*, i32) #1

declare dso_local i64 @SSL_get_ex_data(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SSL_set_SSL_CTX(i32*, i32*) #1

declare dso_local i32 @SSL_clear_options(i32*, i32) #1

declare dso_local i32 @SSL_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_get_options(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
