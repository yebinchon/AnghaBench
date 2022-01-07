; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpacket_hdr = type { i64, i32 }

@TP_STATUS_AVAILABLE = common dso_local global i64 0, align 8
@eth_off = common dso_local global i32 0, align 4
@cfg_frame_size = common dso_local global i32 0, align 4
@TP_STATUS_SEND_REQUEST = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kick tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8)* @send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_pkt(i32 %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.tpacket_hdr*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tpacket_hdr*
  store %struct.tpacket_hdr* %10, %struct.tpacket_hdr** %7, align 8
  br label %11

11:                                               ; preds = %17, %3
  %12 = load %struct.tpacket_hdr*, %struct.tpacket_hdr** %7, align 8
  %13 = getelementptr inbounds %struct.tpacket_hdr, %struct.tpacket_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TP_STATUS_AVAILABLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @usleep(i32 1000)
  br label %11

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @eth_off, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %20, i64 %22
  %24 = load i32, i32* @cfg_frame_size, align 4
  %25 = load i8, i8* %6, align 1
  %26 = call i32 @build_packet(i8* %23, i32 %24, i8 signext %25)
  %27 = load i32, i32* @cfg_frame_size, align 4
  %28 = load %struct.tpacket_hdr*, %struct.tpacket_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.tpacket_hdr, %struct.tpacket_hdr* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @TP_STATUS_SEND_REQUEST, align 8
  %31 = load %struct.tpacket_hdr*, %struct.tpacket_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.tpacket_hdr, %struct.tpacket_hdr* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sendto(i32 %33, i32* null, i32 0, i32 0, i32* null, i32 0)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @error(i32 1, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %19
  ret void
}

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @build_packet(i8*, i32, i8 signext) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
