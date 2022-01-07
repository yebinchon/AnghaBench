; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_c_keywords.c_ScanCKeywordLookup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_c_keywords.c_ScanCKeywordLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ScanCKeywords = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ScanCKeywordTokens = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScanCKeywordLookup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ScanCKeywords, i32 0, i32 0), align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @ScanCKeywords_hash_func(i8* %14, i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ScanCKeywords, i32 0, i32 1), align 8
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %13
  store i32 -1, i32* %2, align 4
  br label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @GetScanKeyword(i32 %25, %struct.TYPE_3__* @ScanCKeywords)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32*, i32** @ScanCKeywordTokens, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31, %23, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ScanCKeywords_hash_func(i8*, i64) #1

declare dso_local i8* @GetScanKeyword(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
