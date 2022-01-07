; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_do_socket.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_do_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_family = common dso_local global i32 0, align 4
@cfg_tcp = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"setsockopt rcvbuf\00", align 1
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"setsockopt reuseport\00", align 1
@cfg_bind_addr = common dso_local global i32 0, align 4
@cfg_alen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@cfg_connect_timeout_ms = common dso_local global i32 0, align 4
@interrupted = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"close accept fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @cfg_family, align 4
  %7 = load i64, i64* @cfg_tcp, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SOCK_STREAM, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SOCK_DGRAM, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32 @socket(i32 %6, i32 %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @error(i32 1, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %13
  store i32 2097152, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SOL_SOCKET, align 4
  %24 = load i32, i32* @SO_RCVBUF, align 4
  %25 = call i64 @setsockopt(i32 %22, i32 %23, i32 %24, i32* %4, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @error(i32 1, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  store i32 1, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_REUSEPORT, align 4
  %34 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i32* %4, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @error(i32 1, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @cfg_alen, align 4
  %42 = call i64 @bind(i32 %40, i8* bitcast (i32* @cfg_bind_addr to i8*), i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @error(i32 1, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @listen(i32 %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @error(i32 1, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @cfg_connect_timeout_ms, align 4
  %61 = call i32 @do_poll(i32 %59, i32 %60)
  %62 = load i64, i64* @interrupted, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @exit(i32 0) #3
  unreachable

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @accept(i32 %67, i32* null, i32* null)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @error(i32 1, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @close(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @error(i32 1, i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @do_poll(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
