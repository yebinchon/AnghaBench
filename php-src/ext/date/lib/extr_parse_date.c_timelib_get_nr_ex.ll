; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_get_nr_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_get_nr_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMELIB_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*)* @timelib_get_nr_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timelib_get_nr_ex(i8** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @TIMELIB_UNSET, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %36, %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp slt i32 %18, 48
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 57
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ true, %14 ], [ %25, %20 ]
  br i1 %27, label %28, label %40

28:                                               ; preds = %26
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @TIMELIB_UNSET, align 4
  store i32 %35, i32* %4, align 4
  br label %103

36:                                               ; preds = %28
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  br label %14

40:                                               ; preds = %26
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %61, %40
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 48
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 57
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br label %59

59:                                               ; preds = %55, %49, %43
  %60 = phi i1 [ false, %49 ], [ false, %43 ], [ %58, %55 ]
  br i1 %60, label %61, label %67

61:                                               ; preds = %59
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %62, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %43

67:                                               ; preds = %59
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %9, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = add nsw i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = call i8* @timelib_calloc(i32 1, i32 %87)
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i8* %89, i8* %90, i32 %96)
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strtoll(i8* %98, i32* null, i32 10)
  store i32 %99, i32* %11, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @timelib_free(i8* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %80, %34
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @timelib_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @timelib_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
