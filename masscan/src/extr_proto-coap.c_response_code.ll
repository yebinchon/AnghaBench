; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_response_code.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_response_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Okay\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Created\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Deleted\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Valid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Changed\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Content\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Unauthorized\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Bad Option\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Not Acceptable\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Precondition Failed\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Request Too Large\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Unsupported Content-Format\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Not Implemented\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Bad Gateway\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Service Unavailable\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Gateway Timeout\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Proxying Not Supported\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"PARSE_ERR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @response_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @response_code(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 64, label %5
    i32 65, label %6
    i32 66, label %7
    i32 67, label %8
    i32 68, label %9
    i32 69, label %10
    i32 128, label %11
    i32 129, label %12
    i32 130, label %13
    i32 131, label %14
    i32 132, label %15
    i32 133, label %16
    i32 134, label %17
    i32 140, label %18
    i32 141, label %19
    i32 143, label %20
    i32 160, label %21
    i32 161, label %22
    i32 162, label %23
    i32 163, label %24
    i32 164, label %25
    i32 165, label %26
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %33

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %33

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %33

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %33

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %33

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %33

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %33

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %33

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %33

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %33

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %33

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %33

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %33

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %33

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %33

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %33

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %33

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %33

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %33

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %33

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = lshr i32 %28, 5
  switch i32 %29, label %32 [
    i32 2, label %30
    i32 4, label %31
  ]

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %33

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %32, %31, %30, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
