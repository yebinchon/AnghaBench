; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_create_listen_socket_unix.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_create_listen_socket_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@D_LISTENER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"LISTENER: UNIX creating new listening socket on path '%s'\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"LISTENER: UNIX socket() on path '%s' failed.\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [100 x i8] c"LISTENER: failed to remove existing (probably obsolete or left-over) file on UNIX socket path '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"LISTENER: UNIX bind() on path '%s' failed.\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"LISTENER: failed to chmod() socket file '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"LISTENER: UNIX listen() on path '%s' failed.\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"LISTENER: Listening on UNIX path '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_listen_socket_unix(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @D_LISTENER, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @debug(i32 %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @AF_UNIX, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sock_setnonblock(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sock_enlarge_in(i32 %22)
  %24 = call i32 @memset(%struct.sockaddr_un* %7, i32 0, i32 8)
  %25 = load i32, i32* @AF_UNIX, align 4
  %26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strncpy(i32 %28, i8* %29, i32 3)
  store i64 0, i64* @errno, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @unlink(i8* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %34, %19
  %42 = load i32, i32* %6, align 4
  %43 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*
  %44 = call i64 @bind(i32 %42, %struct.sockaddr* %43, i32 8)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  store i32 -1, i32* %3, align 4
  br label %73

51:                                               ; preds = %41
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @chmod(i8* %52, i32 511)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @listen(i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  store i32 -1, i32* %3, align 4
  br label %73

68:                                               ; preds = %58
  %69 = load i32, i32* @D_LISTENER, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @debug(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %63, %46, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @sock_setnonblock(i32) #1

declare dso_local i32 @sock_enlarge_in(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
