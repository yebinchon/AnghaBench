; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_auth_user_pass_setup.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_auth_user_pass_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.static_challenge_info = type { i32, i64 }

@auth_user_pass_enabled = common dso_local global i32 0, align 4
@auth_user_pass = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@auth_token = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UP_TYPE_AUTH = common dso_local global i32 0, align 4
@GET_USER_PASS_MANAGEMENT = common dso_local global i32 0, align 4
@GET_USER_PASS_DYNAMIC_CHALLENGE = common dso_local global i32 0, align 4
@GET_USER_PASS_STATIC_CHALLENGE = common dso_local global i32 0, align 4
@GET_USER_PASS_STATIC_CHALLENGE_ECHO = common dso_local global i32 0, align 4
@SC_ECHO = common dso_local global i32 0, align 4
@auth_challenge = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_user_pass_setup(i8* %0, %struct.static_challenge_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.static_challenge_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.static_challenge_info* %1, %struct.static_challenge_info** %4, align 8
  store i32 1, i32* @auth_user_pass_enabled, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @auth_user_pass, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @auth_token, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @UP_TYPE_AUTH, align 4
  %13 = load i32, i32* @GET_USER_PASS_MANAGEMENT, align 4
  %14 = call i32 @get_user_pass(%struct.TYPE_5__* @auth_user_pass, i8* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %7, %2
  ret void
}

declare dso_local i32 @get_user_pass(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
