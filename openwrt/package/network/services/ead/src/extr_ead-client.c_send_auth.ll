; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_send_auth.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_send_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.ead_msg_auth = type { i32 }

@msg = common dso_local global %struct.TYPE_3__* null, align 8
@tc = common dso_local global i32 0, align 4
@password = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@skey = common dso_local global i32 0, align 4
@EAD_TYPE_SEND_AUTH = common dso_local global i32 0, align 4
@EAD_TYPE_DONE_AUTH = common dso_local global i32 0, align 4
@handle_done_auth = common dso_local global i32 0, align 4
@auth = common dso_local global %struct.ead_msg_auth* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @send_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_auth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ead_msg_auth*, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %4 = load %struct.ead_msg_auth*, %struct.ead_msg_auth** %2, align 8
  %5 = ptrtoint %struct.ead_msg_auth* %4 to i32
  %6 = call %struct.ead_msg_auth* @EAD_DATA(%struct.TYPE_3__* %3, i32 %5)
  store %struct.ead_msg_auth* %6, %struct.ead_msg_auth** %2, align 8
  %7 = call i32 (...) @prepare_password()
  %8 = load i32, i32* @tc, align 4
  %9 = load i32, i32* @password, align 4
  %10 = call i32 @t_clientpasswd(i32 %8, i32 %9)
  %11 = load i32, i32* @tc, align 4
  %12 = call i32 @t_clientgetkey(i32 %11, i32* @B)
  store i32 %12, i32* @skey, align 4
  %13 = load i32, i32* @skey, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

16:                                               ; preds = %0
  %17 = load i32, i32* @skey, align 4
  %18 = call i32 @ead_set_key(i32 %17)
  %19 = load i32, i32* @EAD_TYPE_SEND_AUTH, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = call i8* @htonl(i32 4)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ead_msg_auth*, %struct.ead_msg_auth** %2, align 8
  %27 = getelementptr inbounds %struct.ead_msg_auth, %struct.ead_msg_auth* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @tc, align 4
  %30 = call i32 @t_clientresponse(i32 %29)
  %31 = call i32 @memcpy(i32 %28, i32 %30, i32 4)
  %32 = load i32, i32* @EAD_TYPE_DONE_AUTH, align 4
  %33 = load i32, i32* @handle_done_auth, align 4
  %34 = call i32 @send_packet(i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %16, %15
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local %struct.ead_msg_auth* @EAD_DATA(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @prepare_password(...) #1

declare dso_local i32 @t_clientpasswd(i32, i32) #1

declare dso_local i32 @t_clientgetkey(i32, i32*) #1

declare dso_local i32 @ead_set_key(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @t_clientresponse(i32) #1

declare dso_local i32 @send_packet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
