; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.h_tls_wrap_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.h_tls_wrap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_wrap_ctx = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_wrap_ctx*)* @tls_wrap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_wrap_free(%struct.tls_wrap_ctx* %0) #0 {
  %2 = alloca %struct.tls_wrap_ctx*, align 8
  store %struct.tls_wrap_ctx* %0, %struct.tls_wrap_ctx** %2, align 8
  %3 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = call i64 @packet_id_initialized(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @packet_id_free(i32* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @free_key_ctx_bi(i32* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %24, i32 0, i32 1
  %26 = call i32 @free_buf(i32* %25)
  %27 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %27, i32 0, i32 0
  %29 = call i32 @free_buf(i32* %28)
  ret void
}

declare dso_local i64 @packet_id_initialized(i32*) #1

declare dso_local i32 @packet_id_free(i32*) #1

declare dso_local i32 @free_key_ctx_bi(i32*) #1

declare dso_local i32 @free_buf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
