; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_transformations.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_transformations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_26__, i32*, i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i32*)*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"in png_do_read_transformations\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"NULL row buffer for row %ld, pass %d\00", align 1
@PNG_16_TO_8 = common dso_local global i32 0, align 4
@PNG_BACKGROUND = common dso_local global i32 0, align 4
@PNG_BACKGROUND_IS_GRAY = common dso_local global i32 0, align 4
@PNG_BGR = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_DITHER = common dso_local global i32 0, align 4
@PNG_EXPAND = common dso_local global i32 0, align 4
@PNG_EXPAND_tRNS = common dso_local global i32 0, align 4
@PNG_FILLER = common dso_local global i32 0, align 4
@PNG_FLAG_FILLER_AFTER = common dso_local global i32 0, align 4
@PNG_FLAG_ROW_INIT = common dso_local global i32 0, align 4
@PNG_FLAG_STRIP_ALPHA = common dso_local global i32 0, align 4
@PNG_GAMMA = common dso_local global i32 0, align 4
@PNG_GRAY_TO_RGB = common dso_local global i32 0, align 4
@PNG_INVERT_ALPHA = common dso_local global i32 0, align 4
@PNG_INVERT_MONO = common dso_local global i32 0, align 4
@PNG_PACK = common dso_local global i32 0, align 4
@PNG_PACKSWAP = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY_ERR = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY_WARN = common dso_local global i32 0, align 4
@PNG_SHIFT = common dso_local global i32 0, align 4
@PNG_SWAP_ALPHA = common dso_local global i32 0, align 4
@PNG_SWAP_BYTES = common dso_local global i32 0, align 4
@PNG_USER_TRANSFORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_read_transformations(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca [50 x i8], align 16
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %4 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 28
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 27
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @png_snprintf2(i8* %10, i32 50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %20 = call i32 @png_error(%struct.TYPE_25__* %18, i8* %19)
  br label %21

21:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_snprintf2(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @png_error(%struct.TYPE_25__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
