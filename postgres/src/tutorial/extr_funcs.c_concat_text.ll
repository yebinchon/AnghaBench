; ModuleID = '/home/carl/AnghaBench/postgres/src/tutorial/extr_funcs.c_concat_text.c'
source_filename = "/home/carl/AnghaBench/postgres/src/tutorial/extr_funcs.c_concat_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @concat_text(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @VARSIZE(i32* %9)
  %11 = load i64, i64* @VARHDRSZ, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @VARSIZE(i32* %13)
  %15 = load i64, i64* @VARHDRSZ, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @VARHDRSZ, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @palloc(i64 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @SET_VARSIZE(i32* %25, i64 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @VARDATA(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @VARDATA(i32* %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @memcpy(i64 %29, i64 %31, i64 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @VARDATA(i32* %34)
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @VARDATA(i32* %38)
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i64 %37, i64 %39, i64 %40)
  %42 = load i32*, i32** %8, align 8
  ret i32* %42
}

declare dso_local i64 @VARSIZE(i32*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i64 @VARDATA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
