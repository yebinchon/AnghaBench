; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_consume_str_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_consume_str_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_BIN_WASM_STRING_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i8*)* @consume_str_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @consume_str_r(i32* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @r_buf_tell(i32* %11)
  store i64 %12, i64* %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @r_buf_size(i32* %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %15, %4
  store i64 0, i64* %5, align 8
  br label %49

25:                                               ; preds = %20
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %26, %27
  %29 = sub i64 %28, 1
  %30 = load i64, i64* %7, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %49

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i64, i64* @R_BIN_WASM_STRING_LENGTH, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @R_MIN(i64 %41, i64 %42)
  %44 = call i32 @r_buf_read(i32* %37, i32* %39, i32 %43)
  br label %47

45:                                               ; preds = %33
  %46 = load i8*, i8** %9, align 8
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %32, %24
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i64 @r_buf_tell(i32*) #1

declare dso_local i64 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_read(i32*, i32*, i32) #1

declare dso_local i32 @R_MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
