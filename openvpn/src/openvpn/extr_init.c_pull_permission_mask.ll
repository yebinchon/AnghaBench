; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_pull_permission_mask.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_pull_permission_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@OPT_P_UP = common dso_local global i32 0, align 4
@OPT_P_ROUTE_EXTRAS = common dso_local global i32 0, align 4
@OPT_P_SOCKBUF = common dso_local global i32 0, align 4
@OPT_P_SOCKFLAGS = common dso_local global i32 0, align 4
@OPT_P_SETENV = common dso_local global i32 0, align 4
@OPT_P_SHAPER = common dso_local global i32 0, align 4
@OPT_P_TIMER = common dso_local global i32 0, align 4
@OPT_P_COMP = common dso_local global i32 0, align 4
@OPT_P_PERSIST = common dso_local global i32 0, align 4
@OPT_P_MESSAGES = common dso_local global i32 0, align 4
@OPT_P_EXPLICIT_NOTIFY = common dso_local global i32 0, align 4
@OPT_P_ECHO = common dso_local global i32 0, align 4
@OPT_P_PULL_MODE = common dso_local global i32 0, align 4
@OPT_P_PEER_ID = common dso_local global i32 0, align 4
@OPT_P_ROUTE = common dso_local global i32 0, align 4
@OPT_P_IPWIN32 = common dso_local global i32 0, align 4
@OPT_P_NCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pull_permission_mask(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load i32, i32* @OPT_P_UP, align 4
  %5 = load i32, i32* @OPT_P_ROUTE_EXTRAS, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @OPT_P_SOCKBUF, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @OPT_P_SOCKFLAGS, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @OPT_P_SETENV, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @OPT_P_SHAPER, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OPT_P_TIMER, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OPT_P_COMP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OPT_P_PERSIST, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @OPT_P_MESSAGES, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @OPT_P_EXPLICIT_NOTIFY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @OPT_P_ECHO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @OPT_P_PULL_MODE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @OPT_P_PEER_ID, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.context*, %struct.context** %2, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @OPT_P_ROUTE, align 4
  %38 = load i32, i32* @OPT_P_IPWIN32, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.context*, %struct.context** %2, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @OPT_P_NCP, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
