; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyimage.c_chksum_crc32.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyimage.c_chksum_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@szbuf = common dso_local global i32 0, align 4
@crc_tab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @chksum_crc32(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @szbuf, align 4
  %9 = call i8* @malloc(i32 %8)
  store i8* %9, i8** %6, align 8
  store i64 4294967295, i64* %3, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @feof(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @szbuf, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @fread(i8* %16, i32 1, i32 %17, i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %40, %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = lshr i64 %26, 8
  %28 = and i64 %27, 16777215
  %29 = load i64*, i64** @crc_tab, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i64
  %35 = xor i64 %30, %34
  %36 = and i64 %35, 255
  %37 = getelementptr inbounds i64, i64* %29, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = xor i64 %28, %38
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %25
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %21

43:                                               ; preds = %21
  br label %10

44:                                               ; preds = %10
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
