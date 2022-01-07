; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_get_th.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_get_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\22%s\22 is not a number\00", align 1
@TH_UPPER = common dso_local global i32 0, align 4
@numTH = common dso_local global i8** null, align 8
@numth = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @get_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_th(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = trunc i32 %18 to i8
  %20 = call i32 @isdigit(i8 zeroext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = icmp eq i32 %39, 49
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %32, %29
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %80 [
    i32 49, label %44
    i32 50, label %56
    i32 51, label %68
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TH_UPPER, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8**, i8*** @numTH, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %3, align 8
  br label %92

52:                                               ; preds = %44
  %53 = load i8**, i8*** @numth, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %3, align 8
  br label %92

56:                                               ; preds = %42
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @TH_UPPER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8**, i8*** @numTH, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %3, align 8
  br label %92

64:                                               ; preds = %56
  %65 = load i8**, i8*** @numth, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %3, align 8
  br label %92

68:                                               ; preds = %42
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @TH_UPPER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8**, i8*** @numTH, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %3, align 8
  br label %92

76:                                               ; preds = %68
  %77 = load i8**, i8*** @numth, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %3, align 8
  br label %92

80:                                               ; preds = %42
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @TH_UPPER, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i8**, i8*** @numTH, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 3
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %3, align 8
  br label %92

88:                                               ; preds = %80
  %89 = load i8**, i8*** @numth, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %3, align 8
  br label %92

92:                                               ; preds = %88, %84, %76, %72, %64, %60, %52, %48
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
