; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_wait_for_parent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_wait_for_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pipe = type { i32 }

@PARENT_TOKEN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_parent(i32 %0) #0 {
  %2 = alloca %union.pipe, align 4
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %union.pipe, %union.pipe* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = bitcast %union.pipe* %2 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @read(i32 %6, i8* %3, i32 1)
  %8 = icmp ne i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @FAIL_IF(i32 %9)
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @PARENT_TOKEN, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @FAIL_IF(i32 %16)
  ret i32 0
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
