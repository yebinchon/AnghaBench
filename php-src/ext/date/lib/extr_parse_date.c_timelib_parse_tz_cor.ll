; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_parse_tz_cor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_parse_tz_cor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @timelib_parse_tz_cor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timelib_parse_tz_cor(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @isdigit(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load i8**, i8*** %3, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 58
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ true, %9 ], [ %20, %15 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  br label %9

27:                                               ; preds = %21
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  switch i64 %34, label %91 [
    i64 1, label %35
    i64 2, label %35
    i64 3, label %39
    i64 4, label %39
    i64 5, label %81
  ]

35:                                               ; preds = %27, %27
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strtol(i8* %36, i32* null, i32 10)
  %38 = call i32 @sHOUR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %27, %27
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strtol(i8* %46, i32* null, i32 10)
  %48 = call i32 @sHOUR(i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = call i32 @strtol(i8* %50, i32* null, i32 10)
  %52 = call i32 @sMIN(i32 %51)
  %53 = add nsw i32 %48, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %92

55:                                               ; preds = %39
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strtol(i8* %62, i32* null, i32 10)
  %64 = call i32 @sHOUR(i32 %63)
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = call i32 @strtol(i8* %66, i32* null, i32 10)
  %68 = call i32 @sMIN(i32 %67)
  %69 = add nsw i32 %64, %68
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %92

71:                                               ; preds = %55
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strtol(i8* %72, i32* null, i32 10)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %74, 100
  %76 = call i32 @sHOUR(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = srem i32 %77, 100
  %79 = call i32 @sMIN(i32 %78)
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %2, align 4
  br label %92

81:                                               ; preds = %27
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @strtol(i8* %82, i32* null, i32 10)
  %84 = call i32 @sHOUR(i32 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = call i32 @strtol(i8* %86, i32* null, i32 10)
  %88 = call i32 @sMIN(i32 %87)
  %89 = add nsw i32 %84, %88
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %81, %71, %61, %45, %35
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @sHOUR(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @sMIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
