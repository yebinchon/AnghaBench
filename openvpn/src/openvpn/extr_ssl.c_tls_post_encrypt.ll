; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_post_encrypt.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_post_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { %struct.key_state* }
%struct.key_state = type { i32, i32 }
%struct.buffer = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_post_encrypt(%struct.tls_multi* %0, %struct.buffer* %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.key_state*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store %struct.buffer* %1, %struct.buffer** %4, align 8
  %6 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %7 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %6, i32 0, i32 0
  %8 = load %struct.key_state*, %struct.key_state** %7, align 8
  store %struct.key_state* %8, %struct.key_state** %5, align 8
  %9 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %10 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %9, i32 0, i32 0
  store %struct.key_state* null, %struct.key_state** %10, align 8
  %11 = load %struct.buffer*, %struct.buffer** %4, align 8
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.key_state*, %struct.key_state** %5, align 8
  %17 = call i32 @ASSERT(%struct.key_state* %16)
  %18 = load %struct.key_state*, %struct.key_state** %5, align 8
  %19 = getelementptr inbounds %struct.key_state, %struct.key_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.buffer*, %struct.buffer** %4, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.key_state*, %struct.key_state** %5, align 8
  %26 = getelementptr inbounds %struct.key_state, %struct.key_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  br label %31

31:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @ASSERT(%struct.key_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
