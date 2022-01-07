; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ptrace_syscall.c_setsigign.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ptrace_syscall.c_setsigign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i8* }

@SIG_IGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @setsigign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsigign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.sigaction* %5, i32 0, i32 16)
  %7 = load i64, i64* @SIG_IGN, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  %13 = call i32 @sigemptyset(i32* %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @sigaction(i32 %14, %struct.sigaction* %5, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
