; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_socket_af_inet_socket_by_addr.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_socket_af_inet_socket_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32 }
%struct.addrinfo = type { i32, i32, i32, %struct.addrinfo*, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Found address for %s, socket opened on %s\00", align 1
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Found multiple addresses for %s, %s ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*, i8*, i8*)* @fpm_socket_af_inet_socket_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_socket_af_inet_socket_by_addr(%struct.fpm_worker_pool_s* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpm_worker_pool_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 -1, i32* %14, align 4
  %20 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 32)
  %21 = load i32, i32* @AF_UNSPEC, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @getaddrinfo(i8* %25, i8* %26, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %27, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @ZLOG_ERROR, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @gai_strerror(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (i32, i8*, i8*, ...) @zlog(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %81

36:                                               ; preds = %3
  %37 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %37, %struct.addrinfo** %10, align 8
  br label %38

38:                                               ; preds = %73, %36
  %39 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %40 = icmp ne %struct.addrinfo* %39, null
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  %42 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fpm_get_in_addr(i32 %47)
  %49 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %50 = call i32 @inet_ntop(i32 %44, i32 %48, i8* %19, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %41
  %54 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %55 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @fpm_sockets_get_listening_socket(%struct.fpm_worker_pool_s* %54, i32 %57, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @ZLOG_DEBUG, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @zlog(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %19)
  br label %67

67:                                               ; preds = %63, %53
  br label %72

68:                                               ; preds = %41
  %69 = load i32, i32* @ZLOG_WARNING, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @zlog(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %19)
  br label %72

72:                                               ; preds = %68, %67
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 3
  %76 = load %struct.addrinfo*, %struct.addrinfo** %75, align 8
  store %struct.addrinfo* %76, %struct.addrinfo** %10, align 8
  br label %38

77:                                               ; preds = %38
  %78 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %79 = call i32 @freeaddrinfo(%struct.addrinfo* %78)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %77, %29
  %82 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @zlog(i32, i8*, i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #2

declare dso_local i32 @fpm_get_in_addr(i32) #2

declare dso_local i32 @fpm_sockets_get_listening_socket(%struct.fpm_worker_pool_s*, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
