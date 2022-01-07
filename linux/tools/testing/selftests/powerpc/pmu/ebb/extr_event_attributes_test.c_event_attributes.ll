; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_event_attributes_test.c_event_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_event_attributes_test.c_event_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_attributes() #0 {
  %1 = alloca %struct.event, align 8
  %2 = alloca %struct.event, align 8
  %3 = call i32 (...) @ebb_is_supported()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @SKIP_IF(i32 %6)
  %8 = call i32 @event_init(%struct.event* %1, i32 65566)
  %9 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %10 = call i32 @event_open(%struct.event* %1)
  %11 = call i32 @FAIL_IF(i32 %10)
  %12 = call i32 @event_close(%struct.event* %1)
  %13 = call i32 @event_init(%struct.event* %1, i32 30)
  %14 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %15 = call i32 @event_open(%struct.event* %1)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @FAIL_IF(i32 %17)
  %19 = call i32 @event_init(%struct.event* %1, i32 131102)
  %20 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %21 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = call i32 @event_open(%struct.event* %1)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @FAIL_IF(i32 %25)
  %27 = call i32 @event_init(%struct.event* %1, i32 196638)
  %28 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %29 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = call i32 @event_open(%struct.event* %1)
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @FAIL_IF(i32 %33)
  %35 = call i32 @event_init(%struct.event* %1, i32 262174)
  %36 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %37 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = call i32 @event_open(%struct.event* %1)
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @FAIL_IF(i32 %41)
  %43 = call i32 @event_init(%struct.event* %1, i32 65566)
  %44 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %45 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = call i32 @event_open(%struct.event* %1)
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @FAIL_IF(i32 %49)
  %51 = call i32 @event_init(%struct.event* %1, i32 65566)
  %52 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %53 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  %55 = call i32 @event_open(%struct.event* %1)
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @FAIL_IF(i32 %57)
  %59 = call i32 @event_init(%struct.event* %2, i32 65566)
  %60 = call i32 @event_leader_ebb_init(%struct.event* %2)
  %61 = call i32 @event_open(%struct.event* %2)
  %62 = call i32 @FAIL_IF(i32 %61)
  %63 = call i32 @event_init(%struct.event* %1, i32 131074)
  %64 = call i32 @event_ebb_init(%struct.event* %1)
  %65 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @event_open_with_group(%struct.event* %1, i32 %66)
  %68 = call i32 @FAIL_IF(i32 %67)
  %69 = call i32 @event_close(%struct.event* %2)
  %70 = call i32 @event_close(%struct.event* %1)
  %71 = call i32 @event_init(%struct.event* %2, i32 65566)
  %72 = call i32 @event_leader_ebb_init(%struct.event* %2)
  %73 = call i32 @event_open(%struct.event* %2)
  %74 = call i32 @FAIL_IF(i32 %73)
  %75 = call i32 @event_init(%struct.event* %1, i32 131074)
  %76 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @event_open_with_group(%struct.event* %1, i32 %77)
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @FAIL_IF(i32 %80)
  %82 = call i32 @event_close(%struct.event* %2)
  %83 = call i32 @event_init(%struct.event* %2, i32 65566)
  %84 = call i32 @event_leader_ebb_init(%struct.event* %2)
  %85 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %87, 9223372036854775807
  store i64 %88, i64* %86, align 8
  %89 = call i32 @event_open(%struct.event* %2)
  %90 = call i32 @FAIL_IF(i32 %89)
  %91 = call i32 @event_init(%struct.event* %1, i32 131074)
  %92 = call i32 @event_ebb_init(%struct.event* %1)
  %93 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @event_open_with_group(%struct.event* %1, i32 %94)
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @FAIL_IF(i32 %97)
  %99 = call i32 @event_close(%struct.event* %2)
  %100 = call i32 @event_init(%struct.event* %2, i32 65566)
  %101 = call i32 @event_leader_ebb_init(%struct.event* %2)
  %102 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  %104 = call i32 @event_open(%struct.event* %2)
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @FAIL_IF(i32 %106)
  %108 = call i32 @event_init(%struct.event* %2, i32 65566)
  %109 = call i32 @event_leader_ebb_init(%struct.event* %2)
  %110 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 5
  store i64 0, i64* %111, align 8
  %112 = call i32 @event_open(%struct.event* %2)
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @FAIL_IF(i32 %114)
  %116 = call i32 @event_init(%struct.event* %1, i32 65566)
  %117 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %118 = call i32 @require_paranoia_below(i32 1)
  %119 = call i32 @SKIP_IF(i32 %118)
  %120 = call i64 @event_open_with_cpu(%struct.event* %1, i32 0)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @FAIL_IF(i32 %122)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init(%struct.event*, i32) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @event_close(%struct.event*) #1

declare dso_local i32 @event_ebb_init(%struct.event*) #1

declare dso_local i32 @event_open_with_group(%struct.event*, i32) #1

declare dso_local i32 @require_paranoia_below(i32) #1

declare dso_local i64 @event_open_with_cpu(%struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
