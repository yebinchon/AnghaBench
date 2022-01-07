; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_PROP = common dso_local global i32 0, align 4
@PROP_R_NOT_AN_IDENTIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@PROP_R_NAME_TOO_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, i32*)* @parse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_name(i32* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %70, %4
  %18 = load i8*, i8** %13, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @ossl_isalpha(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ERR_LIB_PROP, align 4
  %24 = load i32, i32* @PROP_R_NOT_AN_IDENTIFIER, align 4
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @ERR_raise_data(i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 0, i32* %5, align 4
  br label %100

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %30, 99
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** %13, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @ossl_tolower(i8 signext %34)
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 %36
  store i8 %35, i8* %38, align 1
  br label %40

39:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 95
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %13, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @ossl_isalnum(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ true, %41 ], [ %51, %47 ]
  br i1 %53, label %29, label %54

54:                                               ; preds = %52
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 46
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %73

60:                                               ; preds = %54
  store i32 1, i32* %14, align 4
  %61 = load i64, i64* %12, align 8
  %62 = icmp ult i64 %61, 99
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %12, align 8
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 %66
  store i8 %65, i8* %68, align 1
  br label %70

69:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %13, align 8
  br label %17

73:                                               ; preds = %59
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @ERR_LIB_PROP, align 4
  %80 = load i32, i32* @PROP_R_NAME_TOO_LONG, align 4
  %81 = load i8**, i8*** %7, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @ERR_raise_data(i32 %79, i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %82)
  store i32 0, i32* %5, align 4
  br label %100

84:                                               ; preds = %73
  %85 = load i8*, i8** %13, align 8
  %86 = call i8* @skip_space(i8* %85)
  %87 = load i8**, i8*** %7, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %92, %84
  %96 = phi i1 [ false, %84 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @ossl_property_name(i32* %88, i8* %89, i32 %97)
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %95, %78, %22
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @ossl_isalpha(i8 signext) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*) #1

declare dso_local signext i8 @ossl_tolower(i8 signext) #1

declare dso_local i64 @ossl_isalnum(i8 signext) #1

declare dso_local i8* @skip_space(i8*) #1

declare dso_local i32 @ossl_property_name(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
