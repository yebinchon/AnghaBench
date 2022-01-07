; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_update_socket_active_status.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_update_socket_active_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSD_RSP_PARAMS_SOCKET_OFFSET = common dso_local global i32 0, align 4
@BSD_RSP_PARAMS_STATUS_OFFSET = common dso_local global i32 0, align 4
@ERROR_SOCKET_INACTIVE = common dso_local global i64 0, align 8
@SOCKET_STATUS_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_socket_active_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @BSD_RSP_PARAMS_SOCKET_OFFSET, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @STREAM_TO_UINT32(i32* %5, i32 %6, i64 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @BSD_RSP_PARAMS_STATUS_OFFSET, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @STREAM_TO_UINT32(i32* %9, i32 %10, i64 %11)
  %13 = load i64, i64* @ERROR_SOCKET_INACTIVE, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @SOCKET_STATUS_INACTIVE, align 4
  %19 = call i32 @set_socket_active_status(i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @STREAM_TO_UINT32(i32*, i32, i64) #1

declare dso_local i32 @set_socket_active_status(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
