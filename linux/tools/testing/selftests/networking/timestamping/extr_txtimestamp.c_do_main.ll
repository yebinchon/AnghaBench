; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_do_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_do_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"family:       %s %s\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"INET\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"INET6\00", align 1
@cfg_use_pf_packet = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"(PF_PACKET)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"test SND\0A\00", align 1
@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"test ENQ\0A\00", align 1
@SOF_TIMESTAMPING_TX_SCHED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"test ENQ + SND\0A\00", align 1
@cfg_proto = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"\0Atest ACK\0A\00", align 1
@SOF_TIMESTAMPING_TX_ACK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"\0Atest SND + ACK\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\0Atest ENQ + SND + ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PF_INET, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %9 = load i64, i64* @cfg_use_pf_packet, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %18 = call i32 @do_test(i32 %16, i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SOF_TIMESTAMPING_TX_SCHED, align 4
  %23 = call i32 @do_test(i32 %21, i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SOF_TIMESTAMPING_TX_SCHED, align 4
  %28 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @do_test(i32 %26, i32 %29)
  %31 = load i64, i64* @cfg_proto, align 8
  %32 = load i64, i64* @SOCK_STREAM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %1
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SOF_TIMESTAMPING_TX_ACK, align 4
  %39 = call i32 @do_test(i32 %37, i32 %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %44 = load i32, i32* @SOF_TIMESTAMPING_TX_ACK, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @do_test(i32 %42, i32 %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SOF_TIMESTAMPING_TX_SCHED, align 4
  %51 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SOF_TIMESTAMPING_TX_ACK, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @do_test(i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @do_test(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
