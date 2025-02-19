; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_lostpeer.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_lostpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connected = common dso_local global i64 0, align 8
@cout = external dso_local global i64, align 8
@data = external dso_local global i32, align 4
@proxflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lostpeer() #0 {
  %1 = load i64, i64* @connected, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = load i64, i64* @cout, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i64, i64* @cout, align 8
  %8 = call i32 @closesocket(i64 %7)
  store i64 0, i64* @cout, align 8
  br label %9

9:                                                ; preds = %6, %3
  %10 = load i32, i32* @data, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @data, align 4
  %14 = call i32 @shutdown(i32 %13, i32 2)
  %15 = load i32, i32* @data, align 4
  %16 = call i32 @close(i32 %15)
  store i32 -1, i32* @data, align 4
  br label %17

17:                                               ; preds = %12, %9
  store i64 0, i64* @connected, align 8
  br label %18

18:                                               ; preds = %17, %0
  %19 = call i32 @pswitch(i32 1)
  %20 = load i64, i64* @connected, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* @cout, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @cout, align 8
  %27 = call i32 @closesocket(i64 %26)
  store i64 0, i64* @cout, align 8
  br label %28

28:                                               ; preds = %25, %22
  store i64 0, i64* @connected, align 8
  br label %29

29:                                               ; preds = %28, %18
  store i64 0, i64* @proxflag, align 8
  %30 = call i32 @pswitch(i32 0)
  ret void
}

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pswitch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
