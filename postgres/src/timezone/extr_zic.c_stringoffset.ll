; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_stringoffset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_stringoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHOUR = common dso_local global i32 0, align 4
@HOURSPERDAY = common dso_local global i32 0, align 4
@DAYSPERWEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c":%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @stringoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stringoffset(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 45, i8* %21, align 1
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SECSPERMIN, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @SECSPERMIN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MINSPERHOUR, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @MINSPERHOUR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HOURSPERDAY, align 4
  %38 = load i32, i32* @DAYSPERWEEK, align 4
  %39 = mul nsw i32 %37, %38
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %43, align 1
  store i32 0, i32* %3, align 4
  br label %87

44:                                               ; preds = %22
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @sprintf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %57, %44
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @sprintf(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %60
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @sprintf(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %73, %60
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %41
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
