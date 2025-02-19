; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spr.c_trace_tm_spr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spr.c_trace_tm_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.tm_spr_regs = type { i32 }

@pptr = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"TFHAR: %lx TEXASR: %lx TFIAR: %lx\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_tm_spr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @start_trace(i32 %3)
  %5 = call i32 @FAIL_IF(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pptr, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = bitcast %struct.TYPE_3__* %8 to %struct.tm_spr_regs*
  %10 = call i32 @show_tm_spr(i32 %6, %struct.tm_spr_regs* %9)
  %11 = call i32 @FAIL_IF(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pptr, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pptr, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pptr, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pptr, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @stop_trace(i32 %27)
  %29 = call i32 @FAIL_IF(i32 %28)
  %30 = load i32, i32* @TEST_PASS, align 4
  ret i32 %30
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @start_trace(i32) #1

declare dso_local i32 @show_tm_spr(i32, %struct.tm_spr_regs*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @stop_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
