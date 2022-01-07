; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_consume_init_expr_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_consume_init_expr_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i8*)* @consume_init_expr_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @consume_init_expr_r(i32* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @r_buf_size(i32* %16)
  %18 = icmp sge i64 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @r_buf_tell(i32* %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %4
  store i64 0, i64* %5, align 8
  br label %52

25:                                               ; preds = %19
  store i64 0, i64* %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @r_buf_read8(i32* %26)
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %39, %25
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @r_buf_tell(i32* %29)
  %31 = load i64, i64* %7, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %34, %35
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @r_buf_read8(i32* %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %28

44:                                               ; preds = %37
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 0, i64* %5, align 8
  br label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %48, %24
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i64 @r_buf_size(i32*) #1

declare dso_local i64 @r_buf_tell(i32*) #1

declare dso_local i64 @r_buf_read8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
