; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_parse_info_response.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_parse_info_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_NL = common dso_local global i32 0, align 4
@IS_LONG = common dso_local global i64 0, align 8
@IS_DOUBLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_parse_info_response(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @array_init(i32* %14)
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %2, %33, %102
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 35
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %36

27:                                               ; preds = %22, %17
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @_NL, align 4
  %30 = call i8* @strstr(i8* %28, i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %105

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %35, i8** %5, align 8
  br label %17

36:                                               ; preds = %22
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 58)
  store i8* %38, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %105

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @_NL, align 4
  %57 = call i8* @strstr(i8* %55, i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  br label %105

60:                                               ; preds = %41
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @is_numeric_string(i8* %72, i32 %73, i32* %12, double* %11, i32 0)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @IS_LONG, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %60
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @add_assoc_long_ex(i32* %79, i8* %80, i32 %81, i32 %82)
  br label %102

84:                                               ; preds = %60
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @IS_DOUBLE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load double, double* %11, align 8
  %93 = call i32 @add_assoc_double_ex(i32* %89, i8* %90, i32 %91, double %92)
  br label %101

94:                                               ; preds = %84
  %95 = load i32*, i32** %4, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @add_assoc_stringl_ex(i32* %95, i8* %96, i32 %97, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8* %104, i8** %5, align 8
  br label %17

105:                                              ; preds = %59, %40, %32
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @is_numeric_string(i8*, i32, i32*, double*, i32) #1

declare dso_local i32 @add_assoc_long_ex(i32*, i8*, i32, i32) #1

declare dso_local i32 @add_assoc_double_ex(i32*, i8*, i32, double) #1

declare dso_local i32 @add_assoc_stringl_ex(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
