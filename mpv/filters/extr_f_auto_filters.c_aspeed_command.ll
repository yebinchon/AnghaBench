; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_aspeed_command.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_aspeed_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.aspeed_priv* }
%struct.aspeed_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mp_filter_command = type { i64, i32, i32 }

@MP_FILTER_COMMAND_SET_SPEED = common dso_local global i64 0, align 8
@MP_FILTER_COMMAND_IS_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_filter_command*)* @aspeed_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_command(%struct.mp_filter* %0, %struct.mp_filter_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_filter_command*, align 8
  %6 = alloca %struct.aspeed_priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_filter_command* %1, %struct.mp_filter_command** %5, align 8
  %7 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %8 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %7, i32 0, i32 0
  %9 = load %struct.aspeed_priv*, %struct.aspeed_priv** %8, align 8
  store %struct.aspeed_priv* %9, %struct.aspeed_priv** %6, align 8
  %10 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %11 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_FILTER_COMMAND_SET_SPEED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %17 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.aspeed_priv*, %struct.aspeed_priv** %6, align 8
  %20 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %23 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MP_FILTER_COMMAND_IS_ACTIVE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.aspeed_priv*, %struct.aspeed_priv** %6, align 8
  %29 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %37 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %27, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
