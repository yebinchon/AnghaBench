; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_send_packet.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_ConnectionTable = type { i32, i32, i32 }
%struct.TCP_Control_Block = type { i8*, i16, i32, i32, i32, i32, i32, i32 }
%struct.PacketBuffer = type { i32, i32 }

@tcpcon_send_packet.is_warning_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"packet buffers empty (should be impossible)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CTRL_SMALL_WINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"transmit queue full (should be impossible)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_ConnectionTable*, %struct.TCP_Control_Block*, i32, i8*, i64, i32)* @tcpcon_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpcon_send_packet(%struct.TCP_ConnectionTable* %0, %struct.TCP_Control_Block* %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TCP_ConnectionTable*, align 8
  %8 = alloca %struct.TCP_Control_Block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.PacketBuffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %7, align 8
  store %struct.TCP_Control_Block* %1, %struct.TCP_Control_Block** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.PacketBuffer* null, %struct.PacketBuffer** %13, align 8
  store i32 0, i32* %14, align 4
  store double 1.000000e+02, double* %15, align 8
  store i32 1, i32* %14, align 4
  br label %16

16:                                               ; preds = %39, %6
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %7, align 8
  %21 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %struct.PacketBuffer** %13 to i8**
  %24 = call i32 @rte_ring_sc_dequeue(i32 %22, i8** %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load i32, i32* @tcpcon_send_packet.is_warning_printed, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @tcpcon_send_packet.is_warning_printed, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  %35 = load double, double* %15, align 8
  %36 = fmul double %35, 1.500000e+00
  store double %36, double* %15, align 8
  %37 = fptosi double %36 to i32
  %38 = call i32 @pixie_usleep(i32 %37)
  br label %39

39:                                               ; preds = %32, %19
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.PacketBuffer*, %struct.PacketBuffer** %13, align 8
  %42 = icmp eq %struct.PacketBuffer* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %110

44:                                               ; preds = %40
  %45 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %7, align 8
  %46 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %49 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %52 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %55 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %58 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %61 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %64 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.PacketBuffer*, %struct.PacketBuffer** %13, align 8
  %70 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tcp_create_packet(i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %66, i8* %67, i64 %68, i32 %71, i32 4)
  %73 = load %struct.PacketBuffer*, %struct.PacketBuffer** %13, align 8
  %74 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @CTRL_SMALL_WINDOW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %44
  %80 = load %struct.PacketBuffer*, %struct.PacketBuffer** %13, align 8
  %81 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.PacketBuffer*, %struct.PacketBuffer** %13, align 8
  %84 = getelementptr inbounds %struct.PacketBuffer, %struct.PacketBuffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @tcp_set_window(i32 %82, i32 %85, i32 600)
  br label %87

87:                                               ; preds = %79, %44
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %90 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = trunc i64 %91 to i16
  %93 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %8, align 8
  %94 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %93, i32 0, i32 1
  store i16 %92, i16* %94, align 8
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %109, %87
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %7, align 8
  %100 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.PacketBuffer*, %struct.PacketBuffer** %13, align 8
  %103 = call i32 @rte_ring_sp_enqueue(i32 %101, %struct.PacketBuffer* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %108 = call i32 @pixie_usleep(i32 100)
  br label %109

109:                                              ; preds = %106, %98
  br label %95

110:                                              ; preds = %43, %95
  ret void
}

declare dso_local i32 @rte_ring_sc_dequeue(i32, i8**) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @pixie_usleep(i32) #1

declare dso_local i32 @tcp_create_packet(i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @tcp_set_window(i32, i32, i32) #1

declare dso_local i32 @rte_ring_sp_enqueue(i32, %struct.PacketBuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
