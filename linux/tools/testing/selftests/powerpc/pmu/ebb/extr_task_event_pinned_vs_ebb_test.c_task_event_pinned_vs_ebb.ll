; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_task_event_pinned_vs_ebb_test.c_task_event_pinned_vs_ebb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_task_event_pinned_vs_ebb_test.c_task_event_pinned_vs_ebb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pipe = type { i32 }
%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_event_pinned_vs_ebb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.pipe, align 4
  %3 = alloca %union.pipe, align 4
  %4 = alloca %struct.event, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @ebb_is_supported()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @SKIP_IF(i32 %10)
  %12 = bitcast %union.pipe* %2 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pipe(i32 %13)
  %15 = icmp eq i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i32 @FAIL_IF(i32 %16)
  %18 = bitcast %union.pipe* %3 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pipe(i32 %19)
  %21 = icmp eq i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = call i32 @FAIL_IF(i32 %22)
  %24 = call i64 (...) @fork()
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %0
  %28 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ebb_child(i32 %29, i32 %31)
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @setup_child_event(%struct.event* %4, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @kill_child_and_wait(i64 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %1, align 4
  br label %87

43:                                               ; preds = %34
  %44 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sync_with_child(i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %58

51:                                               ; preds = %43
  %52 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sync_with_child(i32 %53, i32 %55)
  %57 = call i32 @FAIL_IF(i32 %56)
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @wait_for_child(i64 %59)
  %61 = icmp ne i32 %60, 2
  %62 = zext i1 %61 to i32
  %63 = call i32 @FAIL_IF(i32 %62)
  %64 = call i32 @event_disable(%struct.event* %4)
  %65 = call i32 @FAIL_IF(i32 %64)
  %66 = call i32 @event_read(%struct.event* %4)
  %67 = call i32 @FAIL_IF(i32 %66)
  %68 = call i32 @event_report(%struct.event* %4)
  %69 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @FAIL_IF(i32 %73)
  %75 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @FAIL_IF(i32 %79)
  %81 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @FAIL_IF(i32 %85)
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %58, %39
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @pipe(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ebb_child(i32, i32) #1

declare dso_local i32 @setup_child_event(%struct.event*, i64) #1

declare dso_local i32 @kill_child_and_wait(i64) #1

declare dso_local i32 @sync_with_child(i32, i32) #1

declare dso_local i32 @wait_for_child(i64) #1

declare dso_local i32 @event_disable(%struct.event*) #1

declare dso_local i32 @event_read(%struct.event*) #1

declare dso_local i32 @event_report(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
