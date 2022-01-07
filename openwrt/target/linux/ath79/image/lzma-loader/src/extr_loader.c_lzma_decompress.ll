; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/image/lzma-loader/src/extr_loader.c_lzma_decompress.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/image/lzma-loader/src/extr_loader.c_lzma_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@workspace = common dso_local global i64 0, align 8
@lzma_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@lzma_data = common dso_local global i32* null, align 8
@lzma_datasize = common dso_local global i32 0, align 4
@lzma_outsize = common dso_local global i32 0, align 4
@LZMA_RESULT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"LzmaDecode error %d at %08x, osize:%d ip:%d op:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lzma_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_decompress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* @workspace, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lzma_state, i32 0, i32 0), align 8
  %9 = load i32*, i32** @lzma_data, align 8
  %10 = load i32, i32* @lzma_datasize, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @lzma_outsize, align 4
  %13 = call i32 @LzmaDecode(%struct.TYPE_3__* @lzma_state, i32* %9, i32 %10, i32* %3, i8* %11, i32 %12, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LZMA_RESULT_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** @lzma_data, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* @lzma_outsize, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %22, i32 %23, i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32*, i32** @lzma_data, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  %43 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %1
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @LzmaDecode(%struct.TYPE_3__*, i32*, i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
