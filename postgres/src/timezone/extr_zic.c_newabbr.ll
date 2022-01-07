; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_newabbr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_newabbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRANDPARENTED = common dso_local global i32 0, align 4
@noise = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"time zone abbreviation has fewer than 3 characters\00", align 1
@ZIC_MAX_ABBR_LEN_WO_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"time zone abbreviation has too many characters\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"time zone abbreviation differs from POSIX standard\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@charcnt = common dso_local global i32 0, align 4
@TZ_MAX_CHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"too many, or too long, time zone abbreviations\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@chars = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @newabbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newabbr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @GRANDPARENTED, align 4
  %8 = call i64 @strcmp(i8* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %4, align 8
  store i8* null, i8** %5, align 8
  br label %12

12:                                               ; preds = %39, %10
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @is_alpha(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 48, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 57
  br i1 %26, label %37, label %27

27:                                               ; preds = %22, %17
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 43
  br label %37

37:                                               ; preds = %32, %27, %22, %12
  %38 = phi i1 [ true, %27 ], [ true, %22 ], [ true, %12 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %12

42:                                               ; preds = %37
  %43 = load i64, i64* @noise, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = icmp slt i64 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %52, %45, %42
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = load i32, i32* @ZIC_MAX_ABBR_LEN_WO_WARN, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* @charcnt, align 4
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @TZ_MAX_CHARS, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @error(i8* %90)
  %92 = load i32, i32* @EXIT_FAILURE, align 4
  %93 = call i32 @exit(i32 %92) #3
  unreachable

94:                                               ; preds = %80
  %95 = load i32*, i32** @chars, align 8
  %96 = load i32, i32* @charcnt, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i8*, i8** %2, align 8
  %100 = call i32 @strcpy(i32* %98, i8* %99)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @charcnt, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* @charcnt, align 4
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @is_alpha(i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @warning(i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
