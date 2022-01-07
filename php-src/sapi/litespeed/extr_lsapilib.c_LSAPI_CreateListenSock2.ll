; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_CreateListenSock2.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_CreateListenSock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_CreateListenSock2(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %8, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %15
  ]

13:                                               ; preds = %2
  store i32 16, i32* %9, align 4
  br label %22

14:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  br label %22

15:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_un*
  %18 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @unlink(i32 %19)
  br label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

22:                                               ; preds = %15, %14, %13
  %23 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = call i32 @socket(i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %64

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @F_SETFD, align 4
  %34 = load i32, i32* @FD_CLOEXEC, align 4
  %35 = call i32 @fcntl(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SOL_SOCKET, align 4
  %38 = load i32, i32* @SO_REUSEADDR, align 4
  %39 = bitcast i32* %8 to i8*
  %40 = call i64 @setsockopt(i32 %36, i32 %37, i32 %38, i8* %39, i32 4)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @bind(i32 %43, %struct.sockaddr* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @listen(i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %55, %30, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
