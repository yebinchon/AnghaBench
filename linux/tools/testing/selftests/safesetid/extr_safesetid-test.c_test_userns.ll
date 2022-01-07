; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/safesetid/extr_safesetid-test.c_test_userns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/safesetid/extr_safesetid-test.c_test_userns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWUSER = common dso_local global i32 0, align 4
@SYS_clone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"clone failed\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"/proc/%d/uid_map\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"preparing file name string failed\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0 0 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_userns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_userns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 32, i64* %6, align 8
  %10 = call i32 (...) @getuid()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @CLONE_NEWUSER, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @SYS_clone, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @syscall(i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 @sleep(i32 1)
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable

26:                                               ; preds = %19
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @snprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

34:                                               ; preds = %26
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @write_file(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %32, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @syscall(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @write_file(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
