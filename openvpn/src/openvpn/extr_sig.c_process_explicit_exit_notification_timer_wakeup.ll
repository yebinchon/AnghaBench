; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_sig.c_process_explicit_exit_notification_timer_wakeup.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_sig.c_process_explicit_exit_notification_timer_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ETT_DEFAULT = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"exit-with-notification\00", align 1
@OCC_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_explicit_exit_notification_timer_wakeup(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load i32, i32* @ETT_DEFAULT, align 4
  %10 = call i64 @event_timeout_trigger(i32* %5, i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %1
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.context*, %struct.context** %2, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi i1 [ false, %12 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i64, i64* @now, align 8
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.context*, %struct.context** %2, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = icmp sge i64 %29, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %25
  %42 = load %struct.context*, %struct.context** %2, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call i32 @event_timeout_clear(i32* %44)
  %46 = load i32, i32* @SIGTERM, align 4
  %47 = load %struct.context*, %struct.context** %2, align 8
  %48 = getelementptr inbounds %struct.context, %struct.context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 8
  %51 = load %struct.context*, %struct.context** %2, align 8
  %52 = getelementptr inbounds %struct.context, %struct.context* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %54, align 8
  br label %60

55:                                               ; preds = %25
  %56 = load i32, i32* @OCC_EXIT, align 4
  %57 = load %struct.context*, %struct.context** %2, align 8
  %58 = getelementptr inbounds %struct.context, %struct.context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %41
  br label %61

61:                                               ; preds = %60, %1
  ret void
}

declare dso_local i64 @event_timeout_trigger(i32*, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @event_timeout_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
