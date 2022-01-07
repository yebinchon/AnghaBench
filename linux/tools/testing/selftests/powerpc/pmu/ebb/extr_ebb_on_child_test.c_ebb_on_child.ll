; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_on_child_test.c_ebb_on_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_on_child_test.c_ebb_on_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pipe = type { i32 }
%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebb_on_child() #0 {
  %1 = alloca %union.pipe, align 4
  %2 = alloca %union.pipe, align 4
  %3 = alloca %struct.event, align 4
  %4 = alloca i64, align 8
  %5 = call i32 (...) @ebb_is_supported()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @SKIP_IF(i32 %8)
  %10 = bitcast %union.pipe* %1 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pipe(i32 %11)
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @FAIL_IF(i32 %14)
  %16 = bitcast %union.pipe* %2 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pipe(i32 %17)
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @FAIL_IF(i32 %20)
  %22 = call i64 (...) @fork()
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %0
  %26 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %union.pipe, %union.pipe* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @victim_child(i32 %27, i32 %29)
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %0
  %33 = getelementptr inbounds %union.pipe, %union.pipe* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sync_with_child(i32 %34, i32 %36)
  %38 = call i32 @FAIL_IF(i32 %37)
  %39 = call i32 @event_init_named(%struct.event* %3, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @event_leader_ebb_init(%struct.event* %3)
  %41 = getelementptr inbounds %struct.event, %struct.event* %3, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.event, %struct.event* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.event, %struct.event* %3, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @event_open_with_pid(%struct.event* %3, i64 %47)
  %49 = call i32 @FAIL_IF(i32 %48)
  %50 = call i32 @ebb_event_enable(%struct.event* %3)
  %51 = call i32 @FAIL_IF(i32 %50)
  %52 = getelementptr inbounds %union.pipe, %union.pipe* %1, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sync_with_child(i32 %53, i32 %55)
  %57 = call i32 @FAIL_IF(i32 %56)
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @wait_for_child(i64 %58)
  %60 = call i32 @FAIL_IF(i32 %59)
  %61 = call i32 @event_close(%struct.event* %3)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @pipe(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @victim_child(i32, i32) #1

declare dso_local i32 @sync_with_child(i32, i32) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @event_open_with_pid(%struct.event*, i64) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @wait_for_child(i64) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
