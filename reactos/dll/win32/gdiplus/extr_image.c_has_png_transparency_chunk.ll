; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_has_png_transparency_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_has_png_transparency_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tRNS\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"IDAT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IEND\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"has_tRNS = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @has_png_transparency_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_png_transparency_chunk(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 8, i32* %11, align 4
  br label %12

12:                                               ; preds = %68, %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @STREAM_SEEK_SET, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IStream_Seek(i32* %13, i32 %16, i32 %14, %struct.TYPE_5__* %7)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %70

22:                                               ; preds = %12
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %25 = call i32 @IStream_Read(i32* %23, i32* %24, i32 8, i32* %8)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %22
  br label %70

33:                                               ; preds = %29
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = shl i32 %35, 24
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %36, %39
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 8
  %44 = or i32 %40, %43
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %44, %46
  store i32 %47, i32* %9, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %49 = call i64 @memcmp(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %33
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %70

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %57, 12
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %62 = call i64 @memcmp(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %66 = call i64 @memcmp(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %12, label %70

70:                                               ; preds = %68, %51, %32, %21
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @IStream_Seek(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
