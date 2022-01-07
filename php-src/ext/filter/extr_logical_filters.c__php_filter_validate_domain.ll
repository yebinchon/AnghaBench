; ModuleID = '/home/carl/AnghaBench/php-src/ext/filter/extr_logical_filters.c__php_filter_validate_domain.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/filter/extr_logical_filters.c__php_filter_validate_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILTER_FLAG_HOSTNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @_php_filter_validate_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_php_filter_validate_domain(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FILTER_FLAG_HOSTNAME, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %12, align 4
  store i8 1, i8* %13, align 1
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i64, i64* %11, align 8
  %35 = icmp ugt i64 %34, 253
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %113

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 @isalnum(i32 %48) #2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %37
  store i32 0, i32* %4, align 4
  br label %113

52:                                               ; preds = %45, %42
  br label %53

53:                                               ; preds = %109, %52
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %112

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %85, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 @isalnum(i32 %75) #2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 @isalnum(i32 %82) #2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78, %71, %62
  store i32 0, i32* %4, align 4
  br label %113

86:                                               ; preds = %78, %68
  store i8 1, i8* %13, align 1
  br label %109

87:                                               ; preds = %57
  %88 = load i8, i8* %13, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sgt i32 %89, 63
  br i1 %90, label %105, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 45
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i8*, i8** %9, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = call i32 @isalnum(i32 %102) #2
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99, %87
  store i32 0, i32* %4, align 4
  br label %113

106:                                              ; preds = %99, %94, %91
  %107 = load i8, i8* %13, align 1
  %108 = add i8 %107, 1
  store i8 %108, i8* %13, align 1
  br label %109

109:                                              ; preds = %106, %86
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  br label %53

112:                                              ; preds = %53
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %105, %85, %51, %36
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
