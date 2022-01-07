; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/image/lzma-loader/src/extr_loader.c_lzma_init_props.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/image/lzma-loader/src/extr_loader.c_lzma_init_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LZMA_PROPERTIES_SIZE = common dso_local global i32 0, align 4
@lzma_outsize = common dso_local global i32 0, align 4
@lzma_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lzma_init_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_init_props() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %18, %0
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = call zeroext i8 (...) @lzma_get_byte()
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %8, i64 %16
  store i8 %14, i8* %17, align 1
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %9

21:                                               ; preds = %9
  %22 = call zeroext i8 (...) @lzma_get_byte()
  %23 = zext i8 %22 to i32
  %24 = call zeroext i8 (...) @lzma_get_byte()
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = add nsw i32 %23, %26
  %28 = call zeroext i8 (...) @lzma_get_byte()
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = add nsw i32 %27, %30
  %32 = call zeroext i8 (...) @lzma_get_byte()
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* @lzma_outsize, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %41, %21
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call zeroext i8 (...) @lzma_get_byte()
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %36

44:                                               ; preds = %36
  %45 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %46 = call i32 @LzmaDecodeProperties(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lzma_state, i32 0, i32 0), i8* %8, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %48)
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @lzma_get_byte(...) #2

declare dso_local i32 @LzmaDecodeProperties(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
