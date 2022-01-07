; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_synonym.c_findwrd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_synonym.c_findwrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSL_PREFIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i64*)* @findwrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findwrd(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  br label %10

10:                                               ; preds = %21, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @t_isspace(i8* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @pg_mblen(i8* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %5, align 8
  br label %10

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8**, i8*** %6, align 8
  store i8* null, i8** %33, align 8
  store i8* null, i8** %4, align 8
  br label %84

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %8, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %48, %34
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @t_isspace(i8* %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @pg_mblen(i8* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %5, align 8
  br label %36

55:                                               ; preds = %46
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @t_iseq(i8* %63, i8 signext 42)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i64*, i64** %7, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i64, i64* @TSL_PREFIX, align 8
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8**, i8*** %6, align 8
  store i8* %72, i8** %73, align 8
  br label %82

74:                                               ; preds = %66, %62, %55
  %75 = load i64*, i64** %7, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i64*, i64** %7, align 8
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i8*, i8** %5, align 8
  %81 = load i8**, i8*** %6, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %79, %69
  %83 = load i8*, i8** %8, align 8
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %82, %32
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local i64 @t_isspace(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
