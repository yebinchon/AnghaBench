; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32* }

@FTP_BUFFER_SIZE = common dso_local global i64 0, align 8
@ftp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FTP_MAX_PARAM_SIZE = common dso_local global i64 0, align 8
@ftp_path = common dso_local global i32* null, align 8
@ftp_scratch_buffer = common dso_local global i32* null, align 8
@FTP_CMD_SIZE_MAX = common dso_local global i64 0, align 8
@ftp_cmd_buffer = common dso_local global i32* null, align 8
@ftp_socketfifo = common dso_local global i32 0, align 4
@ftp_fifoelements = common dso_local global i64 0, align 8
@FTP_SOCKETFIFO_ELEMENTS_MAX = common dso_local global i32 0, align 4
@E_FTP_NOTHING_OPEN = common dso_local global i32 0, align 4
@E_FTP_STE_DISABLED = common dso_local global i32 0, align 4
@E_FTP_STE_SUB_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftp_init() #0 {
  %1 = load i64, i64* @FTP_BUFFER_SIZE, align 8
  %2 = call i8* @mem_Malloc(i64 %1)
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 9), align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i64, i64* @FTP_MAX_PARAM_SIZE, align 8
  %8 = call i8* @mem_Malloc(i64 %7)
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** @ftp_path, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i64, i64* @FTP_MAX_PARAM_SIZE, align 8
  %14 = call i8* @mem_Malloc(i64 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @ftp_scratch_buffer, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i64, i64* @FTP_MAX_PARAM_SIZE, align 8
  %20 = load i64, i64* @FTP_CMD_SIZE_MAX, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i8* @mem_Malloc(i64 %21)
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** @ftp_cmd_buffer, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i64, i64* @ftp_fifoelements, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* @FTP_SOCKETFIFO_ELEMENTS_MAX, align 4
  %30 = call i32 @SOCKETFIFO_Init(i32* @ftp_socketfifo, i8* %28, i32 %29)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 1), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 3), align 4
  %31 = load i32, i32* @E_FTP_NOTHING_OPEN, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 8), align 8
  %32 = load i32, i32* @E_FTP_STE_DISABLED, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 7), align 4
  %33 = load i32, i32* @E_FTP_STE_SUB_DISCONNECTED, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 5), align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @mem_Malloc(i64) #1

declare dso_local i32 @SOCKETFIFO_Init(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
