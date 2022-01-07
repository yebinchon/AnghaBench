; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_server_socket_unix.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_server_socket_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.linger = type { i32, i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.stat = type { i32 }
%struct.sockaddr = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@conn_listening = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@local_transport = common dso_local global i32 0, align 4
@main_base = common dso_local global i32 0, align 4
@listen_conn = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to create listening connection\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @server_socket_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_socket_unix(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.linger, align 4
  %8 = alloca %struct.sockaddr_un, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.linger* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 1, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %104

16:                                               ; preds = %2
  %17 = call i32 (...) @new_socket_unix()
  store i32 %17, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %104

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @lstat(i8* %21, %struct.stat* %9)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISSOCK(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @unlink(i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_REUSEADDR, align 4
  %37 = bitcast i32* %10 to i8*
  %38 = call i32 @setsockopt(i32 %34, i32 %35, i32 %36, i8* %37, i32 4)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_KEEPALIVE, align 4
  %42 = bitcast i32* %10 to i8*
  %43 = call i32 @setsockopt(i32 %39, i32 %40, i32 %41, i8* %42, i32 4)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SOL_SOCKET, align 4
  %46 = load i32, i32* @SO_LINGER, align 4
  %47 = bitcast %struct.linger* %7 to i8*
  %48 = call i32 @setsockopt(i32 %44, i32 %45, i32 %46, i8* %47, i32 8)
  %49 = call i32 @memset(%struct.sockaddr_un* %8, i32 0, i32 8)
  %50 = load i32, i32* @AF_UNIX, align 4
  %51 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strncpy(i32 %53, i8* %54, i32 3)
  %56 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @strcmp(i32 %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 511
  %65 = xor i32 %64, -1
  %66 = call i32 @umask(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %69 = call i32 @bind(i32 %67, %struct.sockaddr* %68, i32 8)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %77

71:                                               ; preds = %33
  %72 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @umask(i32 %75)
  store i32 1, i32* %3, align 4
  br label %104

77:                                               ; preds = %33
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @umask(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 4
  %82 = call i32 @listen(i32 %80, i32 %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @close(i32 %86)
  store i32 1, i32* %3, align 4
  br label %104

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @conn_listening, align 4
  %91 = load i32, i32* @EV_READ, align 4
  %92 = load i32, i32* @EV_PERSIST, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @local_transport, align 4
  %95 = load i32, i32* @main_base, align 4
  %96 = call i32 @conn_new(i32 %89, i32 %90, i32 %93, i32 1, i32 %94, i32 %95, i32* null)
  store i32 %96, i32* @listen_conn, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  %102 = call i32 @exit(i32 %101) #4
  unreachable

103:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %84, %71, %19, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @new_socket_unix(...) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISSOCK(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @conn_new(i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
