; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_dbgchnl.c_DebugChannels_FillList.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_dbgchnl.c_DebugChannels_FillList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_VM_OPERATION = common dso_local global i32 0, align 4
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WM_SETREDRAW = common dso_local global i32 0, align 4
@list_channel_CB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @DebugChannels_FillList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DebugChannels_FillList(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @ListView_DeleteAllItems(i64 %4)
  %6 = load i32, i32* @PROCESS_VM_OPERATION, align 4
  %7 = load i32, i32* @PROCESS_VM_READ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 (...) @GetSelectedProcessId()
  %11 = call i32 @OpenProcess(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* @WM_SETREDRAW, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @SendMessageW(i64 %16, i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @list_channel_CB, align 4
  %22 = load i64, i64* %2, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @enum_channel(i32 %20, i32 %21, i8* %23, i32 %24)
  %26 = load i64, i64* %2, align 8
  %27 = load i32, i32* @WM_SETREDRAW, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @SendMessageW(i64 %26, i32 %27, i32 %28, i32 0)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CloseHandle(i32 %30)
  br label %32

32:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ListView_DeleteAllItems(i64) #1

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @GetSelectedProcessId(...) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @enum_channel(i32, i32, i8*, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
