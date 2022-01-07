; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_packed_repack.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_packed_repack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_repack = type { i32*, i32*, i32 (i32*, i8**, i32, i32)*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i8** }
%struct.TYPE_3__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @packed_repack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_repack(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_zimg_repack*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.mp_zimg_repack*
  store %struct.mp_zimg_repack* %15, %struct.mp_zimg_repack** %9, align 8
  %16 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %17 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %24 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %22, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %80, %4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  %40 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %41 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %48 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %57 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %67 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %65, %72
  %74 = mul nsw i32 %64, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, i8* %55, i64 %75
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %78
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %39
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %36

83:                                               ; preds = %36
  %84 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %85 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %84, i32 0, i32 2
  %86 = load i32 (i32*, i8**, i32, i32)*, i32 (i32*, i8**, i32, i32)** %85, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 %86(i32* %87, i8** %88, i32 %89, i32 %90)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
