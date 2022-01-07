; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_print_base_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_print_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"pointer to long\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pointer to unsigned char\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pointer to unsigned long\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"pointer to unsigned long long\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"pointer to unsigned short\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"pointer to void\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"pointer64 to void\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"wchar\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"pointer to wchar\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"unsupported base type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @print_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_base_type(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %58 [
    i32 153, label %6
    i32 151, label %8
    i32 150, label %10
    i32 149, label %12
    i32 152, label %14
    i32 148, label %16
    i32 147, label %18
    i32 146, label %20
    i32 144, label %22
    i32 143, label %24
    i32 142, label %26
    i32 141, label %28
    i32 140, label %30
    i32 139, label %32
    i32 138, label %34
    i32 137, label %36
    i32 136, label %38
    i32 135, label %40
    i32 134, label %42
    i32 133, label %44
    i32 132, label %46
    i32 131, label %48
    i32 130, label %50
    i32 128, label %52
    i32 129, label %54
    i32 145, label %56
  ]

6:                                                ; preds = %2
  %7 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %60

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %60

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %60

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %60

14:                                               ; preds = %2
  %15 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %60

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %60

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  br label %60

20:                                               ; preds = %2
  %21 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %21, align 8
  br label %60

22:                                               ; preds = %2
  %23 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  br label %60

24:                                               ; preds = %2
  %25 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %25, align 8
  br label %60

26:                                               ; preds = %2
  %27 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %27, align 8
  br label %60

28:                                               ; preds = %2
  %29 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %29, align 8
  br label %60

30:                                               ; preds = %2
  %31 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %31, align 8
  br label %60

32:                                               ; preds = %2
  %33 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %33, align 8
  br label %60

34:                                               ; preds = %2
  %35 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %35, align 8
  br label %60

36:                                               ; preds = %2
  %37 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %37, align 8
  br label %60

38:                                               ; preds = %2
  %39 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %39, align 8
  br label %60

40:                                               ; preds = %2
  %41 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %41, align 8
  br label %60

42:                                               ; preds = %2
  %43 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %43, align 8
  br label %60

44:                                               ; preds = %2
  %45 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %45, align 8
  br label %60

46:                                               ; preds = %2
  %47 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %47, align 8
  br label %60

48:                                               ; preds = %2
  %49 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8** %49, align 8
  br label %60

50:                                               ; preds = %2
  %51 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %51, align 8
  br label %60

52:                                               ; preds = %2
  %53 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %53, align 8
  br label %60

54:                                               ; preds = %2
  %55 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %55, align 8
  br label %60

56:                                               ; preds = %2
  %57 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %57, align 8
  br label %60

58:                                               ; preds = %2
  %59 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8** %59, align 8
  br label %60

60:                                               ; preds = %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
