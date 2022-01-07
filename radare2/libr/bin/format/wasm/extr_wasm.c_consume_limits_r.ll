; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_consume_limits_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_consume_limits_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_wasm_resizable_limits_t = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.r_bin_wasm_resizable_limits_t*)* @consume_limits_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @consume_limits_r(i32* %0, i64 %1, %struct.r_bin_wasm_resizable_limits_t* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r_bin_wasm_resizable_limits_t*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.r_bin_wasm_resizable_limits_t* %2, %struct.r_bin_wasm_resizable_limits_t** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @r_buf_size(i32* %13)
  %15 = icmp sge i64 %12, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @r_buf_tell(i32* %17)
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.r_bin_wasm_resizable_limits_t*, %struct.r_bin_wasm_resizable_limits_t** %7, align 8
  %23 = icmp ne %struct.r_bin_wasm_resizable_limits_t* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %16, %11, %3
  store i64 0, i64* %4, align 8
  br label %63

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @r_buf_tell(i32* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.r_bin_wasm_resizable_limits_t*, %struct.r_bin_wasm_resizable_limits_t** %7, align 8
  %31 = getelementptr inbounds %struct.r_bin_wasm_resizable_limits_t, %struct.r_bin_wasm_resizable_limits_t* %30, i32 0, i32 1
  %32 = call i32 @consume_u7_r(i32* %28, i64 %29, i64* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i64 0, i64* %4, align 8
  br label %63

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.r_bin_wasm_resizable_limits_t*, %struct.r_bin_wasm_resizable_limits_t** %7, align 8
  %39 = getelementptr inbounds %struct.r_bin_wasm_resizable_limits_t, %struct.r_bin_wasm_resizable_limits_t* %38, i32 0, i32 2
  %40 = call i32 @consume_u32_r(i32* %36, i64 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %63

43:                                               ; preds = %35
  %44 = load %struct.r_bin_wasm_resizable_limits_t*, %struct.r_bin_wasm_resizable_limits_t** %7, align 8
  %45 = getelementptr inbounds %struct.r_bin_wasm_resizable_limits_t, %struct.r_bin_wasm_resizable_limits_t* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.r_bin_wasm_resizable_limits_t*, %struct.r_bin_wasm_resizable_limits_t** %7, align 8
  %52 = getelementptr inbounds %struct.r_bin_wasm_resizable_limits_t, %struct.r_bin_wasm_resizable_limits_t* %51, i32 0, i32 0
  %53 = call i32 @consume_u32_r(i32* %49, i64 %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %63

56:                                               ; preds = %48, %43
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @r_buf_tell(i32* %57)
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i32 @R_ABS(i64 %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %56, %55, %42, %34, %24
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i64 @r_buf_size(i32*) #1

declare dso_local i64 @r_buf_tell(i32*) #1

declare dso_local i32 @consume_u7_r(i32*, i64, i64*) #1

declare dso_local i32 @consume_u32_r(i32*, i64, i32*) #1

declare dso_local i32 @R_ABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
