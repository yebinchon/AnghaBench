; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_bKGD.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_bKGD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_bKGD\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid background palette index\00", align 1
@png_bKGD = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write bKGD chunk out-of-range for bit_depth\00", align 1
@PNG_FLAG_MNG_EMPTY_PLTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_bKGD(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i32 @png_warning(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %96

23:                                               ; preds = %12
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = load i32, i32* @png_bKGD, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %32 = call i32 @png_write_complete_chunk(%struct.TYPE_7__* %29, i32 %30, i32* %31, i32 1)
  br label %96

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %33
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @png_save_uint_16(i32* %39, i32 %42)
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @png_save_uint_16(i32* %45, i32 %48)
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @png_save_uint_16(i32* %51, i32 %54)
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %57, %59
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %62 = load i32, i32* %61, align 16
  %63 = or i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = call i32 @png_warning(%struct.TYPE_7__* %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %96

68:                                               ; preds = %38
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = load i32, i32* @png_bKGD, align 4
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %72 = call i32 @png_write_complete_chunk(%struct.TYPE_7__* %69, i32 %70, i32* %71, i32 6)
  br label %95

73:                                               ; preds = %33
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 1, %79
  %81 = icmp sge i32 %76, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = call i32 @png_warning(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %96

85:                                               ; preds = %73
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @png_save_uint_16(i32* %86, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i32, i32* @png_bKGD, align 4
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %94 = call i32 @png_write_complete_chunk(%struct.TYPE_7__* %91, i32 %92, i32* %93, i32 2)
  br label %95

95:                                               ; preds = %85, %68
  br label %96

96:                                               ; preds = %20, %65, %82, %95, %23
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @png_write_complete_chunk(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @png_save_uint_16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
