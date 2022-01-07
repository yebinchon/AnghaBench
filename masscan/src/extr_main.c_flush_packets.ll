; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main.c_flush_packets.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main.c_flush_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Adapter = type { i32 }
%struct.PacketBuffer = type { i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"transmit queue full (should be impossible)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Adapter*, i32*, i32*, i64*, i64*)* @flush_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_packets(%struct.Adapter* %0, i32* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.Adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PacketBuffer*, align 8
  store %struct.Adapter* %0, %struct.Adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  br label %13

13:                                               ; preds = %51, %5
  %14 = load i64*, i64** %10, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast %struct.PacketBuffer** %12 to i8**
  %20 = call i32 @rte_ring_sc_dequeue(i32* %18, i8** %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.Adapter*, %struct.Adapter** %6, align 8
  %26 = load %struct.PacketBuffer*, %struct.PacketBuffer** %12, align 8
  %27 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.PacketBuffer*, %struct.PacketBuffer** %12, align 8
  %30 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @rawsock_send_packet(%struct.Adapter* %25, i32 %28, i32 %32, i32 1)
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %46, %24
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.PacketBuffer*, %struct.PacketBuffer** %12, align 8
  %40 = call i32 @rte_ring_sp_enqueue(i32* %38, %struct.PacketBuffer* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @pixie_usleep(i32 10000)
  br label %46

46:                                               ; preds = %43, %37
  br label %34

47:                                               ; preds = %34
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %13

55:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @rte_ring_sc_dequeue(i32*, i8**) #1

declare dso_local i32 @rawsock_send_packet(%struct.Adapter*, i32, i32, i32) #1

declare dso_local i32 @rte_ring_sp_enqueue(i32*, %struct.PacketBuffer*) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @pixie_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
