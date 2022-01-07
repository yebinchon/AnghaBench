; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_sysfs_test.c_check_cpu_dscr_default.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_sysfs_test.c_check_cpu_dscr_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"open() failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"read() failed\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"DSCR match failed: %ld (system) %ld (cpu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @check_cpu_dscr_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cpu_dscr_default(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %19 = call i32 @read(i32 %17, i8* %18, i32 10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %40

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %31 = call i64 @strtol(i8* %30, i32* null, i32 16)
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %37 = call i64 @strtol(i8* %36, i32* null, i32 16)
  %38 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %37)
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %22, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
