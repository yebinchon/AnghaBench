; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_format_numeric_locale.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_format_numeric_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"0123456789+-.eE\00", align 1
@groupdigits = common dso_local global i32 0, align 4
@thousands_sep = common dso_local global i8* null, align 8
@decimal_point = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @format_numeric_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_numeric_locale(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strspn(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @pg_strdup(i8* %16)
  store i8* %17, i8** %2, align 8
  br label %135

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @additional_numeric_locale_len(i8* %21)
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @pg_malloc(i32 %25)
  store i8* %26, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @integer_digits(i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @groupdigits, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @groupdigits, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 43
  br i1 %47, label %48, label %59

48:                                               ; preds = %42, %36
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 %51, i8* %56, align 1
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %48, %42
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8*, i8** @thousands_sep, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  %78 = load i8*, i8** @thousands_sep, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @groupdigits, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %71, %67, %64
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %60

97:                                               ; preds = %60
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 46
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8*, i8** @decimal_point, align 8
  %111 = call i32 @strcpy(i8* %109, i8* %110)
  %112 = load i8*, i8** @decimal_point, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %105, %97
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = call i32 @strcpy(i8* %122, i8* %126)
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp sle i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @Assert(i32 %132)
  %134 = load i8*, i8** %4, align 8
  store i8* %134, i8** %2, align 8
  br label %135

135:                                              ; preds = %118, %15
  %136 = load i8*, i8** %2, align 8
  ret i8* %136
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @additional_numeric_locale_len(i8*) #1

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @integer_digits(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
