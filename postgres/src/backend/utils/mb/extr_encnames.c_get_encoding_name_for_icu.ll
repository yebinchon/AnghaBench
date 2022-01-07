; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_encnames.c_get_encoding_name_for_icu.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_encnames.c_get_encoding_name_for_icu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_enc2icu_tbl = common dso_local global i8** null, align 8
@PG_ENCODING_BE_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"pg_enc2icu_tbl incomplete\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"encoding \22%s\22 not supported by ICU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_encoding_name_for_icu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8**, i8*** @pg_enc2icu_tbl, align 8
  %5 = call i64 @lengthof(i8** %4)
  %6 = load i64, i64* @PG_ENCODING_BE_LAST, align 8
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @StaticAssertStmt(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i8**, i8*** @pg_enc2icu_tbl, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @pg_encoding_to_char(i32 %22)
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i64 @lengthof(i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_encoding_to_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
