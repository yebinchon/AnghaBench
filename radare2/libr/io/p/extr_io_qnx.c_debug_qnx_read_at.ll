; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_qnx.c_debug_qnx_read_at.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_qnx.c_debug_qnx_read_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_buff = common dso_local global i64 0, align 8
@UT64_MAX = common dso_local global i64 0, align 8
@c_addr = common dso_local global i64 0, align 8
@desc = common dso_local global i32 0, align 4
@c_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @debug_qnx_read_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_qnx_read_at(i32* %0, i32 %1, i64 %2) #0 {
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
  store i32 500, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* @c_buff, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @UT64_MAX, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @c_addr, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @c_buff, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @memcpy(i32* %29, i64 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %4, align 4
  br label %89

34:                                               ; preds = %24, %20, %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @UT64_MAX, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  store i32 -1, i32* %4, align 4
  br label %89

42:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i32, i32* @desc, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @qnxr_read_memory(i32 %48, i64 %54, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* @desc, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @qnxr_read_memory(i32 %70, i64 %76, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %69, %66
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* @c_addr, align 8
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* @c_size, align 4
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %41, %28
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @qnxr_read_memory(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
