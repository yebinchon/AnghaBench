; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_reg_name_2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_reg_name_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ar0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ar1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ar2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ar3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ar4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ar5\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ar6\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ar7\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ar8\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ar9\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ar10\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ar11\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ar12\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ar13\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ar14\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ar15\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"t0\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"t2\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"t3\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"xar0\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"xar1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"xar2\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xar3\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"xar4\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"xar5\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"xar6\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"xar7\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"xar8\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"xar9\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"xar10\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"xar11\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"xar12\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"xar13\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"xar14\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"xar15\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"xssp\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"xsp\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_reg_name_2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %47 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 16, label %21
    i32 17, label %22
    i32 18, label %23
    i32 19, label %24
    i32 20, label %25
    i32 21, label %26
    i32 22, label %27
    i32 32, label %28
    i32 33, label %29
    i32 34, label %30
    i32 35, label %31
    i32 36, label %32
    i32 37, label %33
    i32 38, label %34
    i32 39, label %35
    i32 40, label %36
    i32 41, label %37
    i32 42, label %38
    i32 43, label %39
    i32 44, label %40
    i32 45, label %41
    i32 46, label %42
    i32 47, label %43
    i32 52, label %44
    i32 53, label %45
    i32 54, label %46
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %48

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %48

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %48

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %48

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %48

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %48

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %48

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %48

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %48

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %48

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %48

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %48

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %48

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %48

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %48

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %48

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %48

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %48

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %48

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %48

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %48

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %48

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %48

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %48

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %48

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %48

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %48

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %48

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %48

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %48

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %48

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %48

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %48

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %48

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8** %3, align 8
  br label %48

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %48

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %48

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8** %3, align 8
  br label %48

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %48

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %48

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8** %3, align 8
  br label %48

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8** %3, align 8
  br label %48

47:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  br label %48

48:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @strdup(i8* %52)
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
