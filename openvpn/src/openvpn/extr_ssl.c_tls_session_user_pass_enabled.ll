; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_session_user_pass_enabled.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_session_user_pass_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY = common dso_local global i32 0, align 4
@management = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_session*)* @tls_session_user_pass_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_session_user_pass_enabled(%struct.tls_session* %0) #0 {
  %2 = alloca %struct.tls_session*, align 8
  store %struct.tls_session* %0, %struct.tls_session** %2, align 8
  %3 = load %struct.tls_session*, %struct.tls_session** %2, align 8
  %4 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load %struct.tls_session*, %struct.tls_session** %2, align 8
  %11 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY, align 4
  %16 = call i64 @plugin_defined(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %9, %1
  %19 = phi i1 [ true, %1 ], [ %17, %9 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @plugin_defined(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
