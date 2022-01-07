; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_select_conversion_technique.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_select_conversion_technique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"UYVY_Reverse\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"YUY2_Reverse\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"YVYU_Reverse\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"I420_Reverse\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"NV12_Reverse\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"I444_Reverse\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Y800_Full\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Y800_Limited\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"BGR3_Full\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"BGR3_Limited\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"I422_Reverse\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"I40A_Reverse\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"I42A_Reverse\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"YUVA_Reverse\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"AYUV_Reverse\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"RGB_Limited\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @select_conversion_technique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @select_conversion_technique(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 132, label %7
    i32 129, label %8
    i32 128, label %9
    i32 139, label %10
    i32 134, label %11
    i32 136, label %12
    i32 131, label %13
    i32 143, label %18
    i32 138, label %23
    i32 140, label %24
    i32 137, label %25
    i32 130, label %26
    i32 144, label %27
    i32 142, label %28
    i32 141, label %28
    i32 133, label %28
    i32 135, label %28
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %36

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %36

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %36

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %36

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %36

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)
  store i8* %17, i8** %3, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)
  store i8* %22, i8** %3, align 8
  br label %36

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %36

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %36

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %36

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %36

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %36

28:                                               ; preds = %2, %2, %2, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @assert(i32 0)
  br label %34

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %36

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %2, %34
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %33, %27, %26, %25, %24, %23, %18, %13, %12, %11, %10, %9, %8, %7
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
