; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_MemoryDisplay.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_MemoryDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISP_LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @AT91F_MemoryDisplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AT91F_MemoryDisplay(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @DISP_LINE_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %107, %2
  store i8* %15, i8** %9, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @DISP_LINE_LEN, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @DISP_LINE_LEN, align 4
  %27 = sext i32 %26 to i64
  br label %30

28:                                               ; preds = %18
  %29 = load i64, i64* %6, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i64 [ %27, %25 ], [ %29, %28 ]
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, -268435456
  %34 = icmp eq i32 %33, 536870912
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8, i8* %45, align 1
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %15, i64 %47
  store i8 %46, i8* %48, align 1
  br label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %36

52:                                               ; preds = %36
  br label %57

53:                                               ; preds = %30
  %54 = load i32, i32* %3, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @read_dataflash(i32 %54, i64 %55, i8* %15)
  br label %57

57:                                               ; preds = %53, %52
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %58

73:                                               ; preds = %58
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %15, i8** %8, align 8
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %99, %73
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sgt i32 %87, 126
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %79
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %96

91:                                               ; preds = %84
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %89
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  br label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %75

102:                                              ; preds = %75
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %6, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %6, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %18, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %111)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @read_dataflash(i32, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
