; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_handle_ssl_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_handle_ssl_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SSL: fatal protocol error\00", align 1
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"SSL: %s\00", align 1
@.str.2 = private unnamed_addr constant [157 x i8] c"SSL_R_NO_SHARED_CIPHER: no suitable shared cipher could be used.  This could be because the server is missing an SSL certificate (local_cert context option)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"SSL operation failed with code %d. %s%s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"OpenSSL Error messages:\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32)* @php_openssl_handle_ssl_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_handle_ssl_error(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @SSL_get_error(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  store i32 1, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %74 [
    i32 129, label %25
    i32 131, label %26
    i32 130, label %26
    i32 132, label %38
  ]

25:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %124

26:                                               ; preds = %3, %3
  %27 = load i32, i32* @EAGAIN, align 4
  store i32 %27, i32* @errno, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i32 [ 1, %30 ], [ %35, %31 ]
  store i32 %37, i32* %12, align 4
  br label %124

38:                                               ; preds = %3
  %39 = call i32 (...) @ERR_peek_error()
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @php_openssl_is_http_stream_talking_to_iis(%struct.TYPE_13__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = call i64 (...) @ERR_get_error()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @E_WARNING, align 4
  %53 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48, %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %59 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @SSL_set_shutdown(i32 %57, i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i32 0, i32* %12, align 4
  br label %72

64:                                               ; preds = %41
  %65 = call i32 (...) @php_socket_errno()
  %66 = call i8* @php_socket_strerror(i32 %65, i32* null, i32 0)
  store i8* %66, i8** %13, align 8
  %67 = load i32, i32* @E_WARNING, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @efree(i8* %70)
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %64, %54
  br label %124

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %3, %73
  %75 = call i64 (...) @ERR_get_error()
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @ERR_GET_REASON(i64 %76)
  switch i32 %77, label %81 [
    i32 128, label %78
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @E_WARNING, align 4
  %80 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %79, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %123

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %94, %81
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %85 = call i32 @ERR_error_string_n(i64 %83, i8* %84, i32 512)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @smart_str_appendc(%struct.TYPE_12__* %10, i8 signext 10)
  br label %91

91:                                               ; preds = %89, %82
  %92 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %93 = call i32 @smart_str_appends(%struct.TYPE_12__* %10, i8* %92)
  br label %94

94:                                               ; preds = %91
  %95 = call i64 (...) @ERR_get_error()
  store i64 %95, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %82, label %97

97:                                               ; preds = %94
  %98 = call i32 @smart_str_0(%struct.TYPE_12__* %10)
  %99 = load i32, i32* @E_WARNING, align 4
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @ZSTR_VAL(i32 %111)
  br label %114

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi i8* [ %112, %109 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %113 ]
  %116 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %100, i8* %105, i8* %115)
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @smart_str_free(%struct.TYPE_12__* %10)
  br label %122

122:                                              ; preds = %120, %114
  br label %123

123:                                              ; preds = %122, %78
  store i32 0, i32* %12, align 4
  store i32 0, i32* @errno, align 4
  br label %124

124:                                              ; preds = %123, %72, %36, %25
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local i32 @SSL_get_error(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ERR_peek_error(...) #1

declare dso_local i32 @php_openssl_is_http_stream_talking_to_iis(%struct.TYPE_13__*) #1

declare dso_local i64 @ERR_get_error(...) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @SSL_set_shutdown(i32, i32) #1

declare dso_local i8* @php_socket_strerror(i32, i32*, i32) #1

declare dso_local i32 @php_socket_errno(...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @ERR_GET_REASON(i64) #1

declare dso_local i32 @ERR_error_string_n(i64, i8*, i32) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @smart_str_appends(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_12__*) #1

declare dso_local i8* @ZSTR_VAL(i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
