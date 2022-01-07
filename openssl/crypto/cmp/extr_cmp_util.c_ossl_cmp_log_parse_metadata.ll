; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_ossl_cmp_log_parse_metadata.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_ossl_cmp_log_parse_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ossl_cmp_log_parse_metadata(i8* %0, i32* %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %25

22:                                               ; preds = %5
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i8* [ null, %21 ], [ %24, %22 ]
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %14, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 -1, i32* %29, align 4
  %30 = load i8**, i8*** %8, align 8
  store i8* null, i8** %30, align 8
  %31 = load i8**, i8*** %9, align 8
  store i8* null, i8** %31, align 8
  %32 = load i32*, i32** %10, align 8
  store i32 0, i32* %32, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %104

35:                                               ; preds = %25
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %12, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 58)
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @parse_level(i8* %39)
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = icmp slt i32 %40, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %35
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %103

46:                                               ; preds = %43
  %47 = load i8*, i8** %13, align 8
  store i8* %47, i8** %16, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %15, align 8
  %50 = call i64 @strtol(i8* %49, i8** %16, i32 10)
  store i64 %50, i64* %17, align 8
  %51 = load i8*, i8** %16, align 8
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %46
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %13, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %102

61:                                               ; preds = %55
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @parse_level(i8* %62)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = icmp sge i32 %63, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  %70 = load i8*, i8** %11, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @OPENSSL_strndup(i8* %67, i32 %74)
  %76 = load i8**, i8*** %8, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  %80 = load i8*, i8** %12, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @OPENSSL_strndup(i8* %77, i32 %84)
  %86 = load i8**, i8*** %9, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i64, i64* %17, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 58)
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %14, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %100

97:                                               ; preds = %66
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %14, align 8
  br label %100

100:                                              ; preds = %97, %66
  br label %101

101:                                              ; preds = %100, %61
  br label %102

102:                                              ; preds = %101, %55, %46
  br label %103

103:                                              ; preds = %102, %43, %35
  br label %104

104:                                              ; preds = %103, %25
  %105 = load i8*, i8** %14, align 8
  ret i8* %105
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_level(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @OPENSSL_strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
