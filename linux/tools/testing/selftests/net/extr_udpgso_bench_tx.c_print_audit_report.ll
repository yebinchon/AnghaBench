; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_print_audit_report.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_print_audit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tend = common dso_local global i64 0, align 8
@tstart = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Summary over %lu.%03lu seconds...\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"sum %s tx: %6lu MB/s %10lu calls (%lu/s) %10lu msgs (%lu/s)\0A\00", align 1
@cfg_tcp = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@cfg_payload_len = common dso_local global i64 0, align 8
@cfg_tx_tstamp = common dso_local global i64 0, align 8
@stat_tx_ts_errors = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"Expected clean TX Timestamps: %9lu msgs received %6lu errors\00", align 1
@stat_tx_ts = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [64 x i8] c"Unexpected number of TX Timestamps: %9lu expected %9lu received\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Tx Timestamps: %19lu received %17lu errors\0A\00", align 1
@cfg_zerocopy = common dso_local global i64 0, align 8
@stat_zcopies = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"Unexpected number of Zerocopy completions: %9lu expected %9lu received\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Zerocopy acks: %19lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @print_audit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_audit_report(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @tend, align 8
  %7 = load i64, i64* @tstart, align 8
  %8 = sub i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %78

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i64, i64* %5, align 8
  %15 = udiv i64 %14, 1000
  %16 = load i64, i64* %5, align 8
  %17 = urem i64 %16, 1000
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = load i64, i64* @cfg_tcp, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @cfg_payload_len, align 8
  %26 = mul i64 %24, %25
  %27 = lshr i64 %26, 10
  %28 = load i64, i64* %5, align 8
  %29 = udiv i64 %27, %28
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = mul i64 %31, 1000
  %33 = load i64, i64* %5, align 8
  %34 = udiv i64 %32, %33
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = mul i64 %36, 1000
  %38 = load i64, i64* %5, align 8
  %39 = udiv i64 %37, %38
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %29, i64 %30, i64 %34, i64 %35, i64 %39)
  %41 = load i64, i64* @cfg_tx_tstamp, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %12
  %44 = load i64, i64* @stat_tx_ts_errors, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @stat_tx_ts, align 8
  %48 = load i64, i64* @stat_tx_ts_errors, align 8
  %49 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* @stat_tx_ts, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @stat_tx_ts, align 8
  %57 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @stderr, align 4
  %60 = load i64, i64* @stat_tx_ts, align 8
  %61 = load i64, i64* @stat_tx_ts_errors, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %12
  %64 = load i64, i64* @cfg_zerocopy, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i64, i64* @stat_zcopies, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @stat_zcopies, align 8
  %73 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* @stderr, align 4
  %76 = load i64, i64* @stat_zcopies, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %11, %74, %63
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @error(i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
