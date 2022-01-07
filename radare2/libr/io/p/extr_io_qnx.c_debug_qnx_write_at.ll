; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_qnx.c_debug_qnx_write_at.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_qnx.c_debug_qnx_write_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i64 0, align 8
@c_addr = common dso_local global i64 0, align 8
@c_size = common dso_local global i64 0, align 8
@c_buff = common dso_local global i32 0, align 4
@desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @debug_qnx_write_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_qnx_write_at(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 500, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @UT64_MAX, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %3
  store i32 -1, i32* %4, align 4
  br label %91

25:                                               ; preds = %20
  %26 = load i64, i64* @c_addr, align 8
  %27 = load i64, i64* @UT64_MAX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @c_addr, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* @c_addr, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i64, i64* @c_addr, align 8
  %39 = load i64, i64* @c_size, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @c_buff, align 4
  %44 = call i32 @R_FREE(i32 %43)
  %45 = load i64, i64* @UT64_MAX, align 8
  store i64 %45, i64* @c_addr, align 8
  br label %46

46:                                               ; preds = %42, %33, %29, %25
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32, i32* @desc, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @qnxr_write_memory(i32 %52, i64 %58, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i32, i32* @desc, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @qnxr_write_memory(i32 %74, i64 %80, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %73, %70
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @R_FREE(i32) #1

declare dso_local i32 @qnxr_write_memory(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
