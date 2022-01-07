; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_stub-pfring.c_PFRING_is_installed.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_stub-pfring.c_PFRING_is_installed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/modules\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pf_ring \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"pfring: found 'pf_ring' driver\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ixgbe \00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"pfring: found 'ixgbe' driver\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"e1000e \00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"pfring: found 'e1000e' driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PFRING_is_installed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @fopen_s(i32** %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %34, %10
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @fgets(i8* %12, i32 256, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %18 = call i64 @memcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  %21 = call i32 @LOG(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %24 = call i64 @memcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @LOG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %30 = call i64 @memcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @LOG(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  br label %11

35:                                               ; preds = %11
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %35, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @fopen_s(i32**, i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
