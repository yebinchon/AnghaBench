; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__jpeg_decode_block_prog_dc.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__jpeg_decode_block_prog_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"can't merge dc and ac\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i16*, i32*, i32)* @stbi__jpeg_decode_block_prog_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__jpeg_decode_block_prog_dc(%struct.TYPE_9__* %0, i16* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @stbi__err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %5, align 4
  br label %92

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @stbi__grow_buffer_unsafe(%struct.TYPE_9__* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = load i16*, i16** %7, align 8
  %34 = call i32 @memset(i16* %33, i32 0, i32 128)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @stbi__jpeg_huff_decode(%struct.TYPE_9__* %35, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @stbi__extend_receive(%struct.TYPE_9__* %41, i32 %42)
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %65, %68
  %70 = trunc i32 %69 to i16
  %71 = load i16*, i16** %7, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 0
  store i16 %70, i16* %72, align 2
  br label %91

73:                                               ; preds = %27
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i64 @stbi__jpeg_get_bit(%struct.TYPE_9__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  %82 = trunc i32 %81 to i16
  %83 = sext i16 %82 to i32
  %84 = load i16*, i16** %7, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 0
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = add nsw i32 %87, %83
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %85, align 2
  br label %90

90:                                               ; preds = %77, %73
  br label %91

91:                                               ; preds = %90, %45
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__grow_buffer_unsafe(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @stbi__jpeg_huff_decode(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @stbi__extend_receive(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @stbi__jpeg_get_bit(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
