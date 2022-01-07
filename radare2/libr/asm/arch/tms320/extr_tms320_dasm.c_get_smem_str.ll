; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_smem_str.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_smem_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"@0x%02X\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"abs16(k16)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"*(k23)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"port(k16)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"*cdp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"*cdp+\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"*cdp-\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"*cdp(K16)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"*+cdp(K16)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"*ARn\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"*ARn+\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"*ARn-\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"*(ARn + t0)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"*(ARn - t0)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"*ARn(t0)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"*ARn(k16)\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"*+ARn(k16)\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"*(ARn + t1)\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"*(ARn - t1)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"*ARn(t1)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"*+ARn\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"*-ARn\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"*(ARn + t0b)\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"*(ARn - t0b)\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_smem_str(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 1
  %13 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %3, align 8
  br label %44

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %25 [
    i32 17, label %17
    i32 49, label %18
    i32 81, label %19
    i32 113, label %20
    i32 145, label %21
    i32 177, label %22
    i32 209, label %23
    i32 241, label %24
  ]

17:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %44

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %44

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %44

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %44

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %44

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %44

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %44

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %44

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 31
  switch i32 %27, label %43 [
    i32 1, label %28
    i32 3, label %29
    i32 5, label %30
    i32 7, label %31
    i32 9, label %32
    i32 11, label %33
    i32 13, label %34
    i32 15, label %35
    i32 19, label %36
    i32 21, label %37
    i32 23, label %38
    i32 25, label %39
    i32 27, label %40
    i32 29, label %41
    i32 31, label %42
  ]

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %44

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %44

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %44

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %44

32:                                               ; preds = %25
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %44

33:                                               ; preds = %25
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %44

34:                                               ; preds = %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %44

35:                                               ; preds = %25
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %44

36:                                               ; preds = %25
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %44

37:                                               ; preds = %25
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %44

38:                                               ; preds = %25
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %44

39:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %44

40:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %44

41:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %44

42:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %44

43:                                               ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %24, %23, %22, %21, %20, %19, %18, %17, %9
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
