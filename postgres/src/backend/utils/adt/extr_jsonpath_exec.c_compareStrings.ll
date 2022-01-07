; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_compareStrings.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_compareStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_SQL_ASCII = common dso_local global i64 0, align 8
@PG_UTF8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @compareStrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareStrings(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call i64 (...) @GetDatabaseEncoding()
  %16 = load i64, i64* @PG_SQL_ASCII, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = call i64 (...) @GetDatabaseEncoding()
  %20 = load i64, i64* @PG_UTF8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @binaryCompareStrings(i8* %23, i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %96

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* @PG_UTF8, align 8
  %32 = call i8* @pg_server_to_any(i8* %29, i32 %30, i64 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* @PG_UTF8, align 8
  %36 = call i8* @pg_server_to_any(i8* %33, i32 %34, i64 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  br label %45

42:                                               ; preds = %28
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strlen(i8* %43)
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %42 ]
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  br label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @strlen(i8* %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @binaryCompareStrings(i8* %57, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %96

71:                                               ; preds = %65, %55
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @pfree(i8* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @pfree(i8* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @binaryCompareStrings(i8* %89, i32 %90, i8* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %88, %69, %22
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i32 @binaryCompareStrings(i8*, i32, i8*, i32) #1

declare dso_local i8* @pg_server_to_any(i8*, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
