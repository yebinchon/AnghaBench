; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_response_code_to_string.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_response_code_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Moved Permanently\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Temporary Redirect\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Preconditions Failed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Informational\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Successful\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Redirection\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Server Error\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Undefined Error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @web_response_code_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 130, label %5
    i32 132, label %6
    i32 128, label %7
    i32 134, label %8
    i32 133, label %9
    i32 131, label %10
    i32 129, label %11
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %48

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %48

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %48

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %48

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %48

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %48

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 100
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 200
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %48

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp sge i32 %20, 200
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 300
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %48

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  %28 = icmp sge i32 %27, 300
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 400
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %48

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 400
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 500
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %48

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %3, align 4
  %42 = icmp sge i32 %41, 500
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 600
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %48

47:                                               ; preds = %43, %40
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %46, %39, %32, %25, %18, %11, %10, %9, %8, %7, %6, %5
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
