; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varchar.c_bpchar_input.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varchar.c_bpchar_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_STRING_DATA_RIGHT_TRUNCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"value too long for type character(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64)* @bpchar_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bpchar_input(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @VARHDRSZ, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %9, align 8
  br label %66

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @VARHDRSZ, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @pg_mbstrlen_with_len(i8* %22, i64 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %18
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @pg_mbcharcliplen(i8* %29, i64 %30, i64 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %54, %28
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 32
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_STRING_DATA_RIGHT_TRUNCATION, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 @ereport(i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %45, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %12, align 8
  br label %34

57:                                               ; preds = %34
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %5, align 8
  store i64 %58, i64* %9, align 8
  br label %65

59:                                               ; preds = %18
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %61, %62
  %64 = add i64 %60, %63
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %59, %57
  br label %66

66:                                               ; preds = %65, %16
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @VARHDRSZ, align 8
  %69 = add i64 %67, %68
  %70 = call i64 @palloc(i64 %69)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @VARHDRSZ, align 8
  %75 = add i64 %73, %74
  %76 = call i32 @SET_VARSIZE(i32* %72, i64 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i8* @VARDATA(i32* %77)
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %66
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %5, align 8
  %92 = sub i64 %90, %91
  %93 = call i32 @memset(i8* %89, i8 signext 32, i64 %92)
  br label %94

94:                                               ; preds = %86, %66
  %95 = load i32*, i32** %7, align 8
  ret i32* %95
}

declare dso_local i64 @pg_mbstrlen_with_len(i8*, i64) #1

declare dso_local i64 @pg_mbcharcliplen(i8*, i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
