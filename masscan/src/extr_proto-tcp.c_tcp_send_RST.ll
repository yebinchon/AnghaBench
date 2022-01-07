; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcp_send_RST.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcp_send_RST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplatePacket = type { i32 }
%struct.PacketBuffer = type { i32, i32 }

@tcp_send_RST.is_warning_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"packet buffers empty (should be impossible)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"transmit queue full (should be impossible)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_send_RST(%struct.TemplatePacket* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TemplatePacket*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.PacketBuffer*, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  store %struct.TemplatePacket* %0, %struct.TemplatePacket** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store %struct.PacketBuffer* null, %struct.PacketBuffer** %19, align 8
  store i32 0, i32* %20, align 4
  store double 1.000000e+02, double* %21, align 8
  store i32 1, i32* %20, align 4
  br label %22

22:                                               ; preds = %43, %9
  %23 = load i32, i32* %20, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast %struct.PacketBuffer** %19 to i8**
  %28 = call i32 @rte_ring_sc_dequeue(i32* %26, i8** %27)
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %20, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32, i32* @tcp_send_RST.is_warning_printed, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @tcp_send_RST.is_warning_printed, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fflush(i32 %37)
  %39 = load double, double* %21, align 8
  %40 = fmul double %39, 1.500000e+00
  store double %40, double* %21, align 8
  %41 = fptosi double %40 to i32
  %42 = call i32 @pixie_usleep(i32 %41)
  br label %43

43:                                               ; preds = %36, %25
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.PacketBuffer*, %struct.PacketBuffer** %19, align 8
  %46 = icmp eq %struct.PacketBuffer* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %75

48:                                               ; preds = %44
  %49 = load %struct.TemplatePacket*, %struct.TemplatePacket** %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.PacketBuffer*, %struct.PacketBuffer** %19, align 8
  %57 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tcp_create_packet(%struct.TemplatePacket* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 4, i32 0, i32 0, i32 %58, i32 4)
  %60 = load %struct.PacketBuffer*, %struct.PacketBuffer** %19, align 8
  %61 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 1, i32* %20, align 4
  br label %62

62:                                               ; preds = %74, %48
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.PacketBuffer*, %struct.PacketBuffer** %19, align 8
  %68 = call i32 @rte_ring_sp_enqueue(i32* %66, %struct.PacketBuffer* %67)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @pixie_usleep(i32 100)
  br label %74

74:                                               ; preds = %71, %65
  br label %62

75:                                               ; preds = %47, %62
  ret void
}

declare dso_local i32 @rte_ring_sc_dequeue(i32*, i8**) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @pixie_usleep(i32) #1

declare dso_local i32 @tcp_create_packet(%struct.TemplatePacket*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rte_ring_sp_enqueue(i32*, %struct.PacketBuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
