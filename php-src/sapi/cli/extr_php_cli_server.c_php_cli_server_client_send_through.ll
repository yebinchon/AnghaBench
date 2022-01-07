; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_client_send_through.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_client_send_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@__const.php_cli_server_client_send_through.tv = private unnamed_addr constant %struct.timeval { i32 10, i32 0 }, align 4
@SOCK_EAGAIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i64)* @php_cli_server_client_send_through to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_cli_server_client_send_through(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.timeval* @__const.php_cli_server_client_send_through.tv to i8*), i64 8, i1 false)
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %59, %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* %9, align 8
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @send(i32 %18, i8* %24, i64 %25, i32 0)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %15
  %30 = call i32 (...) @php_socket_errno()
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SOCK_EAGAIN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @POLLOUT, align 4
  %39 = call i32 @php_pollfd_for(i32 %37, i32 %38, %struct.timeval* %8)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 (...) @php_handle_aborted_connection()
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %4, align 8
  br label %64

49:                                               ; preds = %43
  %50 = call i32 (...) @php_handle_aborted_connection()
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %4, align 8
  br label %64

52:                                               ; preds = %29
  %53 = call i32 (...) @php_handle_aborted_connection()
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %64

55:                                               ; preds = %15
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %55, %42
  %60 = load i64, i64* %9, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %15, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %52, %49, %46
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @send(i32, i8*, i64, i32) #2

declare dso_local i32 @php_socket_errno(...) #2

declare dso_local i32 @php_pollfd_for(i32, i32, %struct.timeval*) #2

declare dso_local i32 @php_handle_aborted_connection(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
