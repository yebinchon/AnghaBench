; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_new_listening_socket.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_new_listening_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i8* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to create new listening socket: socket()\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to change socket attribute\00", align 1
@FPM_AF_UNIX = common dso_local global i64 0, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Another FPM instance seems to already listen on %s\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"unable to bind listening socket for address '%s'\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to listen to address '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*, %struct.sockaddr*, i32)* @fpm_sockets_new_listening_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_sockets_new_listening_socket(%struct.fpm_worker_pool_s* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpm_worker_pool_s*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 0, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ZLOG_SYSERROR, align 4
  %21 = call i32 (i32, i8*, ...) @zlog(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %130

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SOL_SOCKET, align 4
  %25 = load i32, i32* @SO_REUSEADDR, align 4
  %26 = call i64 @setsockopt(i32 %23, i32 %24, i32 %25, i32* %8, i32 4)
  %27 = icmp sgt i64 0, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ZLOG_WARNING, align 4
  %30 = call i32 (i32, i8*, ...) @zlog(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %33 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FPM_AF_UNIX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_un*
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @fpm_socket_unix_test_connect(%struct.sockaddr_un* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* @ZLOG_ERROR, align 4
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_un*
  %47 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32, i8*, ...) @zlog(i32 %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @close(i32 %50)
  store i32 -1, i32* %4, align 4
  br label %130

52:                                               ; preds = %37
  %53 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %54 = bitcast %struct.sockaddr* %53 to %struct.sockaddr_un*
  %55 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @unlink(i8* %56)
  %58 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %59 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 511, %60
  %62 = call i32 @umask(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %52, %31
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @bind(i32 %64, %struct.sockaddr* %65, i32 %66)
  %68 = icmp sgt i64 0, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load i32, i32* @ZLOG_SYSERROR, align 4
  %71 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %72 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, ...) @zlog(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %78 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FPM_AF_UNIX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @umask(i32 %83)
  br label %85

85:                                               ; preds = %82, %69
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @close(i32 %86)
  store i32 -1, i32* %4, align 4
  br label %130

88:                                               ; preds = %63
  %89 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %90 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FPM_AF_UNIX, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %96 = bitcast %struct.sockaddr* %95 to %struct.sockaddr_un*
  %97 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %11, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @umask(i32 %99)
  %101 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = call i64 @fpm_unix_set_socket_premissions(%struct.fpm_worker_pool_s* %101, i8* %102)
  %104 = icmp sgt i64 0, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @close(i32 %106)
  store i32 -1, i32* %4, align 4
  br label %130

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %112 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @listen(i32 %110, i32 %115)
  %117 = icmp sgt i64 0, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = load i32, i32* @ZLOG_SYSERROR, align 4
  %120 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %121 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32, i8*, ...) @zlog(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @close(i32 %126)
  store i32 -1, i32* %4, align 4
  br label %130

128:                                              ; preds = %109
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %118, %105, %85, %43, %19
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @fpm_socket_unix_test_connect(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @fpm_unix_set_socket_premissions(%struct.fpm_worker_pool_s*, i8*) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
