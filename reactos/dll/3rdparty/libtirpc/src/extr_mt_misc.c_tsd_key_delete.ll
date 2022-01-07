; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_mt_misc.c_tsd_key_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_mt_misc.c_tsd_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clnt_broadcast_key = common dso_local global i32 0, align 4
@rpc_call_key = common dso_local global i32 0, align 4
@tcp_key = common dso_local global i32 0, align 4
@udp_key = common dso_local global i32 0, align 4
@nc_key = common dso_local global i32 0, align 4
@rce_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsd_key_delete() #0 {
  %1 = load i32, i32* @clnt_broadcast_key, align 4
  %2 = icmp ne i32 %1, -1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @clnt_broadcast_key, align 4
  %5 = call i32 @thr_keydelete(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @rpc_call_key, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @rpc_call_key, align 4
  %11 = call i32 @thr_keydelete(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @tcp_key, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @tcp_key, align 4
  %17 = call i32 @thr_keydelete(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @udp_key, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @udp_key, align 4
  %23 = call i32 @thr_keydelete(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @nc_key, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @nc_key, align 4
  %29 = call i32 @thr_keydelete(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @rce_key, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @rce_key, align 4
  %35 = call i32 @thr_keydelete(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @thr_keydelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
