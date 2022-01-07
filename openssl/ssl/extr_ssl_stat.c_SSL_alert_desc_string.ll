; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_stat.c_SSL_alert_desc_string.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_stat.c_SSL_alert_desc_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"UM\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"HF\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"BC\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"CE\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"CU\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"AD\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"CY\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"NR\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"UE\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"BH\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"UK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SSL_alert_desc_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 255
  switch i32 %5, label %36 [
    i32 152, label %6
    i32 147, label %7
    i32 156, label %8
    i32 151, label %9
    i32 150, label %10
    i32 148, label %11
    i32 157, label %12
    i32 146, label %13
    i32 154, label %14
    i32 155, label %15
    i32 153, label %16
    i32 149, label %17
    i32 140, label %18
    i32 133, label %19
    i32 132, label %20
    i32 145, label %21
    i32 141, label %22
    i32 139, label %23
    i32 138, label %24
    i32 134, label %25
    i32 137, label %26
    i32 136, label %27
    i32 128, label %28
    i32 135, label %29
    i32 129, label %30
    i32 142, label %31
    i32 130, label %32
    i32 143, label %33
    i32 144, label %34
    i32 131, label %35
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %37

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %37

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %37

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %37

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %37

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %37

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %37

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %37

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %37

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %37

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %37

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %37

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %37

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %37

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %37

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %37

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %37

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %37

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %37

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %37

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %37

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %37

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %37

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %37

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %37

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %37

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %37

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %37

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %37

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %37

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
