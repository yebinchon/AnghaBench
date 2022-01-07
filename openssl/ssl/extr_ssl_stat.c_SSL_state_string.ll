; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_stat.c_SSL_state_string.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_stat.c_SSL_state_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SSLERR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRNP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TWST\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TWCS\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TRCS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TRST\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TWNP\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PINIT \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SSLOK \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"TWCH\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"TRSH\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"TRSC\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"TRSKE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"TRCR\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"TRSD\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TWCC\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"TWCKE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"TWCV\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"TWCCS\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"TWFIN\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"TRCCS\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"TRFIN\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"TWHR\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"TRCH\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"TWSH\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"TWSC\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"TWSKE\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"TWCR\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"TWSD\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"TRCC\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"TRCKE\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"TRCV\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"DRCHV\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"DWCHV\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"TWEE\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"TREE\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"TRSCV\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"TRHR\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"TWSKU\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"TWCKU\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"TRCKU\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"TRSKU\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"TED\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"TPEDE\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"TWEOED\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"UNKWN \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SSL_state_string(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @ossl_statem_in_error(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %58

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @SSL_get_state(i32* %9)
  switch i32 %10, label %57 [
    i32 141, label %11
    i32 130, label %12
    i32 138, label %13
    i32 172, label %14
    i32 164, label %15
    i32 153, label %16
    i32 175, label %17
    i32 151, label %18
    i32 158, label %19
    i32 162, label %20
    i32 174, label %21
    i32 166, label %22
    i32 173, label %23
    i32 163, label %24
    i32 161, label %25
    i32 155, label %26
    i32 160, label %27
    i32 136, label %28
    i32 159, label %28
    i32 134, label %29
    i32 156, label %29
    i32 147, label %30
    i32 170, label %30
    i32 144, label %31
    i32 168, label %31
    i32 133, label %32
    i32 146, label %33
    i32 128, label %34
    i32 140, label %35
    i32 132, label %36
    i32 139, label %37
    i32 129, label %38
    i32 149, label %39
    i32 143, label %40
    i32 148, label %41
    i32 177, label %42
    i32 176, label %43
    i32 135, label %44
    i32 169, label %45
    i32 171, label %46
    i32 137, label %47
    i32 167, label %48
    i32 131, label %49
    i32 154, label %50
    i32 142, label %51
    i32 165, label %52
    i32 152, label %53
    i32 150, label %54
    i32 157, label %55
    i32 145, label %56
  ]

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %58

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %58

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %58

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %58

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %58

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %58

17:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %58

18:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %58

19:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %58

20:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %58

21:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %58

22:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %58

23:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %58

24:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %58

25:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %58

26:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %58

27:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %58

28:                                               ; preds = %8, %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %58

29:                                               ; preds = %8, %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %58

30:                                               ; preds = %8, %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %58

31:                                               ; preds = %8, %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %58

32:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %58

33:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %58

34:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %58

35:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %58

36:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %58

37:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %58

38:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %58

39:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %58

40:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %58

41:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %58

42:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %58

43:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %58

44:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %58

45:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %58

46:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %58

47:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %58

48:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %58

49:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %58

50:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %58

51:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %58

52:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %58

53:                                               ; preds = %8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %58

54:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %58

55:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %58

56:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %58

57:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %58

58:                                               ; preds = %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %7
  %59 = load i8*, i8** %2, align 8
  ret i8* %59
}

declare dso_local i64 @ossl_statem_in_error(i32*) #1

declare dso_local i32 @SSL_get_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
