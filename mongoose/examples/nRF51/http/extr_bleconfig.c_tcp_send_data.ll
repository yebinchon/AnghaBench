; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_tcp_send_data.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_tcp_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@m_tcp_state = common dso_local global i64 0, align 8
@TCP_STATE_DATA_TX_IN_PROGRESS = common dso_local global i64 0, align 8
@tcp_write_complete = common dso_local global i32 0, align 4
@TCP_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[APPL]: Failed to send TCP packet, reason %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_pcb*, i32)* @tcp_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_send_data(%struct.tcp_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @ERR_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @m_tcp_state, align 8
  %10 = load i64, i64* @TCP_STATE_DATA_TX_IN_PROGRESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %14 = load i32, i32* @tcp_write_complete, align 4
  %15 = call i32 @tcp_sent(%struct.tcp_pcb* %13, i32 %14)
  %16 = load i32, i32* @TCP_DATA_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 24
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %23, i8* %24, align 16
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %33, i8* %34, align 2
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 80, i8* %39, align 4
  %40 = getelementptr inbounds i8, i8* %19, i64 5
  store i8 111, i8* %40, align 1
  %41 = getelementptr inbounds i8, i8* %19, i64 6
  store i8 110, i8* %41, align 2
  %42 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 103, i8* %42, align 1
  %43 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %44 = load i32, i32* @TCP_DATA_SIZE, align 4
  %45 = call i64 @tcp_write(%struct.tcp_pcb* %43, i8* %19, i32 %44, i32 1)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @ERR_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %12
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @APPL_LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %54

52:                                               ; preds = %12
  %53 = load i64, i64* @TCP_STATE_DATA_TX_IN_PROGRESS, align 8
  store i64 %53, i64* @m_tcp_state, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %57

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56, %54
  ret void
}

declare dso_local i32 @tcp_sent(%struct.tcp_pcb*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @tcp_write(%struct.tcp_pcb*, i8*, i32, i32) #1

declare dso_local i32 @APPL_LOG(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
