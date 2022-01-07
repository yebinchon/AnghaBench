; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_send_RST.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_send_RST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_ConnectionTable = type { i32 }
%struct.TCP_Control_Block = type { i32, i32, i16, i16, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"peer(RST) fake\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpcon_send_RST(%struct.TCP_ConnectionTable* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TCP_ConnectionTable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TCP_Control_Block, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = call i32 @memset(%struct.TCP_Control_Block* %15, i32 0, i32 48)
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 2
  store i16 %22, i16* %23, align 8
  %24 = load i32, i32* %12, align 4
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 3
  store i16 %25, i16* %26, align 2
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 7
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr i8, i8* %29, i64 1
  %31 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 6
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = getelementptr i8, i8* %32, i64 1
  %34 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = call i32 @LOGSEND(%struct.TCP_Control_Block* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %8, align 8
  %39 = call i32 @tcpcon_send_packet(%struct.TCP_ConnectionTable* %38, %struct.TCP_Control_Block* %15, i32 4, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.TCP_Control_Block*, i32, i32) #1

declare dso_local i32 @LOGSEND(%struct.TCP_Control_Block*, i8*) #1

declare dso_local i32 @tcpcon_send_packet(%struct.TCP_ConnectionTable*, %struct.TCP_Control_Block*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
