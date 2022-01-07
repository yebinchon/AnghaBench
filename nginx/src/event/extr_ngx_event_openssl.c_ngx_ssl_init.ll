; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_COMP = common dso_local global i32 0, align 4
@ssl_comp_methods = common dso_local global i32 0, align 4
@ngx_ssl_connection_index = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SSL_get_ex_new_index() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_ssl_server_conf_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SSL_CTX_get_ex_new_index() failed\00", align 1
@ngx_ssl_session_cache_index = common dso_local global i32 0, align 4
@ngx_ssl_session_ticket_keys_index = common dso_local global i32 0, align 4
@ngx_ssl_certificate_index = common dso_local global i32 0, align 4
@ngx_ssl_next_certificate_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"X509_get_ex_new_index() failed\00", align 1
@ngx_ssl_certificate_name_index = common dso_local global i32 0, align 4
@ngx_ssl_stapling_index = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_ssl_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i32 @OPENSSL_config(i32* null)
  %6 = call i32 (...) @SSL_library_init()
  %7 = call i32 (...) @SSL_load_error_strings()
  %8 = call i32 (...) @OpenSSL_add_all_algorithms()
  %9 = load i32, i32* @SSL_COMP, align 4
  %10 = call i32 @STACK_OF(i32 %9)
  %11 = load i32, i32* @ssl_comp_methods, align 4
  %12 = mul nsw i32 %10, %11
  %13 = call i32 (...) @SSL_COMP_get_compression_methods()
  store i32 %13, i32* @ssl_comp_methods, align 4
  %14 = load i32, i32* @ssl_comp_methods, align 4
  %15 = call i32 @sk_SSL_COMP_num(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %20, %1
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ssl_comp_methods, align 4
  %22 = call i32 @sk_SSL_COMP_pop(i32 %21)
  br label %16

23:                                               ; preds = %16
  %24 = call i32 @SSL_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %24, i32* @ngx_ssl_connection_index, align 4
  %25 = load i32, i32* @ngx_ssl_connection_index, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @NGX_LOG_ALERT, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ngx_ssl_error(i32 %28, i32* %29, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @NGX_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %97

32:                                               ; preds = %23
  %33 = call i32 @SSL_CTX_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %33, i32* @ngx_ssl_server_conf_index, align 4
  %34 = load i32, i32* @ngx_ssl_server_conf_index, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @NGX_LOG_ALERT, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ngx_ssl_error(i32 %37, i32* %38, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @NGX_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %97

41:                                               ; preds = %32
  %42 = call i32 @SSL_CTX_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %42, i32* @ngx_ssl_session_cache_index, align 4
  %43 = load i32, i32* @ngx_ssl_session_cache_index, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @NGX_LOG_ALERT, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @ngx_ssl_error(i32 %46, i32* %47, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %2, align 4
  br label %97

50:                                               ; preds = %41
  %51 = call i32 @SSL_CTX_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %51, i32* @ngx_ssl_session_ticket_keys_index, align 4
  %52 = load i32, i32* @ngx_ssl_session_ticket_keys_index, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @NGX_LOG_ALERT, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @ngx_ssl_error(i32 %55, i32* %56, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @NGX_ERROR, align 4
  store i32 %58, i32* %2, align 4
  br label %97

59:                                               ; preds = %50
  %60 = call i32 @SSL_CTX_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %60, i32* @ngx_ssl_certificate_index, align 4
  %61 = load i32, i32* @ngx_ssl_certificate_index, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @NGX_LOG_ALERT, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @ngx_ssl_error(i32 %64, i32* %65, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @NGX_ERROR, align 4
  store i32 %67, i32* %2, align 4
  br label %97

68:                                               ; preds = %59
  %69 = call i32 @X509_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %69, i32* @ngx_ssl_next_certificate_index, align 4
  %70 = load i32, i32* @ngx_ssl_next_certificate_index, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @NGX_LOG_ALERT, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @ngx_ssl_error(i32 %73, i32* %74, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @NGX_ERROR, align 4
  store i32 %76, i32* %2, align 4
  br label %97

77:                                               ; preds = %68
  %78 = call i32 @X509_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %78, i32* @ngx_ssl_certificate_name_index, align 4
  %79 = load i32, i32* @ngx_ssl_certificate_name_index, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* @NGX_LOG_ALERT, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @ngx_ssl_error(i32 %82, i32* %83, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @NGX_ERROR, align 4
  store i32 %85, i32* %2, align 4
  br label %97

86:                                               ; preds = %77
  %87 = call i32 @X509_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %87, i32* @ngx_ssl_stapling_index, align 4
  %88 = load i32, i32* @ngx_ssl_stapling_index, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* @NGX_LOG_ALERT, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @ngx_ssl_error(i32 %91, i32* %92, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @NGX_ERROR, align 4
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @NGX_OK, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %90, %81, %72, %63, %54, %45, %36, %27
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @OPENSSL_config(i32*) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i32 @SSL_COMP_get_compression_methods(...) #1

declare dso_local i32 @sk_SSL_COMP_num(i32) #1

declare dso_local i32 @sk_SSL_COMP_pop(i32) #1

declare dso_local i32 @SSL_get_ex_new_index(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_ssl_error(i32, i32*, i32, i8*) #1

declare dso_local i32 @SSL_CTX_get_ex_new_index(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @X509_get_ex_new_index(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
