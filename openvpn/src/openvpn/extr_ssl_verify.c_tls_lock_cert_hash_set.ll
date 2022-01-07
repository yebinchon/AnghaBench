; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_lock_cert_hash_set.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_lock_cert_hash_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cert_hash_set* }
%struct.cert_hash_set = type { i32 }

@TM_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_lock_cert_hash_set(%struct.tls_multi* %0) #0 {
  %2 = alloca %struct.tls_multi*, align 8
  %3 = alloca %struct.cert_hash_set*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %2, align 8
  %4 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %5 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i64, i64* @TM_ACTIVE, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.cert_hash_set*, %struct.cert_hash_set** %9, align 8
  store %struct.cert_hash_set* %10, %struct.cert_hash_set** %3, align 8
  %11 = load %struct.cert_hash_set*, %struct.cert_hash_set** %3, align 8
  %12 = icmp ne %struct.cert_hash_set* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %15 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.cert_hash_set*, %struct.cert_hash_set** %3, align 8
  %20 = call i64 @cert_hash_copy(%struct.cert_hash_set* %19)
  %21 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %22 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i64 @cert_hash_copy(%struct.cert_hash_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
