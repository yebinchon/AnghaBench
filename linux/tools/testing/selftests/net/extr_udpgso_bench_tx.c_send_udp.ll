; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_send_udp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_send_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_payload_len = common dso_local global i32 0, align 4
@cfg_mss = common dso_local global i32 0, align 4
@cfg_zerocopy = common dso_local global i64 0, align 8
@MSG_ZEROCOPY = common dso_local global i32 0, align 4
@cfg_connected = common dso_local global i64 0, align 8
@cfg_dst_addr = common dso_local global i32 0, align 4
@cfg_alen = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"write: %uB != %uB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @send_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_udp(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @cfg_payload_len, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @cfg_mss, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @cfg_mss, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* @cfg_zerocopy, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @MSG_ZEROCOPY, align 4
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = load i64, i64* @cfg_connected, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* null, i8* bitcast (i32* @cfg_dst_addr to i8*)
  %37 = load i64, i64* @cfg_connected, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @cfg_alen, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 0, %39 ], [ %41, %40 ]
  %44 = call i32 @sendto(i32 %23, i8* %24, i32 %25, i32 %32, i8* %36, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @sendto(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
