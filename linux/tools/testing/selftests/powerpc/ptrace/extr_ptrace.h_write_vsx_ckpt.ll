; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_vsx_ckpt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_vsx_ckpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32* }

@PTRACE_SETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_CVSX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ptrace(PTRACE_SETREGSET, NT_PPC_TM_CVSX) failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_vsx_ckpt(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca [32 x i64], align 16
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %10 = load i64*, i64** %5, align 8
  %11 = call i32 @memcpy(i64* %9, i64* %10, i32 256)
  %12 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %13 = bitcast i64* %12 to i32*
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 256, i32* %15, align 8
  %16 = load i32, i32* @PTRACE_SETREGSET, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NT_PPC_TM_CVSX, align 4
  %19 = call i32 @ptrace(i32 %16, i32 %17, i32 %18, %struct.iovec* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @TEST_FAIL, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @TEST_PASS, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, %struct.iovec*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
