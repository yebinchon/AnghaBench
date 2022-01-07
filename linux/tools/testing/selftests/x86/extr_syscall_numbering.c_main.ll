; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_numbering.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_numbering.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\09Checking for x32...\00", align 1
@stdout = common dso_local global i32 0, align 4
@X32_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" supported\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c" not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" confused\0A\00", align 1
@nerrs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fflush(i32 %3)
  %5 = load i32, i32* @X32_BIT, align 4
  %6 = or i32 39, %5
  %7 = call i64 @syscall(i32 %6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %20

11:                                               ; preds = %0
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENOSYS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %19

17:                                               ; preds = %11
  %18 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19, %9
  %21 = call i32 (...) @test_x32_without_x32_bit()
  %22 = load i64, i64* @nerrs, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  ret i32 %25
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @syscall(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @test_x32_without_x32_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
