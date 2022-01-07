; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_format_parse_format.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_format_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"format specifies argument 0, but arguments are numbered from 1\00", align 1
@TEXT_FORMAT_FLAG_MINUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"width argument position must be ended by \22$\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i32*, i32*, i32*)* @text_format_parse_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @text_format_parse_format(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i32*, i32** %10, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i32*, i32** %11, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i32*, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %13, align 8
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @text_format_parse_digits(i8** %14, i8* %21, i32* %15)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %6
  %25 = load i8*, i8** %14, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 36
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %15, align 4
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %14, align 8
  store i8* %32, i8** %7, align 8
  br label %113

33:                                               ; preds = %24
  %34 = load i32, i32* %15, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @ADVANCE_PARSE_POINTER(i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %6
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %14, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @TEXT_FORMAT_FLAG_MINUS, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @ADVANCE_PARSE_POINTER(i8* %59, i8* %60)
  br label %49

62:                                               ; preds = %49
  %63 = load i8*, i8** %14, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 42
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @ADVANCE_PARSE_POINTER(i8* %68, i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @text_format_parse_digits(i8** %14, i8* %71, i32* %15)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %67
  %75 = load i8*, i8** %14, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 36
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %15, align 4
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 @ereport(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @ADVANCE_PARSE_POINTER(i8* %97, i8* %98)
  br label %102

100:                                              ; preds = %67
  %101 = load i32*, i32** %11, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %96
  br label %111

103:                                              ; preds = %62
  %104 = load i8*, i8** %9, align 8
  %105 = call i64 @text_format_parse_digits(i8** %14, i8* %104, i32* %15)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %102
  %112 = load i8*, i8** %14, align 8
  store i8* %112, i8** %7, align 8
  br label %113

113:                                              ; preds = %111, %29
  %114 = load i8*, i8** %7, align 8
  ret i8* %114
}

declare dso_local i64 @text_format_parse_digits(i8**, i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ADVANCE_PARSE_POINTER(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
