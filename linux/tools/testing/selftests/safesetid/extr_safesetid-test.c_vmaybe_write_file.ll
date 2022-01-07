; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/safesetid/extr_safesetid-test.c_vmaybe_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/safesetid/extr_safesetid-test.c_vmaybe_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"vsnprintf failed: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"vsnprintf output truncated\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"short write to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"write to %s failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"close of %s failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32)* @vmaybe_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmaybe_write_file(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @vsnprintf(i8* %14, i32 4096, i8* %15, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @errno, align 8
  %22 = call i8* @strerror(i64 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 0, i32* %5, align 4
  br label %74

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4096
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %74

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @O_WRONLY, align 4
  %33 = call i32 @open(i8* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ENOENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %74

44:                                               ; preds = %40, %36
  store i32 0, i32* %5, align 4
  br label %74

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @write(i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 0, i32* %5, align 4
  br label %74

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* @errno, align 8
  %62 = call i8* @strerror(i64 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %62)
  store i32 0, i32* %5, align 4
  br label %74

64:                                               ; preds = %45
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @close(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* @errno, align 8
  %71 = call i8* @strerror(i64 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %71)
  store i32 0, i32* %5, align 4
  br label %74

73:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %68, %59, %56, %44, %43, %28, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
