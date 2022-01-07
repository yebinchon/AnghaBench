; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_format_type.c_type_maximum_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_format_type.c_type_maximum_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @type_maximum_size(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %32

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %31 [
    i32 131, label %11
    i32 128, label %11
    i32 130, label %20
    i32 129, label %23
    i32 132, label %23
  ]

11:                                               ; preds = %9, %9
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @VARHDRSZ, align 8
  %14 = sub nsw i64 %12, %13
  %15 = call i32 (...) @GetDatabaseEncoding()
  %16 = call i64 @pg_encoding_max_length(i32 %15)
  %17 = mul nsw i64 %14, %16
  %18 = load i64, i64* @VARHDRSZ, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %3, align 8
  br label %32

20:                                               ; preds = %9
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @numeric_maximum_size(i64 %21)
  store i64 %22, i64* %3, align 8
  br label %32

23:                                               ; preds = %9, %9
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @BITS_PER_BYTE, align 8
  %26 = sub nsw i64 %25, 1
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* @BITS_PER_BYTE, align 8
  %29 = sdiv i64 %27, %28
  %30 = add i64 %29, 16
  store i64 %30, i64* %3, align 8
  br label %32

31:                                               ; preds = %9
  store i64 -1, i64* %3, align 8
  br label %32

32:                                               ; preds = %31, %23, %20, %11, %8
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i64 @pg_encoding_max_length(i32) #1

declare dso_local i32 @GetDatabaseEncoding(...) #1

declare dso_local i64 @numeric_maximum_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
