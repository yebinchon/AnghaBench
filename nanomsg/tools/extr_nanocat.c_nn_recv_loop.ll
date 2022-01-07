; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_nanocat.c_nn_recv_loop.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_nanocat.c_nn_recv_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NN_MSG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@EFSM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Can't recv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_recv_loop(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %17, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NN_MSG, align 4
  %10 = call i32 @nn_recv(i32 %8, i8** %6, i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EAGAIN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %7

18:                                               ; preds = %13, %7
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ETIMEDOUT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EFSM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  ret void

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @nn_assert_errno(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %3, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @nn_print_message(i32* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @nn_freemsg(i8* %41)
  br label %7
}

declare dso_local i32 @nn_recv(i32, i8**, i32, i32) #1

declare dso_local i32 @nn_assert_errno(i32, i8*) #1

declare dso_local i32 @nn_print_message(i32*, i8*, i32) #1

declare dso_local i32 @nn_freemsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
