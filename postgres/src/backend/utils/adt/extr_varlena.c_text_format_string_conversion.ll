; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_format_string_conversion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_format_string_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"null values cannot be formatted as an SQL identifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i32*, i32, i32, i32, i32)* @text_format_string_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @text_format_string_conversion(i32 %0, i8 signext %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8 %1, i8* %9, align 1
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %7
  %20 = load i8, i8* %9, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 115
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @text_format_append_string(i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %49

28:                                               ; preds = %19
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 76
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @text_format_append_string(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %48

37:                                               ; preds = %28
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 73
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %23
  br label %88

50:                                               ; preds = %7
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @OutputFunctionCall(i32* %51, i32 %52)
  store i8* %53, i8** %15, align 8
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 73
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %15, align 8
  %60 = call i8* @quote_identifier(i8* %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @text_format_append_string(i32 %58, i8* %60, i32 %61, i32 %62)
  br label %85

64:                                               ; preds = %50
  %65 = load i8, i8* %9, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 76
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i8*, i8** %15, align 8
  %70 = call i8* @quote_literal_cstr(i8* %69)
  store i8* %70, i8** %16, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %16, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @text_format_append_string(i32 %71, i8* %72, i32 %73, i32 %74)
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @pfree(i8* %76)
  br label %84

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @text_format_append_string(i32 %79, i8* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %68
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @pfree(i8* %86)
  br label %88

88:                                               ; preds = %85, %49
  ret void
}

declare dso_local i32 @text_format_append_string(i32, i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
