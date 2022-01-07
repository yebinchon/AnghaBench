; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.h_register_activity.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.h_register_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32)* @register_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_activity(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.context*, %struct.context** %3, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.context*, %struct.context** %3, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %12
  store i64 %17, i64* %15, align 8
  %18 = load %struct.context*, %struct.context** %3, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.context*, %struct.context** %3, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %10
  %28 = load %struct.context*, %struct.context** %3, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.context*, %struct.context** %3, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @event_timeout_reset(i32* %33)
  br label %35

35:                                               ; preds = %27, %10
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @event_timeout_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
