; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_rdjpgcom.c_process_SOFn.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_rdjpgcom.c_process_SOFn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Extended sequential\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Differential sequential\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Differential progressive\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Differential lossless\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Extended sequential, arithmetic coding\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Progressive, arithmetic coding\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Lossless, arithmetic coding\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Differential sequential, arithmetic coding\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Differential progressive, arithmetic coding\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Differential lossless, arithmetic coding\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"JPEG image is %uw * %uh, %d color components, %d bits per sample\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"JPEG process: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Bogus SOF marker length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_SOFn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_SOFn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call i32 (...) @read_2_bytes()
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @read_1_byte()
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @read_2_bytes()
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @read_2_bytes()
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @read_1_byte()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %29 [
    i32 140, label %16
    i32 139, label %17
    i32 133, label %18
    i32 132, label %19
    i32 131, label %20
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
    i32 138, label %24
    i32 137, label %25
    i32 136, label %26
    i32 135, label %27
    i32 134, label %28
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %30

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %30

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %30

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %30

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %30

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %30

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %30

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %30

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %30

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %30

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %30

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %30

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %30

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 3
  %41 = add nsw i32 8, %40
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = call i32 @ERREXIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %30
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call i32 (...) @read_1_byte()
  %52 = call i32 (...) @read_1_byte()
  %53 = call i32 (...) @read_1_byte()
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %46

57:                                               ; preds = %46
  ret void
}

declare dso_local i32 @read_2_bytes(...) #1

declare dso_local i32 @read_1_byte(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ERREXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
