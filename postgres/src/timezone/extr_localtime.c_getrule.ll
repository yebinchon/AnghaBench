; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_getrule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_getrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, i32, i32, i32, i32 }

@JULIAN_DAY = common dso_local global i32 0, align 4
@DAYSPERNYEAR = common dso_local global i32 0, align 4
@MONTH_NTH_DAY_OF_WEEK = common dso_local global i32 0, align 4
@MONSPERYEAR = common dso_local global i32 0, align 4
@DAYSPERWEEK = common dso_local global i32 0, align 4
@DAY_OF_YEAR = common dso_local global i32 0, align 4
@DAYSPERLYEAR = common dso_local global i32 0, align 4
@SECSPERHOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.rule*)* @getrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getrule(i8* %0, %struct.rule* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rule*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.rule* %1, %struct.rule** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 74
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* @JULIAN_DAY, align 4
  %12 = load %struct.rule*, %struct.rule** %5, align 8
  %13 = getelementptr inbounds %struct.rule, %struct.rule* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.rule*, %struct.rule** %5, align 8
  %18 = getelementptr inbounds %struct.rule, %struct.rule* %17, i32 0, i32 1
  %19 = load i32, i32* @DAYSPERNYEAR, align 4
  %20 = call i8* @getnum(i8* %16, i32* %18, i32 1, i32 %19)
  store i8* %20, i8** %4, align 8
  br label %87

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 77
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = load i32, i32* @MONTH_NTH_DAY_OF_WEEK, align 4
  %28 = load %struct.rule*, %struct.rule** %5, align 8
  %29 = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.rule*, %struct.rule** %5, align 8
  %34 = getelementptr inbounds %struct.rule, %struct.rule* %33, i32 0, i32 4
  %35 = load i32, i32* @MONSPERYEAR, align 4
  %36 = call i8* @getnum(i8* %32, i32* %34, i32 1, i32 %35)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %110

40:                                               ; preds = %26
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 46
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %110

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.rule*, %struct.rule** %5, align 8
  %50 = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 3
  %51 = call i8* @getnum(i8* %48, i32* %50, i32 1, i32 5)
  store i8* %51, i8** %4, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i8* null, i8** %3, align 8
  br label %110

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 46
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* null, i8** %3, align 8
  br label %110

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.rule*, %struct.rule** %5, align 8
  %65 = getelementptr inbounds %struct.rule, %struct.rule* %64, i32 0, i32 1
  %66 = load i32, i32* @DAYSPERWEEK, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i8* @getnum(i8* %63, i32* %65, i32 0, i32 %67)
  store i8* %68, i8** %4, align 8
  br label %86

69:                                               ; preds = %21
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @is_digit(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* @DAY_OF_YEAR, align 4
  %76 = load %struct.rule*, %struct.rule** %5, align 8
  %77 = getelementptr inbounds %struct.rule, %struct.rule* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.rule*, %struct.rule** %5, align 8
  %80 = getelementptr inbounds %struct.rule, %struct.rule* %79, i32 0, i32 1
  %81 = load i32, i32* @DAYSPERLYEAR, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i8* @getnum(i8* %78, i32* %80, i32 0, i32 %82)
  store i8* %83, i8** %4, align 8
  br label %85

84:                                               ; preds = %69
  store i8* null, i8** %3, align 8
  br label %110

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %10
  %88 = load i8*, i8** %4, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i8* null, i8** %3, align 8
  br label %110

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.rule*, %struct.rule** %5, align 8
  %101 = getelementptr inbounds %struct.rule, %struct.rule* %100, i32 0, i32 0
  %102 = call i8* @getoffset(i8* %99, i32* %101)
  store i8* %102, i8** %4, align 8
  br label %108

103:                                              ; preds = %91
  %104 = load i32, i32* @SECSPERHOUR, align 4
  %105 = mul nsw i32 2, %104
  %106 = load %struct.rule*, %struct.rule** %5, align 8
  %107 = getelementptr inbounds %struct.rule, %struct.rule* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i8*, i8** %4, align 8
  store i8* %109, i8** %3, align 8
  br label %110

110:                                              ; preds = %108, %90, %84, %61, %54, %46, %39
  %111 = load i8*, i8** %3, align 8
  ret i8* %111
}

declare dso_local i8* @getnum(i8*, i32*, i32, i32) #1

declare dso_local i64 @is_digit(i8 signext) #1

declare dso_local i8* @getoffset(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
