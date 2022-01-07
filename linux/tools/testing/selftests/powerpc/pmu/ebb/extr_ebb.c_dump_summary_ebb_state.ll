; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_dump_summary_ebb_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_dump_summary_ebb_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [236 x i8] c"ebb_state:\0A  ebb_count    = %d\0A  spurious     = %d\0A  negative     = %d\0A  no_overflow  = %d\0A  pmc[1] count = 0x%llx\0A  pmc[2] count = 0x%llx\0A  pmc[3] count = 0x%llx\0A  pmc[4] count = 0x%llx\0A  pmc[5] count = 0x%llx\0A  pmc[6] count = 0x%llx\0A\00", align 1
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_summary_ebb_state() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 2), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 3), align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 4), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 4), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 4), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 4), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 4), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 4), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
