; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_print_status.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"FE_STATUS:\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" FE_HAS_SIGNAL\00", align 1
@FE_TIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c" FE_TIMEDOUT\00", align 1
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c" FE_HAS_LOCK\00", align 1
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c" FE_HAS_CARRIER\00", align 1
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c" FE_HAS_VITERBI\00", align 1
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c" FE_HAS_SYNC\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @MP_VERBOSE(i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @MP_VERBOSE(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FE_TIMEDOUT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @MP_VERBOSE(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FE_HAS_LOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @MP_VERBOSE(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @FE_HAS_CARRIER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @MP_VERBOSE(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FE_HAS_VITERBI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @MP_VERBOSE(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @FE_HAS_SYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @MP_VERBOSE(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @MP_VERBOSE(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MP_VERBOSE(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
