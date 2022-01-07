; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_get_udp_csum.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_get_udp_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i64 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udphdr*, i32)* @get_udp_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_udp_csum(%struct.udphdr* %0, i32 %1) #0 {
  %3 = alloca %struct.udphdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.udphdr* %0, %struct.udphdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %9 = bitcast %struct.udphdr* %8 to i8*
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* @IPPROTO_UDP, align 4
  %11 = call i64 @htons(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %13 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load i8*, i8** %7, align 8
  %20 = sext i32 %18 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr i8, i8* %19, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %24 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ntohs(i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = lshr i64 %32, 1
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @get_ip_csum(i8* %31, i64 %33, i64 %34)
  ret i32 %35
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @get_ip_csum(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
