; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc-win.c_mp_uninit_ipc.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc-win.c_mp_uninit_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ipc_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_uninit_ipc(%struct.mp_ipc_ctx* %0) #0 {
  %2 = alloca %struct.mp_ipc_ctx*, align 8
  store %struct.mp_ipc_ctx* %0, %struct.mp_ipc_ctx** %2, align 8
  %3 = load %struct.mp_ipc_ctx*, %struct.mp_ipc_ctx** %2, align 8
  %4 = icmp ne %struct.mp_ipc_ctx* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.mp_ipc_ctx*, %struct.mp_ipc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.mp_ipc_ctx, %struct.mp_ipc_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SetEvent(i32 %9)
  %11 = load %struct.mp_ipc_ctx*, %struct.mp_ipc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.mp_ipc_ctx, %struct.mp_ipc_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pthread_join(i32 %13, i32* null)
  %15 = load %struct.mp_ipc_ctx*, %struct.mp_ipc_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.mp_ipc_ctx, %struct.mp_ipc_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CloseHandle(i32 %17)
  %19 = load %struct.mp_ipc_ctx*, %struct.mp_ipc_ctx** %2, align 8
  %20 = call i32 @talloc_free(%struct.mp_ipc_ctx* %19)
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @talloc_free(%struct.mp_ipc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
