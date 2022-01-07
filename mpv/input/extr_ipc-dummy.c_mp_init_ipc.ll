; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc-dummy.c_mp_init_ipc.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc-dummy.c_mp_init_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ipc_ctx = type { i32 }
%struct.mp_client_api = type { i32 }
%struct.mpv_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_ipc_ctx* @mp_init_ipc(%struct.mp_client_api* %0, %struct.mpv_global* %1) #0 {
  %3 = alloca %struct.mp_client_api*, align 8
  %4 = alloca %struct.mpv_global*, align 8
  store %struct.mp_client_api* %0, %struct.mp_client_api** %3, align 8
  store %struct.mpv_global* %1, %struct.mpv_global** %4, align 8
  ret %struct.mp_ipc_ctx* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
