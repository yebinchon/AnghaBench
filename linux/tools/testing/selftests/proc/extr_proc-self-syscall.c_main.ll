; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-syscall.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-syscall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"/proc/self/syscall\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%ld 0x%lx 0x%lx 0x%lx\00", align 1
@SYS_read = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @O_RDONLY, align 4
  %7 = call i32 @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @ENOENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 4, i32* %1, align 4
  br label %47

15:                                               ; preds = %10
  store i32 1, i32* %1, align 4
  br label %47

16:                                               ; preds = %0
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %18 = load i64, i64* @SYS_read, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %22 = ptrtoint i8* %21 to i64
  %23 = call i32 @snprintf(i8* %17, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %18, i64 %20, i64 %22, i64 64)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 0, i32 64)
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %28 = call i64 @sys_read(i32 %26, i8* %27, i32 64)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %47

32:                                               ; preds = %16
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %35 = call i64 @strlen(i8* %34)
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %1, align 4
  br label %47

38:                                               ; preds = %32
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %42 = call i64 @strlen(i8* %41)
  %43 = call i64 @strncmp(i8* %39, i8* %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %1, align 4
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %45, %37, %31, %15, %14
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sys_read(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
