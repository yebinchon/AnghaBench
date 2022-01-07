; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_build_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_build_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i64, i8*, i8*, i8* }
%struct.ethhdr = type { i8* }
%struct.iphdr = type { i32, i32, i32, i64, i8*, i32, i8*, i8* }

@ETH_P_IP = common dso_local global i64 0, align 8
@INADDR_LOOPBACK = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8)* @build_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_packet(i8* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.udphdr*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @memset(i8* %11, i8 signext 0, i64 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %8, align 8
  %16 = load i64, i64* @ETH_P_IP, align 8
  %17 = call i8* @htons(i64 %16)
  %18 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, 8
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = bitcast i8* %24 to %struct.iphdr*
  store %struct.iphdr* %25, %struct.iphdr** %9, align 8
  %26 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 0
  store i32 8, i32* %27, align 8
  %28 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 1
  store i32 5, i32* %29, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 2
  store i32 4, i32* %31, align 8
  %32 = load i64, i64* @INADDR_LOOPBACK, align 8
  %33 = call i8* @htonl(i64 %32)
  %34 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @INADDR_LOOPBACK, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i8* @htonl(i64 %37)
  %39 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @IPPROTO_UDP, align 4
  %42 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  %47 = call i8* @htons(i64 %46)
  %48 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 56
  store i64 %53, i64* %10, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr i8, i8* %54, i64 %55
  %57 = bitcast i8* %56 to %struct.udphdr*
  store %struct.udphdr* %57, %struct.udphdr** %7, align 8
  %58 = call i8* @htons(i64 8000)
  %59 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = call i8* @htons(i64 8001)
  %62 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %63 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %64, %65
  %67 = call i8* @htons(i64 %66)
  %68 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %69 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %71 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 32
  store i64 %73, i64* %10, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  %77 = load i8, i8* %6, align 1
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 @memset(i8* %76, i8 signext %77, i64 %80)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i8* @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
