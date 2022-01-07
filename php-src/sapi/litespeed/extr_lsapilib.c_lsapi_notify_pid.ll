; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_notify_pid.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_notify_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsapi_packet_header = type { i32 }

@LSAPI_STDERR_STREAM = common dso_local global i32 0, align 4
@LSAPI_PACKET_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"\00PID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lsapi_notify_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_notify_pid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %6 = bitcast i8* %5 to %struct.lsapi_packet_header*
  %7 = load i32, i32* @LSAPI_STDERR_STREAM, align 4
  %8 = load i64, i64* @LSAPI_PACKET_HEADER_LEN, align 8
  %9 = add nsw i64 8, %8
  %10 = call i32 @lsapi_buildPacketHeader(%struct.lsapi_packet_header* %6, i32 %7, i64 %9)
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 8
  %12 = call i32 @memmove(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %13 = call i32 (...) @getpid()
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %18 = call i32 @write(i32 %16, i8* %17, i32 16)
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @lsapi_buildPacketHeader(%struct.lsapi_packet_header*, i32, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
