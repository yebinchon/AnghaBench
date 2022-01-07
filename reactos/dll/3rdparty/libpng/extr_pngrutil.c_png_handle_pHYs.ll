; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_pHYs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_pHYs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_pHYs\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@PNG_INFO_pHYs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_pHYs(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 @png_chunk_error(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @png_crc_finish(%struct.TYPE_11__* %29, i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = call i32 @png_chunk_benign_error(%struct.TYPE_11__* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %83

34:                                               ; preds = %21
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PNG_INFO_pHYs, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @png_crc_finish(%struct.TYPE_11__* %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @png_chunk_benign_error(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %83

50:                                               ; preds = %37, %34
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 9
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @png_crc_finish(%struct.TYPE_11__* %56, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = call i32 @png_chunk_benign_error(%struct.TYPE_11__* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %83

61:                                               ; preds = %52
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %64 = call i32 @png_crc_read(%struct.TYPE_11__* %62, i32* %63, i32 9)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i64 @png_crc_finish(%struct.TYPE_11__* %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %83

69:                                               ; preds = %61
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %71 = call i32 @png_get_uint_32(i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = call i32 @png_get_uint_32(i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 8
  %76 = load i32, i32* %75, align 16
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @png_set_pHYs(%struct.TYPE_11__* %77, %struct.TYPE_12__* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %69, %68, %55, %44, %28
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @png_get_uint_32(i32*) #1

declare dso_local i32 @png_set_pHYs(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
