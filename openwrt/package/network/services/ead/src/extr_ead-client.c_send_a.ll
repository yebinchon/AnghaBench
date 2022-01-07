; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_send_a.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_send_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ead_msg_number = type { i32 }

@msg = common dso_local global %struct.TYPE_6__* null, align 8
@number = common dso_local global i32 0, align 4
@tc = common dso_local global i32 0, align 4
@A = common dso_local global %struct.TYPE_5__* null, align 8
@EAD_TYPE_SEND_A = common dso_local global i64 0, align 8
@EAD_TYPE_SEND_B = common dso_local global i32 0, align 4
@handle_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @send_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_a() #0 {
  %1 = alloca %struct.ead_msg_number*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @msg, align 8
  %3 = load i32, i32* @number, align 4
  %4 = call %struct.ead_msg_number* @EAD_DATA(%struct.TYPE_6__* %2, i32 %3)
  store %struct.ead_msg_number* %4, %struct.ead_msg_number** %1, align 8
  %5 = load i32, i32* @tc, align 4
  %6 = call %struct.TYPE_5__* @t_clientgenexp(i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** @A, align 8
  %7 = load i64, i64* @EAD_TYPE_SEND_A, align 8
  %8 = call i8* @htonl(i64 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @msg, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @A, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 4, %13
  %15 = call i8* @htonl(i64 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @msg, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ead_msg_number*, %struct.ead_msg_number** %1, align 8
  %19 = getelementptr inbounds %struct.ead_msg_number, %struct.ead_msg_number* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @A, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @A, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i32 %20, i32 %23, i64 %26)
  %28 = load i32, i32* @EAD_TYPE_SEND_B, align 4
  %29 = load i32, i32* @handle_b, align 4
  %30 = call i32 @send_packet(i32 %28, i32 %29, i32 1)
  ret i32 %30
}

declare dso_local %struct.ead_msg_number* @EAD_DATA(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_5__* @t_clientgenexp(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @send_packet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
