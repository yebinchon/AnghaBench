; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_open_test.c_get_pid_from_fdinfo_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_open_test.c_get_pid_from_fdinfo_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"/proc/self/fdinfo/%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @get_pid_from_fdinfo_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pid_from_fdinfo_file(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snprintf(i8* %15, i32 512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @getline(i8** %13, i64* %11, i32* %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @strncmp(i8* %29, i8* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %24

35:                                               ; preds = %28
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = call i8* @trim_whitespace_in_place(i8* %37)
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @safe_int(i8* %39, i32* %12)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %46

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @trim_whitespace_in_place(i8*) #1

declare dso_local i32 @safe_int(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
