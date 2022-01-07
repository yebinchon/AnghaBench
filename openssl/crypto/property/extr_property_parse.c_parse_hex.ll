; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_hex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ERR_LIB_PROP = common dso_local global i32 0, align 4
@PROP_R_NOT_AN_HEXADECIMAL_DIGIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@PROPERTY_TYPE_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_5__*)* @parse_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hex(i8** %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @ossl_isxdigit(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @ossl_isdigit(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 48
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %38

30:                                               ; preds = %16
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @ossl_tolower(i8 signext %32)
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 97
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %30, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @ossl_isxdigit(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %16, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @ossl_isspace(i8 signext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 44
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @ERR_LIB_PROP, align 4
  %62 = load i32, i32* @PROP_R_NOT_AN_HEXADECIMAL_DIGIT, align 4
  %63 = load i8**, i8*** %4, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @ERR_raise_data(i32 %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i32 0, i32* %3, align 4
  br label %77

66:                                               ; preds = %55, %50, %45
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @skip_space(i8* %67)
  %69 = load i8**, i8*** %4, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @PROPERTY_TYPE_NUMBER, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %66, %60, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @ossl_isxdigit(i8 signext) #1

declare dso_local i64 @ossl_isdigit(i8 signext) #1

declare dso_local signext i8 @ossl_tolower(i8 signext) #1

declare dso_local i32 @ossl_isspace(i8 signext) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*) #1

declare dso_local i8* @skip_space(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
