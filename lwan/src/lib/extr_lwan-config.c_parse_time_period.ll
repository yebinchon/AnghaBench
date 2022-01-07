; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_parse_time_period.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_parse_time_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@ONE_MINUTE = common dso_local global i32 0, align 4
@ONE_HOUR = common dso_local global i32 0, align 4
@ONE_DAY = common dso_local global i32 0, align 4
@ONE_WEEK = common dso_local global i32 0, align 4
@ONE_MONTH = common dso_local global i32 0, align 4
@ONE_YEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Ignoring unknown multiplier: %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_time_period(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %86

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %71, %13
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %7, i8* %8)
  %22 = icmp eq i32 %21, 2
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %77

25:                                               ; preds = %23
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %68 [
    i32 115, label %28
    i32 109, label %32
    i32 104, label %38
    i32 100, label %44
    i32 119, label %50
    i32 77, label %56
    i32 121, label %62
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %71

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ONE_MINUTE, align 4
  %35 = mul i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %71

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ONE_HOUR, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %71

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ONE_DAY, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %71

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ONE_WEEK, align 4
  %53 = mul i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %71

56:                                               ; preds = %25
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ONE_MONTH, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %25
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ONE_YEAR, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %25
  %69 = load i8, i8* %8, align 1
  %70 = call i32 @lwan_status_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8 signext %69)
  br label %71

71:                                               ; preds = %68, %62, %56, %50, %44, %38, %32, %28
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %8, align 1
  %74 = call i64 @rawmemchr(i8* %72, i8 signext %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %4, align 8
  br label %14

77:                                               ; preds = %23
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @lwan_status_warning(i8*, i8 signext) #1

declare dso_local i64 @rawmemchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
