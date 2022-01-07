; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_socket_unix_test_connect.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_socket_unix_test_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_socket_unix_test_connect(%struct.sockaddr_un* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_un*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %8 = icmp ne %struct.sockaddr_un* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_UNIX, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %35

16:                                               ; preds = %9
  %17 = load i64, i64* @AF_UNIX, align 8
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = call i32 @socket(i64 %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %25 = bitcast %struct.sockaddr_un* %24 to %struct.sockaddr*
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @connect(i32 %23, %struct.sockaddr* %25, i64 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %3, align 4
  br label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @close(i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29, %21, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
