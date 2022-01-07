; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_line_horizontal.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_line_horizontal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i16, i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i32)* @nk_rawfb_line_horizontal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_line_horizontal(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i32 %4) #0 {
  %6 = alloca %struct.nk_color, align 4
  %7 = alloca %struct.rawfb_context*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  store i32 %4, i32* %16, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %7, align 8
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  %17 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %18 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i16, i16* %9, align 2
  %22 = sext i16 %21 to i32
  %23 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %24 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %22, %27
  %29 = load i8*, i8** %14, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i16, i16* %8, align 2
  %35 = sext i16 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32* %37, i32** %15, align 8
  %38 = load i16, i16* %10, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16, i16* %8, align 2
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %58, %5
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %45, 16
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %49 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nk_rawfb_color2int(i32 %53, i32 %51)
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %12, align 4
  %64 = icmp ugt i32 %63, 16
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32*, i32** %15, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %69 = call i32 @memcpy(i8* %67, i32* %68, i32 64)
  %70 = load i32, i32* %12, align 4
  %71 = sub i32 %70, 16
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  store i32* %73, i32** %15, align 8
  br label %62

74:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %75

91:                                               ; preds = %75
  ret void
}

declare dso_local i32 @nk_rawfb_color2int(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
