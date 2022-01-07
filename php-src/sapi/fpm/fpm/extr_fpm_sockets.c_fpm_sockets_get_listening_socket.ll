; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_get_listening_socket.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_get_listening_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32 }
%struct.sockaddr = type { i32 }

@FPM_GET_USE_SOCKET = common dso_local global i32 0, align 4
@FPM_STORE_USE_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*, %struct.sockaddr*, i32)* @fpm_sockets_get_listening_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_sockets_get_listening_socket(%struct.fpm_worker_pool_s* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpm_worker_pool_s*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %10 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %11 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FPM_GET_USE_SOCKET, align 4
  %14 = call i32 @fpm_sockets_hash_op(i32 0, %struct.sockaddr* %9, i32 0, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @fpm_sockets_new_listening_socket(%struct.fpm_worker_pool_s* %20, %struct.sockaddr* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %27 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FPM_STORE_USE_SOCKET, align 4
  %30 = call i32 @fpm_sockets_hash_op(i32 %24, %struct.sockaddr* %25, i32 0, i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @fpm_sockets_hash_op(i32, %struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @fpm_sockets_new_listening_socket(%struct.fpm_worker_pool_s*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
