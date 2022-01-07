; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_getSafetyLevel.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_getSafetyLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getSafetyLevel.zText = internal constant [21 x i8] c"onoffalseyestruefull\00", align 16
@getSafetyLevel.iOffset = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 9, i32 12, i32 16], align 16
@getSafetyLevel.iLength = internal constant [7 x i32] [i32 2, i32 2, i32 3, i32 5, i32 3, i32 4, i32 4], align 16
@getSafetyLevel.iValue = internal constant [7 x i32] [i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @getSafetyLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getSafetyLevel(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @sqlite3Isdigit(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @sqlite3Atoi(i8* %15)
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sqlite3Strlen30(i8* %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %50, %17
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ArraySize(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @getSafetyLevel.iLength, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* @getSafetyLevel.iLength, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* @getSafetyLevel.iOffset, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* @getSafetyLevel.zText, i64 0, i64 %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @sqlite3StrNICmp(i8* %39, i8* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* @getSafetyLevel.iValue, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %55

49:                                               ; preds = %33, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %44, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @sqlite3Atoi(i8*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @ArraySize(i32*) #1

declare dso_local i64 @sqlite3StrNICmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
