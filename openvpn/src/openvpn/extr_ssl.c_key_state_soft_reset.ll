; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_state_soft_reset.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_state_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_session = type { %struct.TYPE_2__*, %struct.key_state* }
%struct.TYPE_2__ = type { i64 }
%struct.key_state = type { i32, i32, i64 }

@KS_PRIMARY = common dso_local global i64 0, align 8
@KS_LAME_DUCK = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_session*)* @key_state_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_state_soft_reset(%struct.tls_session* %0) #0 {
  %2 = alloca %struct.tls_session*, align 8
  %3 = alloca %struct.key_state*, align 8
  %4 = alloca %struct.key_state*, align 8
  store %struct.tls_session* %0, %struct.tls_session** %2, align 8
  %5 = load %struct.tls_session*, %struct.tls_session** %2, align 8
  %6 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %5, i32 0, i32 1
  %7 = load %struct.key_state*, %struct.key_state** %6, align 8
  %8 = load i64, i64* @KS_PRIMARY, align 8
  %9 = getelementptr inbounds %struct.key_state, %struct.key_state* %7, i64 %8
  store %struct.key_state* %9, %struct.key_state** %3, align 8
  %10 = load %struct.tls_session*, %struct.tls_session** %2, align 8
  %11 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %10, i32 0, i32 1
  %12 = load %struct.key_state*, %struct.key_state** %11, align 8
  %13 = load i64, i64* @KS_LAME_DUCK, align 8
  %14 = getelementptr inbounds %struct.key_state, %struct.key_state* %12, i64 %13
  store %struct.key_state* %14, %struct.key_state** %4, align 8
  %15 = load i64, i64* @now, align 8
  %16 = load %struct.tls_session*, %struct.tls_session** %2, align 8
  %17 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = load %struct.key_state*, %struct.key_state** %3, align 8
  %23 = getelementptr inbounds %struct.key_state, %struct.key_state* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.key_state*, %struct.key_state** %4, align 8
  %25 = call i32 @key_state_free(%struct.key_state* %24, i32 0)
  %26 = load %struct.key_state*, %struct.key_state** %4, align 8
  %27 = load %struct.key_state*, %struct.key_state** %3, align 8
  %28 = bitcast %struct.key_state* %26 to i8*
  %29 = bitcast %struct.key_state* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = load %struct.tls_session*, %struct.tls_session** %2, align 8
  %31 = load %struct.key_state*, %struct.key_state** %3, align 8
  %32 = call i32 @key_state_init(%struct.tls_session* %30, %struct.key_state* %31)
  %33 = load %struct.key_state*, %struct.key_state** %4, align 8
  %34 = getelementptr inbounds %struct.key_state, %struct.key_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.key_state*, %struct.key_state** %3, align 8
  %37 = getelementptr inbounds %struct.key_state, %struct.key_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.key_state*, %struct.key_state** %4, align 8
  %39 = getelementptr inbounds %struct.key_state, %struct.key_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.key_state*, %struct.key_state** %3, align 8
  %42 = getelementptr inbounds %struct.key_state, %struct.key_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local i32 @key_state_free(%struct.key_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @key_state_init(%struct.tls_session*, %struct.key_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
