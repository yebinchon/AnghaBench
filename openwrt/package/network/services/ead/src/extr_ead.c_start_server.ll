; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead.c_start_server.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ead_instance = type { i64 }

@nonfork = common dso_local global i32 0, align 4
@instance = common dso_local global %struct.ead_instance* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@instance_handle_sigchld = common dso_local global i32 0, align 4
@pcap_fp = common dso_local global i64 0, align 8
@pcap_fp_rx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ead_instance*)* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_server(%struct.ead_instance* %0) #0 {
  %2 = alloca %struct.ead_instance*, align 8
  store %struct.ead_instance* %0, %struct.ead_instance** %2, align 8
  %3 = load i32, i32* @nonfork, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = call i64 (...) @fork()
  %7 = load %struct.ead_instance*, %struct.ead_instance** %2, align 8
  %8 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.ead_instance*, %struct.ead_instance** %2, align 8
  %10 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load %struct.ead_instance*, %struct.ead_instance** %2, align 8
  %15 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.ead_instance*, %struct.ead_instance** %2, align 8
  %20 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %13
  ret void

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.ead_instance*, %struct.ead_instance** %2, align 8
  store %struct.ead_instance* %24, %struct.ead_instance** @instance, align 8
  %25 = load i32, i32* @SIGCHLD, align 4
  %26 = load i32, i32* @instance_handle_sigchld, align 4
  %27 = call i32 @signal(i32 %25, i32 %26)
  %28 = call i32 @ead_pcap_reopen(i32 1)
  %29 = call i32 (...) @ead_pktloop()
  %30 = load i64, i64* @pcap_fp, align 8
  %31 = call i32 @pcap_close(i64 %30)
  %32 = load i64, i64* @pcap_fp_rx, align 8
  %33 = load i64, i64* @pcap_fp, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i64, i64* @pcap_fp_rx, align 8
  %37 = call i32 @pcap_close(i64 %36)
  br label %38

38:                                               ; preds = %35, %23
  %39 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @ead_pcap_reopen(i32) #1

declare dso_local i32 @ead_pktloop(...) #1

declare dso_local i32 @pcap_close(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
