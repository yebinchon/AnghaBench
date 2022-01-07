; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.c_se_reset.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.c_se_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_set = type { i32 }
%struct.se_set = type { i32, i32**, i32, i32, i32 }

@D_EVENT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SE_RESET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_set*)* @se_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se_reset(%struct.event_set* %0) #0 {
  %2 = alloca %struct.event_set*, align 8
  %3 = alloca %struct.se_set*, align 8
  %4 = alloca i32, align 4
  store %struct.event_set* %0, %struct.event_set** %2, align 8
  %5 = load %struct.event_set*, %struct.event_set** %2, align 8
  %6 = bitcast %struct.event_set* %5 to %struct.se_set*
  store %struct.se_set* %6, %struct.se_set** %3, align 8
  %7 = load %struct.se_set*, %struct.se_set** %3, align 8
  %8 = getelementptr inbounds %struct.se_set, %struct.se_set* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @D_EVENT_WAIT, align 4
  %12 = call i32 @dmsg(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.se_set*, %struct.se_set** %3, align 8
  %14 = getelementptr inbounds %struct.se_set, %struct.se_set* %13, i32 0, i32 3
  %15 = call i32 @FD_ZERO(i32* %14)
  %16 = load %struct.se_set*, %struct.se_set** %3, align 8
  %17 = getelementptr inbounds %struct.se_set, %struct.se_set* %16, i32 0, i32 2
  %18 = call i32 @FD_ZERO(i32* %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %32, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.se_set*, %struct.se_set** %3, align 8
  %22 = getelementptr inbounds %struct.se_set, %struct.se_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.se_set*, %struct.se_set** %3, align 8
  %27 = getelementptr inbounds %struct.se_set, %struct.se_set* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.se_set*, %struct.se_set** %3, align 8
  %37 = getelementptr inbounds %struct.se_set, %struct.se_set* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmsg(i32, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
