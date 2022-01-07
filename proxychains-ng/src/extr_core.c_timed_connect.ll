; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_timed_connect.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_timed_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.pollfd = type { i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0Aconnect ret=%d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@tcp_connect_time_out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\0Apoll ret=%d\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"\0Avalue=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, i32)* @timed_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timed_connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.pollfd], align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @PFUNC()
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @POLLOUT, align 4
  %16 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @F_SETFL, align 4
  %20 = load i32, i32* @O_NONBLOCK, align 4
  %21 = call i32 @fcntl(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @true_connect(i32 %22, %struct.sockaddr* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @PDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %56

30:                                               ; preds = %3
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINPROGRESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %36 = load i32, i32* @tcp_connect_time_out, align 4
  %37 = call i32 @poll_retry(%struct.pollfd* %35, i32 1, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  store i32 4, i32* %9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SOL_SOCKET, align 4
  %45 = load i32, i32* @SO_ERROR, align 4
  %46 = call i32 @getsockopt(i32 %43, i32 %44, i32 %45, i32* %8, i32* %9)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @PDEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %53

52:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %55

54:                                               ; preds = %34
  store i32 -1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %61

56:                                               ; preds = %30, %3
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @F_SETFL, align 4
  %64 = load i32, i32* @O_NONBLOCK, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @fcntl(i32 %62, i32 %63, i32 %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @PFUNC(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @true_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @PDEBUG(i8*, i32) #1

declare dso_local i32 @poll_retry(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
