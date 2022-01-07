; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_gAMA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_gAMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_gAMA\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_gAMA(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @png_chunk_error(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %24 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @png_crc_finish(%struct.TYPE_9__* %29, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 @png_chunk_benign_error(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %63

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @png_crc_finish(%struct.TYPE_9__* %39, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = call i32 @png_chunk_benign_error(%struct.TYPE_9__* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %63

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %47 = call i32 @png_crc_read(%struct.TYPE_9__* %45, i32* %46, i32 4)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = call i64 @png_crc_finish(%struct.TYPE_9__* %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %63

52:                                               ; preds = %44
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %54 = call i32 @png_get_fixed_point(i32* null, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @png_colorspace_set_gamma(%struct.TYPE_9__* %55, i32* %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @png_colorspace_sync(%struct.TYPE_9__* %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %51, %38, %28
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @png_get_fixed_point(i32*, i32*) #1

declare dso_local i32 @png_colorspace_set_gamma(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @png_colorspace_sync(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
