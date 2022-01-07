; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_get_keys.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_get_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_LENGTH = common dso_local global i32 0, align 4
@do_sockopt = common dso_local global i64 0, align 8
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_FASTOPEN_KEY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unable to get key\00", align 1
@proc_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unable to read %s\00", align 1
@PROC_FASTOPEN_KEY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"%x-%x-%x-%x,%x-%x-%x-%x\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unable to parse %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @get_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_keys(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @KEY_LENGTH, align 4
  %8 = mul nsw i32 %7, 2
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* @do_sockopt, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SOL_TCP, align 4
  %14 = load i32, i32* @TCP_FASTOPEN_KEY, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @getsockopt(i32 %12, i32 %13, i32 %14, i32* %15, i32* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %11
  br label %56

22:                                               ; preds = %2
  %23 = load i32, i32* @proc_fd, align 4
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @lseek(i32 %23, i32 0, i32 %24)
  %26 = load i32, i32* @proc_fd, align 4
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %28 = call i64 @read(i32 %26, i8* %27, i32 128)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @errno, align 4
  %32 = load i8*, i8** @PROC_FASTOPEN_KEY, align 8
  %33 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  %51 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %36, i32* %38, i32* %40, i32* %42, i32* %44, i32* %46, i32* %48, i32* %50)
  %52 = icmp ne i32 %51, 8
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = load i8*, i8** @PROC_FASTOPEN_KEY, align 8
  %55 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %21, %53, %34
  ret void
}

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
