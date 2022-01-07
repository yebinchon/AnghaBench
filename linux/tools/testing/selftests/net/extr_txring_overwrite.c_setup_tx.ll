; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_setup_tx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_setup_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i32, i32, i32 }
%struct.tpacket_req = type { i32, i32, i32, i8* }

@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket t\00", align 1
@AF_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"if_nametoindex\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bind fdt\00", align 1
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_TX_RING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"setsockopt ring\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @setup_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_tx(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.sockaddr_ll, align 4
  %4 = alloca %struct.tpacket_req, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = bitcast %struct.sockaddr_ll* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = bitcast %struct.tpacket_req* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* @PF_PACKET, align 4
  %9 = load i32, i32* @SOCK_RAW, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @error(i32 1, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @AF_PACKET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = call i32 @htons(i32 0)
  %20 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = call i32 @if_nametoindex(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @error(i32 1, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i32, i32* %5, align 4
  %31 = bitcast %struct.sockaddr_ll* %3 to i8*
  %32 = call i64 @bind(i32 %30, i8* %31, i32 12)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @error(i32 1, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = call i8* (...) @getpagesize()
  %39 = ptrtoint i8* %38 to i32
  %40 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %4, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %4, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = call i8* (...) @getpagesize()
  %43 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %4, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %4, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SOL_PACKET, align 4
  %47 = load i32, i32* @PACKET_TX_RING, align 4
  %48 = bitcast %struct.tpacket_req* %4 to i8*
  %49 = call i64 @setsockopt(i32 %45, i32 %46, i32 %47, i8* %48, i32 24)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @error(i32 1, i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %37
  %55 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = load i32, i32* @PROT_READ, align 4
  %61 = load i32, i32* @PROT_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MAP_SHARED, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i8* @mmap(i32 0, i32 %59, i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load i8**, i8*** %2, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %2, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @MAP_FAILED, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @error(i32 1, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %54
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

declare dso_local i8* @getpagesize(...) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
