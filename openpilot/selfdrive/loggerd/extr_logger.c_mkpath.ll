; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_logger.c_mkpath.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_logger.c_mkpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mkpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkpath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i8* @strchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %36, %12
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @mkdir(i8* %24, i32 511)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EEXIST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  store i8 47, i8* %32, align 1
  store i32 -1, i32* %2, align 4
  br label %41

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i8*, i8** %4, align 8
  store i8 47, i8* %35, align 1
  br label %36

36:                                               ; preds = %34
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i8* @strchr(i8* %38, i8 signext 47)
  store i8* %39, i8** %4, align 8
  br label %19

40:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
