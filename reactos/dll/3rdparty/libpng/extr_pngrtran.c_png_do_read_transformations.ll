; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_do_read_transformations.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_do_read_transformations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32*, i32 (%struct.TYPE_39__*, %struct.TYPE_40__*, i32*)*, i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_40__ = type { i32, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"in png_do_read_transformations\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"NULL row buffer\00", align 1
@PNG_FLAG_DETECT_UNINITIALIZED = common dso_local global i32 0, align 4
@PNG_FLAG_ROW_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Uninitialized row\00", align 1
@PNG_16_TO_8 = common dso_local global i32 0, align 4
@PNG_BACKGROUND_IS_GRAY = common dso_local global i32 0, align 4
@PNG_BGR = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4
@PNG_COMPOSE = common dso_local global i32 0, align 4
@PNG_ENCODE_ALPHA = common dso_local global i32 0, align 4
@PNG_EXPAND = common dso_local global i32 0, align 4
@PNG_EXPAND_16 = common dso_local global i32 0, align 4
@PNG_EXPAND_tRNS = common dso_local global i32 0, align 4
@PNG_FILLER = common dso_local global i32 0, align 4
@PNG_GAMMA = common dso_local global i32 0, align 4
@PNG_GRAY_TO_RGB = common dso_local global i32 0, align 4
@PNG_INVERT_ALPHA = common dso_local global i32 0, align 4
@PNG_INVERT_MONO = common dso_local global i32 0, align 4
@PNG_PACK = common dso_local global i32 0, align 4
@PNG_PACKSWAP = common dso_local global i32 0, align 4
@PNG_QUANTIZE = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY_ERR = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY_WARN = common dso_local global i32 0, align 4
@PNG_SCALE_16_TO_8 = common dso_local global i32 0, align 4
@PNG_SHIFT = common dso_local global i32 0, align 4
@PNG_STRIP_ALPHA = common dso_local global i32 0, align 4
@PNG_SWAP_ALPHA = common dso_local global i32 0, align 4
@PNG_SWAP_BYTES = common dso_local global i32 0, align 4
@PNG_USER_TRANSFORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_read_transformations(%struct.TYPE_39__* %0, %struct.TYPE_40__* %1) #0 {
  %3 = alloca %struct.TYPE_39__*, align 8
  %4 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %3, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %4, align 8
  %5 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %6, i32 0, i32 10
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %12 = call i32 @png_error(%struct.TYPE_39__* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PNG_FLAG_DETECT_UNINITIALIZED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PNG_FLAG_ROW_INIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %29 = call i32 @png_error(%struct.TYPE_39__* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20, %13
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_39__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
