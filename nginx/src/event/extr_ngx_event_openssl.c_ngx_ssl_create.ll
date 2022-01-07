; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_create.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SSL_CTX_new() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_ssl_server_conf_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SSL_CTX_set_ex_data() failed\00", align 1
@ngx_ssl_certificate_index = common dso_local global i32 0, align 4
@NGX_SSL_BUFSIZE = common dso_local global i32 0, align 4
@SSL_OP_SINGLE_DH_USE = common dso_local global i32 0, align 4
@NGX_SSL_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@NGX_SSL_SSLv3 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1 = common dso_local global i32 0, align 4
@ngx_ssl_info_callback = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_2 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_3 = common dso_local global i32 0, align 4
@SSL_MODE_NO_AUTO_CHAIN = common dso_local global i32 0, align 4
@SSL_MODE_RELEASE_BUFFERS = common dso_local global i32 0, align 4
@SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS = common dso_local global i32 0, align 4
@SSL_OP_MICROSOFT_BIG_SSLV3_BUFFER = common dso_local global i32 0, align 4
@SSL_OP_MICROSOFT_SESS_ID_BUG = common dso_local global i32 0, align 4
@SSL_OP_MSIE_SSLV2_RSA_PADDING = common dso_local global i32 0, align 4
@SSL_OP_NETSCAPE_CHALLENGE_BUG = common dso_local global i32 0, align 4
@SSL_OP_NO_ANTI_REPLAY = common dso_local global i32 0, align 4
@SSL_OP_NO_CLIENT_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL_OP_NO_COMPRESSION = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_1 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_2 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_3 = common dso_local global i32 0, align 4
@SSL_OP_SSLEAY_080_CLIENT_DH_BUG = common dso_local global i32 0, align 4
@SSL_OP_SSLREF2_REUSE_CERT_TYPE_BUG = common dso_local global i32 0, align 4
@SSL_OP_TLS_BLOCK_PADDING_BUG = common dso_local global i32 0, align 4
@SSL_OP_TLS_D5_BUG = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_ssl_create(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = call i32 (...) @SSLv23_method()
  %9 = call i32* @SSL_CTX_new(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_LOG_EMERG, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_ssl_error(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %104

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @ngx_ssl_server_conf_index, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @SSL_CTX_set_ex_data(i32* %26, i32 %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32, i32* @NGX_LOG_EMERG, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ngx_ssl_error(i32 %32, i32 %35, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @NGX_ERROR, align 4
  store i32 %37, i32* %4, align 4
  br label %104

38:                                               ; preds = %23
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @ngx_ssl_certificate_index, align 4
  %43 = call i64 @SSL_CTX_set_ex_data(i32* %41, i32 %42, i8* null)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @NGX_LOG_EMERG, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ngx_ssl_error(i32 %46, i32 %49, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @NGX_ERROR, align 4
  store i32 %51, i32* %4, align 4
  br label %104

52:                                               ; preds = %38
  %53 = load i32, i32* @NGX_SSL_BUFSIZE, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SSL_OP_SINGLE_DH_USE, align 4
  %60 = call i32 @SSL_CTX_set_options(i32* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NGX_SSL_SSLv2, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %52
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %70 = call i32 @SSL_CTX_set_options(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %52
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @NGX_SSL_SSLv3, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %81 = call i32 @SSL_CTX_set_options(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @NGX_SSL_TLSv1, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @SSL_OP_NO_TLSv1, align 4
  %92 = call i32 @SSL_CTX_set_options(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @SSL_CTX_set_read_ahead(i32* %96, i32 1)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ngx_ssl_info_callback, align 4
  %102 = call i32 @SSL_CTX_set_info_callback(i32* %100, i32 %101)
  %103 = load i32, i32* @NGX_OK, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %93, %45, %31, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_method(...) #1

declare dso_local i32 @ngx_ssl_error(i32, i32, i32, i8*) #1

declare dso_local i64 @SSL_CTX_set_ex_data(i32*, i32, i8*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_read_ahead(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_info_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
