; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_fill_header_udp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_fill_header_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i64, i8*, i8*, i8* }

@dest_port = common dso_local global i64 0, align 8
@cfg_payload_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fill_header_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_header_udp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udphdr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.udphdr*
  store %struct.udphdr* %7, %struct.udphdr** %5, align 8
  %8 = load i64, i64* @dest_port, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i8* @ntohs(i64 %9)
  %11 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %12 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load i64, i64* @dest_port, align 8
  %14 = call i8* @ntohs(i64 %13)
  %15 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %16 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @cfg_payload_len, align 8
  %18 = add i64 32, %17
  %19 = call i8* @ntohs(i64 %18)
  %20 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %21 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %23 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i64 4, i64 4
  %29 = trunc i64 %28 to i32
  %30 = call i64 @get_udp_csum(%struct.udphdr* %24, i32 %29)
  %31 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %32 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  ret void
}

declare dso_local i8* @ntohs(i64) #1

declare dso_local i64 @get_udp_csum(%struct.udphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
