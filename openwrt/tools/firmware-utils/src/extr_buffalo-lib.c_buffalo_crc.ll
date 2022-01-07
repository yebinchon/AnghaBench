; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-lib.c_buffalo_crc.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-lib.c_buffalo_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffalo_crc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %4, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 8
  %17 = load i32*, i32** @crc32_table, align 8
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 24
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %19, %23
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %17, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %16, %28
  store i32 %29, i32* %7, align 4
  br label %10

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** @crc32_table, align 8
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 24
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = xor i64 %40, %41
  %43 = and i64 %42, 255
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %36, %45
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* %6, align 8
  %48 = lshr i64 %47, 8
  store i64 %48, i64* %6, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = xor i32 %50, -1
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
