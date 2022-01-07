; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_locale.c_lowerstr_with_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_locale.c_lowerstr_with_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CHARACTER_NOT_IN_REPERTOIRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"conversion from wchar_t to server encoding failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lowerstr_with_len(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i8* @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %3, align 8
  br label %125

19:                                               ; preds = %2
  %20 = call i32 (...) @pg_database_encoding_max_length()
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %87

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @lc_ctype_is_c(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %87, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @palloc(i32 %31)
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %9, align 8
  store i64* %33, i64** %10, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @char2wchar(i64* %34, i32 %36, i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sle i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  br label %46

46:                                               ; preds = %50, %26
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @towlower(i32 %53)
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %10, align 8
  br label %46

58:                                               ; preds = %46
  %59 = call i32 (...) @pg_database_encoding_max_length()
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @palloc(i32 %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @wchar2char(i8* %66, i64* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i64*, i64** %9, align 8
  %72 = call i32 @pfree(i64* %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %58
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_CHARACTER_NOT_IN_REPERTOIRE, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @ereport(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %58
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @Assert(i32 %85)
  br label %123

87:                                               ; preds = %22, %19
  %88 = load i8*, i8** %4, align 8
  store i8* %88, i8** %12, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 1, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @palloc(i32 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %6, align 8
  store i8* %95, i8** %13, align 8
  br label %96

96:                                               ; preds = %112, %87
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load i8*, i8** %12, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %105, %96
  %111 = phi i1 [ false, %96 ], [ %109, %105 ]
  br i1 %111, label %112, label %121

112:                                              ; preds = %110
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @TOUCHAR(i8* %113)
  %115 = call i32 @tolower(i32 %114) #3
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %12, align 8
  br label %96

121:                                              ; preds = %110
  %122 = load i8*, i8** %13, align 8
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %121, %81
  %124 = load i8*, i8** %6, align 8
  store i8* %124, i8** %3, align 8
  br label %125

125:                                              ; preds = %123, %17
  %126 = load i8*, i8** %3, align 8
  ret i8* %126
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @lc_ctype_is_c(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @char2wchar(i64*, i32, i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @towlower(i32) #1

declare dso_local i32 @wchar2char(i8*, i64*, i32, i32) #1

declare dso_local i32 @pfree(i64*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @TOUCHAR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
