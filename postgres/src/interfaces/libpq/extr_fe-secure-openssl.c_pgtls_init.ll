; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_pgtls_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_pgtls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssl_lib_initialized = common dso_local global i32 0, align 4
@pq_init_ssl_lib = common dso_local global i64 0, align 8
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@pq_init_crypto_lib = common dso_local global i64 0, align 8
@pq_lockarray = common dso_local global i32** null, align 8
@pq_lockingcallback = common dso_local global i32 0, align 4
@pq_threadidcallback = common dso_local global i32 0, align 4
@ssl_config_mutex = common dso_local global i32* null, align 8
@ssl_open_connections = common dso_local global i32 0, align 4
@win32_ssl_create_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgtls_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @ssl_lib_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @pq_init_ssl_lib, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = call i32 @OPENSSL_config(i32* null)
  %10 = call i32 (...) @SSL_library_init()
  %11 = call i32 (...) @SSL_load_error_strings()
  br label %12

12:                                               ; preds = %8, %5
  store i32 1, i32* @ssl_lib_initialized, align 4
  br label %13

13:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @OPENSSL_config(i32*) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
