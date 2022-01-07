; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.h_tun_set.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.h_tun_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i32 }
%struct.event_set = type { i32 }

@EVENT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tuntap*, %struct.event_set*, i32, i8*, i32*)* @tun_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_set(%struct.tuntap* %0, %struct.event_set* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.tuntap*, align 8
  %7 = alloca %struct.event_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.tuntap* %0, %struct.tuntap** %6, align 8
  store %struct.event_set* %1, %struct.event_set** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %12 = call i64 @tuntap_defined(%struct.tuntap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %5
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17, %14
  %23 = load %struct.event_set*, %struct.event_set** %7, align 8
  %24 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %25 = call i32 @tun_event_handle(%struct.tuntap* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @event_ctl(%struct.event_set* %23, i32 %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %38 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %5
  ret void
}

declare dso_local i64 @tuntap_defined(%struct.tuntap*) #1

declare dso_local i32 @event_ctl(%struct.event_set*, i32, i32, i8*) #1

declare dso_local i32 @tun_event_handle(%struct.tuntap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
