; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ERR_LIB_PROP = common dso_local global i32 0, align 4
@PROP_R_NO_MATCHING_STRING_DELIMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HERE-->%c%s\00", align 1
@PROP_R_STRING_TOO_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@PROPERTY_TYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8, %struct.TYPE_5__*, i32)* @parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string(i32* %0, i8** %1, i8 signext %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1000 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8 %2, i8* %9, align 1
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %42, %5
  %19 = load i8*, i8** %13, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br label %30

30:                                               ; preds = %23, %18
  %31 = phi i1 [ false, %18 ], [ %29, %23 ]
  br i1 %31, label %32, label %45

32:                                               ; preds = %30
  %33 = load i64, i64* %14, align 8
  %34 = icmp ult i64 %33, 999
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8*, i8** %13, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load i64, i64* %14, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %14, align 8
  %40 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 %38
  store i8 %37, i8* %40, align 1
  br label %42

41:                                               ; preds = %32
  store i32 1, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %13, align 8
  br label %18

45:                                               ; preds = %30
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @ERR_LIB_PROP, align 4
  %52 = load i32, i32* @PROP_R_NO_MATCHING_STRING_DELIMETER, align 4
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i32, i8*, ...) @ERR_raise_data(i32 %51, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %56)
  store i32 0, i32* %6, align 4
  br label %89

58:                                               ; preds = %45
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @ERR_LIB_PROP, align 4
  %65 = load i32, i32* @PROP_R_STRING_TOO_LONG, align 4
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i32, i8*, ...) @ERR_raise_data(i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %77

69:                                               ; preds = %58
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ossl_property_value(i32* %70, i8* %71, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %63
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i8* @skip_space(i8* %79)
  %81 = load i8**, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @PROPERTY_TYPE_STRING, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %77, %50
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, ...) #1

declare dso_local i32 @ossl_property_value(i32*, i8*, i32) #1

declare dso_local i8* @skip_space(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
