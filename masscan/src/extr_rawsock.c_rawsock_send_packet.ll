; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock.c_rawsock_send_packet.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock.c_rawsock_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64, i8*, i32, i8)* }
%struct.TYPE_4__ = type { i32 (i64, %struct.pcap_pkthdr*, i8*)*, i32 (i64, i8*, i32)* }
%struct.pcap_pkthdr = type { i32, i32 }
%struct.Adapter = type { i64, i64, i64, i32, i64 }

@stdout = common dso_local global i32 0, align 4
@PF_RING_ERROR_NO_TX_SLOT_AVAILABLE = common dso_local global i32 0, align 4
@PFRING = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"pfring:xmit: ERROR %d\0A\00", align 1
@PCAP = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rawsock_send_packet(%struct.Adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcap_pkthdr, align 4
  store %struct.Adapter* %0, %struct.Adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %14 = icmp eq %struct.Adapter* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %106

16:                                               ; preds = %4
  %17 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %18 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @stdout, align 4
  %23 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %24 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @packet_trace(i32 %22, i32 %25, i8* %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %31 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32, i32* @PF_RING_ERROR_NO_TX_SLOT_AVAILABLE, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %40, %34
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PF_RING_ERROR_NO_TX_SLOT_AVAILABLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32 (i64, i8*, i32, i8)*, i32 (i64, i8*, i32, i8)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @PFRING, i32 0, i32 0), align 8
  %42 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %43 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = trunc i32 %47 to i8
  %49 = call i32 %41(i64 %44, i8* %45, i32 %46, i8 zeroext %48)
  store i32 %49, i32* %10, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %106

58:                                               ; preds = %29
  %59 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %60 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %12, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %12, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32 (i64, %struct.pcap_pkthdr*, i8*)*, i32 (i64, %struct.pcap_pkthdr*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PCAP, i32 0, i32 0), align 8
  %69 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %70 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 %68(i64 %71, %struct.pcap_pkthdr* %12, i8* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %63
  %77 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %78 = call i32 @rawsock_flush(%struct.Adapter* %77)
  %79 = load i32 (i64, %struct.pcap_pkthdr*, i8*)*, i32 (i64, %struct.pcap_pkthdr*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PCAP, i32 0, i32 0), align 8
  %80 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %81 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 %79(i64 %82, %struct.pcap_pkthdr* %12, i8* %83)
  br label %85

85:                                               ; preds = %76, %63
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %90 = call i32 @rawsock_flush(%struct.Adapter* %89)
  br label %91

91:                                               ; preds = %88, %85
  store i32 0, i32* %5, align 4
  br label %106

92:                                               ; preds = %58
  %93 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %94 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PCAP, i32 0, i32 1), align 8
  %99 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %100 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 %98(i64 %101, i8* %102, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %106

105:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %97, %91, %56, %15
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @packet_trace(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @LOG(i32, i8*, i32) #1

declare dso_local i32 @rawsock_flush(%struct.Adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
