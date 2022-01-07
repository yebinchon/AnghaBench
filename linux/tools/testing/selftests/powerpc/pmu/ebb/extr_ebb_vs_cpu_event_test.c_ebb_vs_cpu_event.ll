; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_vs_cpu_event_test.c_ebb_vs_cpu_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_vs_cpu_event_test.c_ebb_vs_cpu_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pipe = type { i32 }
%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebb_vs_cpu_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.pipe, align 4
  %3 = alloca %union.pipe, align 4
  %4 = alloca %struct.event, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i32 (...) @ebb_is_supported()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @SKIP_IF(i32 %11)
  %13 = call i32 (...) @pick_online_cpu()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @FAIL_IF(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bind_to_cpu(i32 %18)
  %20 = call i32 @FAIL_IF(i32 %19)
  %21 = bitcast %union.pipe* %2 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pipe(i32 %22)
  %24 = icmp eq i32 %23, -1
  %25 = zext i1 %24 to i32
  %26 = call i32 @FAIL_IF(i32 %25)
  %27 = bitcast %union.pipe* %3 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pipe(i32 %28)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @FAIL_IF(i32 %31)
  %33 = call i64 (...) @fork()
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %0
  %37 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ebb_child(i32 %38, i32 %40)
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %0
  %44 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sync_with_child(i32 %45, i32 %47)
  %49 = call i32 @FAIL_IF(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @setup_cpu_event(%struct.event* %4, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @kill_child_and_wait(i64 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %1, align 4
  br label %82

58:                                               ; preds = %43
  %59 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %union.pipe, %union.pipe* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sync_with_child(i32 %60, i32 %62)
  %64 = call i32 @FAIL_IF(i32 %63)
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @wait_for_child(i64 %65)
  %67 = call i32 @FAIL_IF(i32 %66)
  %68 = call i32 @event_disable(%struct.event* %4)
  %69 = call i32 @FAIL_IF(i32 %68)
  %70 = call i32 @event_read(%struct.event* %4)
  %71 = call i32 @FAIL_IF(i32 %70)
  %72 = call i32 @event_report(%struct.event* %4)
  %73 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @FAIL_IF(i32 %80)
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %58, %54
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @pick_online_cpu(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @bind_to_cpu(i32) #1

declare dso_local i32 @pipe(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ebb_child(i32, i32) #1

declare dso_local i32 @sync_with_child(i32, i32) #1

declare dso_local i32 @setup_cpu_event(%struct.event*, i32) #1

declare dso_local i32 @kill_child_and_wait(i64) #1

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
