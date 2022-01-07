; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_send_command.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ead_msg_cmd = type { i64, i8*, i8* }

@msg = common dso_local global %struct.TYPE_4__* null, align 8
@EAD_TYPE_SEND_CMD = common dso_local global i32 0, align 4
@EAD_CMD_NORMAL = common dso_local global i32 0, align 4
@EAD_TYPE_RESULT_CMD = common dso_local global i32 0, align 4
@handle_cmd_data = common dso_local global i32 0, align 4
@cmd = common dso_local global %struct.ead_msg_cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ead_msg_cmd*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msg, align 8
  %5 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %3, align 8
  %6 = ptrtoint %struct.ead_msg_cmd* %5 to i32
  %7 = call %struct.ead_msg_cmd* @EAD_ENC_DATA(%struct.TYPE_4__* %4, i32 %6)
  store %struct.ead_msg_cmd* %7, %struct.ead_msg_cmd** %3, align 8
  %8 = load i32, i32* @EAD_TYPE_SEND_CMD, align 4
  %9 = call i32 @htonl(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msg, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @EAD_CMD_NORMAL, align 4
  %13 = call i8* @htons(i32 %12)
  %14 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = call i8* @htons(i32 10)
  %17 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ead_msg_cmd*, %struct.ead_msg_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.ead_msg_cmd, %struct.ead_msg_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strncpy(i8* %22, i8* %23, i32 1024)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msg, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add i64 24, %27
  %29 = add i64 %28, 1
  %30 = call i32 @ead_encrypt_message(%struct.TYPE_4__* %25, i64 %29)
  %31 = load i32, i32* @EAD_TYPE_RESULT_CMD, align 4
  %32 = load i32, i32* @handle_cmd_data, align 4
  %33 = call i32 @send_packet(i32 %31, i32 %32, i32 1)
  ret i32 %33
}

declare dso_local %struct.ead_msg_cmd* @EAD_ENC_DATA(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ead_encrypt_message(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @send_packet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
