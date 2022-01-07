; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_timers.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64 }

@now = common dso_local global i32 0, align 4
@TLS_MULTI_HORIZON = common dso_local global i32 0, align 4
@TLS_MULTI_REFRESH = common dso_local global i32 0, align 4
@OCC_INTERVAL_SECONDS = common dso_local global i32 0, align 4
@OCC_MTU_LOAD_INTERVAL_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32)* @do_init_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_timers(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @update_time()
  %6 = load %struct.context*, %struct.context** %3, align 8
  %7 = call i32 @reset_coarse_timers(%struct.context* %6)
  %8 = load %struct.context*, %struct.context** %3, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.context*, %struct.context** %3, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 9
  %17 = load %struct.context*, %struct.context** %3, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @now, align 4
  %22 = call i32 @event_timeout_init(i32* %16, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.context*, %struct.context** %3, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.context*, %struct.context** %3, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = load %struct.context*, %struct.context** %3, align 8
  %34 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @event_timeout_init(i32* %32, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.context*, %struct.context** %3, align 8
  %40 = getelementptr inbounds %struct.context, %struct.context* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.context*, %struct.context** %3, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = load %struct.context*, %struct.context** %3, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @now, align 4
  %53 = call i32 @event_timeout_init(i32* %47, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %54
  %58 = load %struct.context*, %struct.context** %3, align 8
  %59 = getelementptr inbounds %struct.context, %struct.context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i32, i32* @now, align 4
  %62 = call i32 @event_timeout_init(i32* %60, i32 1, i32 %61)
  %63 = load %struct.context*, %struct.context** %3, align 8
  %64 = getelementptr inbounds %struct.context, %struct.context* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.context*, %struct.context** %3, align 8
  %70 = getelementptr inbounds %struct.context, %struct.context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* @now, align 4
  %73 = call i32 @event_timeout_init(i32* %71, i32 60, i32 %72)
  br label %74

74:                                               ; preds = %68, %57
  %75 = load %struct.context*, %struct.context** %3, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* @TLS_MULTI_HORIZON, align 4
  %79 = load i32, i32* @TLS_MULTI_REFRESH, align 4
  %80 = call i32 @interval_init(i32* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %54
  ret void
}

declare dso_local i32 @update_time(...) #1

declare dso_local i32 @reset_coarse_timers(%struct.context*) #1

declare dso_local i32 @event_timeout_init(i32*, i32, i32) #1

declare dso_local i32 @interval_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
