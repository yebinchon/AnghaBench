; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_tokenise.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_tokenise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@json_tokens = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"JSON: json string is empty.\00", align 1
@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"JSON: Invalid json string.\00", align 1
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"JSON: Truncated JSON string.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @json_tokenise(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32, i32* @json_tokens, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %3
  %20 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %94

21:                                               ; preds = %16
  %22 = call i32 @jsmn_init(i32* %9)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32* @mallocz(i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %94

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @jsmn_parse(i32* %9, i8* %32, i64 %33, i32* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %55, %31
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32* @reallocz(i32* %44, i32 %48)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @freez(i32* %53)
  store i32* null, i32** %4, align 8
  br label %94

55:                                               ; preds = %41
  %56 = load i32*, i32** %12, align 8
  store i32* %56, i32** %10, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @jsmn_parse(i32* %9, i8* %57, i64 %58, i32* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @freez(i32* %68)
  store i32* null, i32** %4, align 8
  br label %94

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @JSMN_ERROR_PART, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @freez(i32* %76)
  store i32* null, i32** %4, align 8
  br label %94

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i64*, i64** %7, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %7, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* @json_tokens, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* @json_tokens, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32*, i32** %10, align 8
  store i32* %93, i32** %4, align 8
  br label %94

94:                                               ; preds = %92, %74, %66, %52, %30, %19
  %95 = load i32*, i32** %4, align 8
  ret i32* %95
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32* @mallocz(i32) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i64, i32*, i32) #1

declare dso_local i32* @reallocz(i32*, i32) #1

declare dso_local i32 @freez(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
