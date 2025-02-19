; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_do_listen.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_do_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_proto = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"socket rx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bind rx\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"listen rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @do_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_listen(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @cfg_proto, align 4
  %10 = load i32, i32* @SOCK_RAW, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @cfg_proto, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @socket(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @error(i32 1, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @bind(i32 %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @error(i32 1, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @listen(i32 %40, i32 10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @error(i32 1, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39, %35
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
