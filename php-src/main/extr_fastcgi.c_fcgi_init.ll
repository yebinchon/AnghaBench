; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_init.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@is_initialized = common dso_local global i32 0, align 4
@fcgi_mgmt_vars = common dso_local global i32 0, align 4
@fcgi_free_mgmt_var_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"FCGI_MPXS_CONNS\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8
@is_fastcgi = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@PIPE_READMODE_BYTE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@fcgi_accept_mutex = common dso_local global i64 0, align 8
@fcgi_shutdown_thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcgi_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @is_initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %0
  store i32 4, i32* %3, align 4
  %7 = load i32, i32* @fcgi_free_mgmt_var_cb, align 4
  %8 = call i32 @zend_hash_init(i32* @fcgi_mgmt_vars, i32 8, i32* null, i32 %7, i32 1)
  %9 = call i32 @fcgi_set_mgmt_var(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 1, i32* @is_initialized, align 4
  store i64 0, i64* @errno, align 8
  %10 = bitcast i32* %2 to %struct.sockaddr*
  %11 = call i64 @getpeername(i32 0, %struct.sockaddr* %10, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOTCONN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @fcgi_setup_signals()
  store i32 1, i32* @is_fastcgi, align 4
  store i32 1, i32* %1, align 4
  br label %22

19:                                               ; preds = %13, %6
  store i32 0, i32* @is_fastcgi, align 4
  store i32 0, i32* %1, align 4
  br label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @is_fastcgi, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %19, %17
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @fcgi_set_mgmt_var(i8*, i32, i8*, i32) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @fcgi_setup_signals(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
