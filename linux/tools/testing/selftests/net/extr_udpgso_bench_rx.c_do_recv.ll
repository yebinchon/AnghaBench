; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_do_recv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_do_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_tcp = common dso_local global i64 0, align 8
@cfg_rcv_timeout_ms = common dso_local global i32 0, align 4
@cfg_connect_timeout_ms = common dso_local global i32 0, align 4
@cfg_gro_segment = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@UDP_GRO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"setsockopt UDP_GRO\00", align 1
@packets = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s rx: %6lu MB/s %8lu calls/s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@bytes = common dso_local global i32 0, align 4
@interrupted = common dso_local global i32 0, align 4
@cfg_expected_pkt_nr = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"wrong packet number! got %ld, expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_recv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @cfg_tcp, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @cfg_rcv_timeout_ms, align 4
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @cfg_connect_timeout_ms, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %1, align 4
  %14 = load i64, i64* @cfg_tcp, align 8
  %15 = call i32 @do_socket(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* @cfg_gro_segment, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i64, i64* @cfg_tcp, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IPPROTO_UDP, align 4
  %24 = load i32, i32* @UDP_GRO, align 4
  %25 = call i64 @setsockopt(i32 %22, i32 %23, i32 %24, i32* %5, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %18, %12
  %32 = call i32 (...) @gettimeofday_ms()
  %33 = add nsw i32 %32, 1000
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %71, %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @do_poll(i32 %36, i32 %37)
  %39 = load i64, i64* @cfg_tcp, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @do_flush_tcp(i32 %42)
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @do_flush_udp(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i32 (...) @gettimeofday_ms()
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %2, align 8
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i64, i64* @packets, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = load i64, i64* @cfg_tcp, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %62 = load i32, i32* @bytes, align 4
  %63 = ashr i32 %62, 20
  %64 = load i64, i64* @packets, align 8
  %65 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %56, %53
  store i64 0, i64* @packets, align 8
  store i32 0, i32* @bytes, align 4
  %67 = load i64, i64* %2, align 8
  %68 = add i64 %67, 1000
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %66, %47
  %70 = load i32, i32* @cfg_rcv_timeout_ms, align 4
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* @interrupted, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %35, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* @cfg_expected_pkt_nr, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i64, i64* @packets, align 8
  %80 = load i64, i64* @cfg_expected_pkt_nr, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i64, i64* @packets, align 8
  %84 = load i64, i64* @cfg_expected_pkt_nr, align 8
  %85 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %78, %75
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @close(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %86
  ret void
}

declare dso_local i32 @do_socket(i64) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @gettimeofday_ms(...) #1

declare dso_local i32 @do_poll(i32, i32) #1

declare dso_local i32 @do_flush_tcp(i32) #1

declare dso_local i32 @do_flush_udp(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i64) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
