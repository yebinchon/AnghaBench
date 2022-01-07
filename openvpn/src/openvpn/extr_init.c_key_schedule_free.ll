; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_key_schedule_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_key_schedule_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_schedule = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_schedule*, i32)* @key_schedule_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_schedule_free(%struct.key_schedule* %0, i32 %1) #0 {
  %3 = alloca %struct.key_schedule*, align 8
  %4 = alloca i32, align 4
  %5 = alloca { i64, i32 }, align 4
  store %struct.key_schedule* %0, %struct.key_schedule** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.key_schedule*, %struct.key_schedule** %3, align 8
  %7 = getelementptr inbounds %struct.key_schedule, %struct.key_schedule* %6, i32 0, i32 2
  %8 = call i32 @free_key_ctx_bi(i32* %7)
  %9 = load %struct.key_schedule*, %struct.key_schedule** %3, align 8
  %10 = getelementptr inbounds %struct.key_schedule, %struct.key_schedule* %9, i32 0, i32 1
  %11 = call i64 @tls_ctx_initialised(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.key_schedule*, %struct.key_schedule** %3, align 8
  %18 = getelementptr inbounds %struct.key_schedule, %struct.key_schedule* %17, i32 0, i32 1
  %19 = call i32 @tls_ctx_free(i32* %18)
  %20 = load %struct.key_schedule*, %struct.key_schedule** %3, align 8
  %21 = getelementptr inbounds %struct.key_schedule, %struct.key_schedule* %20, i32 0, i32 0
  %22 = call i32 @free_key_ctx(i32* %21)
  br label %23

23:                                               ; preds = %16, %13, %2
  %24 = load %struct.key_schedule*, %struct.key_schedule** %3, align 8
  %25 = bitcast { i64, i32 }* %5 to i8*
  %26 = bitcast %struct.key_schedule* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 4
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CLEAR(i64 %28, i32 %30)
  ret void
}

declare dso_local i32 @free_key_ctx_bi(i32*) #1

declare dso_local i64 @tls_ctx_initialised(i32*) #1

declare dso_local i32 @tls_ctx_free(i32*) #1

declare dso_local i32 @free_key_ctx(i32*) #1

declare dso_local i32 @CLEAR(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
