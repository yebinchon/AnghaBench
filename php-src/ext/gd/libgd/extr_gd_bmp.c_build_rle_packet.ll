; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_build_rle_packet.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_build_rle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BMP_RLE_TYPE_RAW = common dso_local global i32 0, align 4
@BMP_RLE_TYPE_RLE = common dso_local global i32 0, align 4
@BMP_RLE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @build_rle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rle_packet(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 128
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %97

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BMP_RLE_TYPE_RAW, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %10, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @memset(i8* %33, i32 1, i32 1)
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 1)
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %26

46:                                               ; preds = %26
  br label %95

47:                                               ; preds = %22, %18
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BMP_RLE_TYPE_RLE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  store i32 2, i32* %10, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memset(i8* %52, i32 %53, i32 1)
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @memcpy(i8* %57, i8* %58, i32 1)
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  br label %94

62:                                               ; preds = %47
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 2, %63
  store i32 %64, i32* %10, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @BMP_RLE_COMMAND, align 4
  %67 = call i32 @memset(i8* %65, i32 %66, i32 1)
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @memset(i8* %70, i32 %71, i32 1)
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = srem i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %62
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @memset(i8* %87, i32 0, i32 1)
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %86, %62
  br label %94

94:                                               ; preds = %93, %51
  br label %95

95:                                               ; preds = %94, %46
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %17
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
