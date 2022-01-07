; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_send_from_fifo.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_send_from_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64*, i64, i32, i64, i32 }

@E_FTP_RESULT_OK = common dso_local global i64 0, align 8
@E_FTP_CLOSE_NONE = common dso_local global i64 0, align 8
@ftp_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@E_FTP_CLOSE_CMD_AND_DATA = common dso_local global i64 0, align 8
@E_FTP_STE_SUB_DISCONNECTED = common dso_local global i32 0, align 4
@E_FTP_STE_END_TRANSFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ftp_send_from_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftp_send_from_fifo() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @SOCKETFIFO_Peek(%struct.TYPE_5__* %1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %61

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %5
  %12 = load i64, i64* @E_FTP_RESULT_OK, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ftp_send_non_blocking(i64 %13, i32 %15, i32 %17)
  %19 = icmp eq i64 %12, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %11
  %21 = call i32 @SOCKETFIFO_Pop(%struct.TYPE_5__* %1)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E_FTP_CLOSE_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 0))
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @E_FTP_CLOSE_CMD_AND_DATA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 1))
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @servers_close_socket(i64* %35)
  %37 = load i32, i32* @E_FTP_STE_SUB_DISCONNECTED, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 4), align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = call i32 (...) @ftp_close_filesystem_on_error()
  br label %40

40:                                               ; preds = %38, %20
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mem_Free(i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %11
  br label %60

50:                                               ; preds = %5
  %51 = call i32 @SOCKETFIFO_Pop(%struct.TYPE_5__* %1)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mem_Free(i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %49
  br label %76

61:                                               ; preds = %0
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 2), align 8
  %63 = load i64, i64* @E_FTP_STE_END_TRANSFER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 0), align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 1))
  %70 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 0))
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 3), align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ftp_data, i32 0, i32 3), align 8
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74, %65, %61
  br label %76

76:                                               ; preds = %75, %60
  ret void
}

declare dso_local i64 @SOCKETFIFO_Peek(%struct.TYPE_5__*) #1

declare dso_local i64 @ftp_send_non_blocking(i64, i32, i32) #1

declare dso_local i32 @SOCKETFIFO_Pop(%struct.TYPE_5__*) #1

declare dso_local i32 @servers_close_socket(i64*) #1

declare dso_local i32 @ftp_close_filesystem_on_error(...) #1

declare dso_local i32 @mem_Free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
