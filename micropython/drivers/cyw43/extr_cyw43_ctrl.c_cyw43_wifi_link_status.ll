; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cyw43/extr_cyw43_ctrl.c_cyw43_wifi_link_status.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cyw43/extr_cyw43_ctrl.c_cyw43_wifi_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CYW43_ITF_STA = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_ACTIVE = common dso_local global i32 0, align 4
@CYW43_LINK_JOIN = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_FAIL = common dso_local global i32 0, align 4
@CYW43_LINK_FAIL = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_NONET = common dso_local global i32 0, align 4
@CYW43_LINK_NONET = common dso_local global i32 0, align 4
@WIFI_JOIN_STATE_BADAUTH = common dso_local global i32 0, align 4
@CYW43_LINK_BADAUTH = common dso_local global i32 0, align 4
@CYW43_LINK_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyw43_wifi_link_status(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CYW43_ITF_STA, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @WIFI_JOIN_STATE_ACTIVE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @CYW43_LINK_JOIN, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @WIFI_JOIN_STATE_FAIL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @CYW43_LINK_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @WIFI_JOIN_STATE_NONET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @CYW43_LINK_NONET, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @WIFI_JOIN_STATE_BADAUTH, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @CYW43_LINK_BADAUTH, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @CYW43_LINK_DOWN, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @CYW43_LINK_DOWN, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %30, %24, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
