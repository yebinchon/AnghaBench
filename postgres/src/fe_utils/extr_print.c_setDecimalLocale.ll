; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_setDecimalLocale.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_setDecimalLocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i32*, i64*, i64* }

@decimal_point = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@groupdigits = common dso_local global i32 0, align 4
@thousands_sep = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setDecimalLocale() #0 {
  %1 = alloca %struct.lconv*, align 8
  %2 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %2, %struct.lconv** %1, align 8
  %3 = load %struct.lconv*, %struct.lconv** %1, align 8
  %4 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 2
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.lconv*, %struct.lconv** %1, align 8
  %10 = getelementptr inbounds %struct.lconv, %struct.lconv* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = call i8* @pg_strdup(i64* %11)
  store i8* %12, i8** @decimal_point, align 8
  br label %14

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** @decimal_point, align 8
  br label %14

14:                                               ; preds = %13, %8
  %15 = load %struct.lconv*, %struct.lconv** %1, align 8
  %16 = getelementptr inbounds %struct.lconv, %struct.lconv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @groupdigits, align 4
  %19 = load i32, i32* @groupdigits, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @groupdigits, align 4
  %23 = icmp sgt i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %14
  store i32 3, i32* @groupdigits, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.lconv*, %struct.lconv** %1, align 8
  %27 = getelementptr inbounds %struct.lconv, %struct.lconv* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.lconv*, %struct.lconv** %1, align 8
  %33 = getelementptr inbounds %struct.lconv, %struct.lconv* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = call i8* @pg_strdup(i64* %34)
  store i8* %35, i8** @thousands_sep, align 8
  br label %43

36:                                               ; preds = %25
  %37 = load i8*, i8** @decimal_point, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** @thousands_sep, align 8
  br label %42

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** @thousands_sep, align 8
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %31
  ret void
}

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i8* @pg_strdup(i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
