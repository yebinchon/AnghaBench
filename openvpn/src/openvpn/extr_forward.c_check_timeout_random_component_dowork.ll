; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_timeout_random_component_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_timeout_random_component_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@now = common dso_local global i64 0, align 8
@D_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"RANDOM USEC=%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @check_timeout_random_component_dowork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_timeout_random_component_dowork(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  store i32 10, i32* %3, align 4
  %4 = load i64, i64* @now, align 8
  %5 = add nsw i64 %4, 10
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 %5, i64* %8, align 8
  %9 = call i64 (...) @get_random()
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 262143
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 8
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @D_INTERVAL, align 4
  %21 = load %struct.context*, %struct.context** %2, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = call i32 @dmsg(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %26)
  ret void
}

declare dso_local i64 @get_random(...) #1

declare dso_local i32 @dmsg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
