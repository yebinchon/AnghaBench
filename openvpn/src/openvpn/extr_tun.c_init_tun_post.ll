; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_init_tun_post.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_init_tun_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, %struct.TYPE_6__, %struct.tuntap_options }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tuntap_options = type { i32 }
%struct.frame = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TUN_ADAPTER_INDEX_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tun_post(%struct.tuntap* %0, %struct.frame* %1, %struct.tuntap_options* %2) #0 {
  %4 = alloca %struct.tuntap*, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca %struct.tuntap_options*, align 8
  store %struct.tuntap* %0, %struct.tuntap** %4, align 8
  store %struct.frame* %1, %struct.frame** %5, align 8
  store %struct.tuntap_options* %2, %struct.tuntap_options** %6, align 8
  %7 = load %struct.tuntap*, %struct.tuntap** %4, align 8
  %8 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %7, i32 0, i32 4
  %9 = load %struct.tuntap_options*, %struct.tuntap_options** %6, align 8
  %10 = bitcast %struct.tuntap_options* %8 to i8*
  %11 = bitcast %struct.tuntap_options* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
