; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_number.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ERR_LIB_PROP = common dso_local global i32 0, align 4
@PROP_R_NOT_A_DECIMAL_DIGIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@PROPERTY_TYPE_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_5__*)* @parse_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_number(i8** %0, %struct.TYPE_5__* %1) #0 {
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
  %12 = call i64 @ossl_isdigit(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %25, %15
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 10
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 48
  %24 = add nsw i32 %18, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @ossl_isdigit(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %16, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @ossl_isspace(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 44
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @ERR_LIB_PROP, align 4
  %47 = load i32, i32* @PROP_R_NOT_A_DECIMAL_DIGIT, align 4
  %48 = load i8**, i8*** %4, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @ERR_raise_data(i32 %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 0, i32* %3, align 4
  br label %62

51:                                               ; preds = %40, %35, %30
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @skip_space(i8* %52)
  %54 = load i8**, i8*** %4, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @PROPERTY_TYPE_NUMBER, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %51, %45, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @ossl_isdigit(i8 signext) #1

declare dso_local i32 @ossl_isspace(i8 signext) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*) #1

declare dso_local i8* @skip_space(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
