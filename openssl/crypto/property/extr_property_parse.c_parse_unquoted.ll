; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_unquoted.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_unquoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ERR_LIB_PROP = common dso_local global i32 0, align 4
@PROP_R_NOT_AN_ASCII_CHARACTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@PROP_R_STRING_TOO_LONG = common dso_local global i32 0, align 4
@PROPERTY_TYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, %struct.TYPE_5__*, i32)* @parse_unquoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_unquoted(i32* %0, i8** %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1000 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %108

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @ossl_isprint(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @ossl_isspace(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 44
  br label %42

42:                                               ; preds = %37, %32, %27
  %43 = phi i1 [ false, %32 ], [ false, %27 ], [ %41, %37 ]
  br i1 %43, label %44, label %58

44:                                               ; preds = %42
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %45, 999
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call signext i8 @ossl_tolower(i8 signext %49)
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  %53 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 %51
  store i8 %50, i8* %53, align 1
  br label %55

54:                                               ; preds = %44
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %27

58:                                               ; preds = %42
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @ossl_isspace(i8 signext %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 44
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @ERR_LIB_PROP, align 4
  %75 = load i32, i32* @PROP_R_NOT_AN_ASCII_CHARACTER, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @ERR_raise_data(i32 %74, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %76)
  store i32 0, i32* %5, align 4
  br label %108

78:                                               ; preds = %68, %63, %58
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @ERR_LIB_PROP, align 4
  %85 = load i32, i32* @PROP_R_STRING_TOO_LONG, align 4
  %86 = load i8**, i8*** %7, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @ERR_raise_data(i32 %84, i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %87)
  br label %97

89:                                               ; preds = %78
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ossl_property_value(i32* %90, i8* %91, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %83
  %98 = load i8*, i8** %11, align 8
  %99 = call i8* @skip_space(i8* %98)
  %100 = load i8**, i8*** %7, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @PROPERTY_TYPE_STRING, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %97, %73, %25
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @ossl_isprint(i8 signext) #1

declare dso_local i32 @ossl_isspace(i8 signext) #1

declare dso_local signext i8 @ossl_tolower(i8 signext) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*) #1

declare dso_local i32 @ossl_property_value(i32*, i8*, i32) #1

declare dso_local i8* @skip_space(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
