; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_length.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @text_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @text_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @pg_database_encoding_max_length()
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @toast_raw_datum_size(i32 %8)
  %10 = load i64, i64* @VARHDRSZ, align 8
  %11 = sub nsw i64 %9, %10
  %12 = call i32 @PG_RETURN_INT32(i64 %11)
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32* @DatumGetTextPP(i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @VARDATA_ANY(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @VARSIZE_ANY_EXHDR(i32* %18)
  %20 = call i64 @pg_mbstrlen_with_len(i32 %17, i32 %19)
  %21 = call i32 @PG_RETURN_INT32(i64 %20)
  br label %22

22:                                               ; preds = %13, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @PG_RETURN_INT32(i64) #1

declare dso_local i64 @toast_raw_datum_size(i32) #1

declare dso_local i32* @DatumGetTextPP(i32) #1

declare dso_local i64 @pg_mbstrlen_with_len(i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
