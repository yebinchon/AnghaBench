; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_cyr_convert.c_php_convert_cyr_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_cyr_convert.c_php_convert_cyr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cyr_win1251 = common dso_local global i8* null, align 8
@_cyr_cp866 = common dso_local global i8* null, align 8
@_cyr_iso88595 = common dso_local global i8* null, align 8
@_cyr_mac = common dso_local global i8* null, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown source charset: %c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown destination charset: %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8, i8)* @php_convert_cyr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_convert_cyr_string(i8* %0, i64 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load i8, i8* %8, align 1
  %15 = zext i8 %14 to i32
  %16 = call i32 @toupper(i32 %15) #3
  switch i32 %16, label %26 [
    i32 87, label %17
    i32 65, label %19
    i32 68, label %19
    i32 73, label %21
    i32 77, label %23
    i32 75, label %25
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** @_cyr_win1251, align 8
  store i8* %18, i8** %10, align 8
  br label %30

19:                                               ; preds = %4, %4
  %20 = load i8*, i8** @_cyr_cp866, align 8
  store i8* %20, i8** %10, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load i8*, i8** @_cyr_iso88595, align 8
  store i8* %22, i8** %10, align 8
  br label %30

23:                                               ; preds = %4
  %24 = load i8*, i8** @_cyr_mac, align 8
  store i8* %24, i8** %10, align 8
  br label %30

25:                                               ; preds = %4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @E_WARNING, align 4
  %28 = load i8, i8* %8, align 1
  %29 = call i32 @php_error_docref(i32* null, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %28)
  br label %30

30:                                               ; preds = %26, %25, %23, %21, %19, %17
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 @toupper(i32 %32) #3
  switch i32 %33, label %43 [
    i32 87, label %34
    i32 65, label %36
    i32 68, label %36
    i32 73, label %38
    i32 77, label %40
    i32 75, label %42
  ]

34:                                               ; preds = %30
  %35 = load i8*, i8** @_cyr_win1251, align 8
  store i8* %35, i8** %11, align 8
  br label %47

36:                                               ; preds = %30, %30
  %37 = load i8*, i8** @_cyr_cp866, align 8
  store i8* %37, i8** %11, align 8
  br label %47

38:                                               ; preds = %30
  %39 = load i8*, i8** @_cyr_iso88595, align 8
  store i8* %39, i8** %11, align 8
  br label %47

40:                                               ; preds = %30
  %41 = load i8*, i8** @_cyr_mac, align 8
  store i8* %41, i8** %11, align 8
  br label %47

42:                                               ; preds = %30
  br label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @E_WARNING, align 4
  %45 = load i8, i8* %9, align 1
  %46 = call i32 @php_error_docref(i32* null, i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8 signext %45)
  br label %47

47:                                               ; preds = %43, %42, %40, %38, %36, %34
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %5, align 8
  br label %104

52:                                               ; preds = %47
  store i64 0, i64* %13, align 8
  br label %53

53:                                               ; preds = %99, %52
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = load i8*, i8** %10, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  br label %76

66:                                               ; preds = %57
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  br label %76

76:                                               ; preds = %66, %60
  %77 = phi i32 [ %65, %60 ], [ %75, %66 ]
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %12, align 1
  %79 = load i8*, i8** %11, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8, i8* %12, align 1
  %83 = zext i8 %82 to i32
  br label %93

84:                                               ; preds = %76
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %12, align 1
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %87, 256
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %84, %81
  %94 = phi i32 [ %83, %81 ], [ %92, %84 ]
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 %95, i8* %98, align 1
  br label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %53

102:                                              ; preds = %53
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %5, align 8
  br label %104

104:                                              ; preds = %102, %50
  %105 = load i8*, i8** %5, align 8
  ret i8* %105
}

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
