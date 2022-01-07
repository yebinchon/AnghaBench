; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_print_report.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_print_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s tx: %6lu MB/s %8lu calls/s %6lu msg/s\0A\00", align 1
@cfg_tcp = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@cfg_payload_len = common dso_local global i64 0, align 8
@cfg_audit = common dso_local global i64 0, align 8
@total_num_msgs = common dso_local global i64 0, align 8
@total_num_sends = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @print_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_report(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load i64, i64* @cfg_tcp, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @cfg_payload_len, align 8
  %12 = mul i64 %10, %11
  %13 = lshr i64 %12, 20
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %13, i64 %14, i64 %15)
  %17 = load i64, i64* @cfg_audit, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @total_num_msgs, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* @total_num_msgs, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @total_num_sends, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* @total_num_sends, align 8
  br label %26

26:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
