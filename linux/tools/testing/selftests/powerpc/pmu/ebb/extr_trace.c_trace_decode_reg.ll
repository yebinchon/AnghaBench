; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_decode_reg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_decode_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"SPRN_MMCR2\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SPRN_MMCRA\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SPRN_MMCR0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SPRN_EBBHR\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SPRN_EBBRR\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SPRN_BESCR\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SPRN_BESCRS\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SPRN_BESCRSU\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SPRN_BESCRR\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"SPRN_BESCRRU\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"SPRN_PMC1\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SPRN_PMC2\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"SPRN_PMC3\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"SPRN_PMC4\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"SPRN_PMC5\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SPRN_PMC6\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"SPRN_SIAR\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"SPRN_SDAR\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SPRN_SIER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @trace_decode_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trace_decode_reg(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %24 [
    i32 769, label %5
    i32 770, label %6
    i32 779, label %7
    i32 804, label %8
    i32 805, label %9
    i32 806, label %10
    i32 800, label %11
    i32 801, label %12
    i32 802, label %13
    i32 803, label %14
    i32 771, label %15
    i32 772, label %16
    i32 773, label %17
    i32 774, label %18
    i32 775, label %19
    i32 776, label %20
    i32 780, label %21
    i32 781, label %22
    i32 768, label %23
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %25

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %25

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %25

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %25

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %25

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %25

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %25

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %25

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %25

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %25

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %25

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %25

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %25

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %25

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %25

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %25

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %25

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %25

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %25

24:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
