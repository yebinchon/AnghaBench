; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_multi_init_finalize.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_multi_init_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.frame = type { i32 }

@TM_ACTIVE = common dso_local global i64 0, align 8
@TM_UNTRUSTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_multi_init_finalize(%struct.tls_multi* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca %struct.frame*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %5 = load %struct.frame*, %struct.frame** %4, align 8
  %6 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %7 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @tls_init_control_channel_frame_parameters(%struct.frame* %5, i32* %8)
  %10 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %11 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %12 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @TM_ACTIVE, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @tls_session_init(%struct.tls_multi* %10, i32* %15)
  %17 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %18 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %24 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %25 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @TM_UNTRUSTED, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @tls_session_init(%struct.tls_multi* %23, i32* %28)
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @tls_init_control_channel_frame_parameters(%struct.frame*, i32*) #1

declare dso_local i32 @tls_session_init(%struct.tls_multi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
