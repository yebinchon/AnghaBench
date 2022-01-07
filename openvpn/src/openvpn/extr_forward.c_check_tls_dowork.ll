; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_tls_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_tls_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BIG_TIMEOUT = common dso_local global i64 0, align 8
@TLSMP_ACTIVE = common dso_local global i32 0, align 4
@TLSMP_KILL = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"auth-control-exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_tls_dowork(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %5 = load i64, i64* @BIG_TIMEOUT, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i64 @interval_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.context*, %struct.context** %2, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.context*, %struct.context** %2, align 8
  %23 = call i32 @get_link_socket_info(%struct.context* %22)
  %24 = call i32 @tls_multi_process(i32 %15, i32* %18, i32* %21, i32 %23, i64* %3)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TLSMP_ACTIVE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %11
  %29 = call i32 (...) @update_time()
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @interval_action(i32* %32)
  br label %43

34:                                               ; preds = %11
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @TLSMP_KILL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.context*, %struct.context** %2, align 8
  %40 = load i32, i32* @SIGTERM, align 4
  %41 = call i32 @register_signal(%struct.context* %39, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.context*, %struct.context** %2, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @interval_future_trigger(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %1
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @interval_schedule_wakeup(i32* %52, i64* %3)
  %54 = load i64, i64* %3, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.context*, %struct.context** %2, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @context_reschedule_sec(%struct.context* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %49
  ret void
}

declare dso_local i64 @interval_test(i32*) #1

declare dso_local i32 @tls_multi_process(i32, i32*, i32*, i32, i64*) #1

declare dso_local i32 @get_link_socket_info(%struct.context*) #1

declare dso_local i32 @update_time(...) #1

declare dso_local i32 @interval_action(i32*) #1

declare dso_local i32 @register_signal(%struct.context*, i32, i8*) #1

declare dso_local i32 @interval_future_trigger(i32*, i64) #1

declare dso_local i32 @interval_schedule_wakeup(i32*, i64*) #1

declare dso_local i32 @context_reschedule_sec(%struct.context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
