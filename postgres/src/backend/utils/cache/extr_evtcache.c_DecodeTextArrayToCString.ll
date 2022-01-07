; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_evtcache.c_DecodeTextArrayToCString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_evtcache.c_DecodeTextArrayToCString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"expected 1-D text array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8***)* @DecodeTextArrayToCString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeTextArrayToCString(i32 %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8*** %1, i8**** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @DatumGetArrayTypeP(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ARR_NDIM(i32* %12)
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @ARR_HASNULL(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ARR_ELEMTYPE(i32* %20)
  %22 = load i64, i64* @TEXTOID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %15, %2
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @TEXTOID, align 8
  %30 = call i32 @deconstruct_array(i32* %28, i64 %29, i32 -1, i32 0, i8 signext 105, i32** %6, i32* null, i32* %9)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i8** @palloc(i32 %34)
  store i8** %35, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %51, %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @TextDatumGetCString(i32 %45)
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %46, i8** %50, align 8
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @pfree(i32* %55)
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8***, i8**** %4, align 8
  store i8** %57, i8*** %58, align 8
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i8** @palloc(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
