; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/extr_hexagon.c_hex_get_sys_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/extr_hexagon.c_hex_get_sys_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hex_get_sys_reg.tmp = internal global [5 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"SGP0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SGP1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"STID\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ELR\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"BADVA0\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"BADVA1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SSR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"CCR\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HTID\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"BADVA\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"IMASK\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"EVB\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"MODECTL\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SYSCFG\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"IPEND\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"VID\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"IAD\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"IEL\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"IAHL\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CFGBASE\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"DIAG\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"REV\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"PCYCLELO\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"PCYCLEHI\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ISDBST\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"ISDBCFG0\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"ISDBCFG1\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"BRKPTPC0\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"BRKPTCFG0\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"BRKPTPC1\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"BRKPTCFG1\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"ISDBMBXIN\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"ISDBMBXOUT\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ISDBEN\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"ISDBGPR\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"PMUCNT0\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"PMUCNT1\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"PMUCNT2\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"PMUCNT3\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"PMUEVTCFG\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"PMUCFG\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"S%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hex_get_sys_reg(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %46 [
    i32 133, label %5
    i32 132, label %6
    i32 130, label %7
    i32 158, label %8
    i32 167, label %9
    i32 166, label %10
    i32 131, label %11
    i32 161, label %12
    i32 156, label %13
    i32 168, label %14
    i32 152, label %15
    i32 157, label %16
    i32 143, label %17
    i32 129, label %18
    i32 151, label %19
    i32 128, label %20
    i32 155, label %21
    i32 153, label %22
    i32 154, label %23
    i32 160, label %24
    i32 159, label %25
    i32 134, label %26
    i32 141, label %27
    i32 142, label %28
    i32 144, label %29
    i32 150, label %30
    i32 149, label %31
    i32 163, label %32
    i32 165, label %33
    i32 162, label %34
    i32 164, label %35
    i32 146, label %36
    i32 145, label %37
    i32 148, label %38
    i32 147, label %39
    i32 139, label %40
    i32 138, label %41
    i32 137, label %42
    i32 136, label %43
    i32 135, label %44
    i32 140, label %45
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %49

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %49

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %49

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %49

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %49

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %49

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %49

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %49

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %49

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %49

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %49

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %49

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %49

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %49

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %49

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %49

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %49

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %49

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %49

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %49

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %49

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %49

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %49

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %49

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %49

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %49

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %49

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %49

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %49

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %49

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %49

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %49

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %49

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %49

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %49

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %49

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %49

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %49

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %49

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %49

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @hex_get_sys_reg.tmp, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 %47)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @hex_get_sys_reg.tmp, i64 0, i64 0), i8** %2, align 8
  br label %49

49:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
