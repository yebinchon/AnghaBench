; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_test_emulation.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_test_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vsyscall_map_x = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"[RUN]\09checking that vsyscalls are emulated\0A\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@sigtrap = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@num_vsyscall_traps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"[%s]\09vsyscalls are %s (%d instructions in vsyscall page)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"emulated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_emulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_emulation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @vsyscall_map_x, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %36

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @SIGTRAP, align 4
  %10 = load i32, i32* @sigtrap, align 4
  %11 = call i32 @sethandler(i32 %9, i32 %10, i32 0)
  %12 = call i32 (...) @get_eflags()
  %13 = load i32, i32* @X86_EFLAGS_TF, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @set_eflags(i32 %14)
  %16 = call i32 @vtime(i32* %2)
  %17 = call i32 (...) @get_eflags()
  %18 = load i32, i32* @X86_EFLAGS_TF, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @set_eflags(i32 %20)
  %22 = load i32, i32* @num_vsyscall_traps, align 4
  %23 = icmp sgt i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %33 = load i32, i32* @num_vsyscall_traps, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %7, %6
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

declare dso_local i32 @set_eflags(i32) #1

declare dso_local i32 @get_eflags(...) #1

declare dso_local i32 @vtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
