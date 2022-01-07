; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.h_tls_test_payload_len.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.h_tls_test_payload_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.key_state* }
%struct.key_state = type { i64, i32 }

@TM_ACTIVE = common dso_local global i64 0, align 8
@KS_PRIMARY = common dso_local global i64 0, align 8
@S_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_multi*)* @tls_test_payload_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_test_payload_len(%struct.tls_multi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca %struct.key_state*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  %5 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %6 = icmp ne %struct.tls_multi* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %9 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @TM_ACTIVE, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.key_state*, %struct.key_state** %13, align 8
  %15 = load i64, i64* @KS_PRIMARY, align 8
  %16 = getelementptr inbounds %struct.key_state, %struct.key_state* %14, i64 %15
  store %struct.key_state* %16, %struct.key_state** %4, align 8
  %17 = load %struct.key_state*, %struct.key_state** %4, align 8
  %18 = getelementptr inbounds %struct.key_state, %struct.key_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S_ACTIVE, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load %struct.key_state*, %struct.key_state** %4, align 8
  %24 = getelementptr inbounds %struct.key_state, %struct.key_state* %23, i32 0, i32 1
  %25 = call i32 @BLEN(i32* %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @BLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
