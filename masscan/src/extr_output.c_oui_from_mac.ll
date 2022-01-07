; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_output.c_oui_from_mac.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_output.c_oui_from_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Compulab\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Aaeon\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VMware\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Seagate\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Synology\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Asus\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"D-Link\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Odroid\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Supermicro\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Cisco\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Amazon\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Zyxel\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Parrot\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Azurewave\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Raspberry Pi\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Belkin\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Cisco-Linksys\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"[random]\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @oui_from_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @oui_from_mac(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 16
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 8
  %15 = or i32 %9, %14
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %15, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %53 [
    i32 448, label %22
    i32 1842, label %23
    i32 3113, label %24
    i32 4213, label %25
    i32 4402, label %26
    i32 140824, label %27
    i32 8880, label %28
    i32 9068, label %29
    i32 5835, label %30
    i32 7686, label %31
    i32 8179, label %32
    i32 9616, label %33
    i32 576616, label %34
    i32 826770, label %35
    i32 2378979, label %36
    i32 2893783, label %37
    i32 3446774, label %38
    i32 3733309, label %39
    i32 4213251, label %40
    i32 5021439, label %41
    i32 5789130, label %42
    i32 6333516, label %43
    i32 7107303, label %44
    i32 9438135, label %45
    i32 9755593, label %46
    i32 11320370, label %47
    i32 12068843, label %48
    i32 12604967, label %49
    i32 12632512, label %50
    i32 14460106, label %51
    i32 14980462, label %52
  ]

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %54

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %54

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %54

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %54

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %54

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %54

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %54

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %54

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %54

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %54

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %54

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %54

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %54

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %54

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %54

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %54

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %54

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %54

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %54

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %54

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %54

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %54

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %54

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %54

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %54

54:                                               ; preds = %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
