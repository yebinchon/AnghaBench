; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_reset.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@ftp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@E_FTP_STE_START = common dso_local global i32 0, align 4
@E_FTP_STE_SUB_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftp_reset() #0 {
  %1 = call i32 @servers_close_socket(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 4))
  %2 = call i32 @servers_close_socket(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 3))
  %3 = call i32 (...) @ftp_close_cmd_data()
  %4 = load i32, i32* @E_FTP_STE_START, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 2), align 4
  %5 = load i32, i32* @E_FTP_STE_SUB_DISCONNECTED, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ftp_data, i32 0, i32 0), align 8
  %6 = call i32 (...) @SOCKETFIFO_Flush()
  ret void
}

declare dso_local i32 @servers_close_socket(i32*) #1

declare dso_local i32 @ftp_close_cmd_data(...) #1

declare dso_local i32 @SOCKETFIFO_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
