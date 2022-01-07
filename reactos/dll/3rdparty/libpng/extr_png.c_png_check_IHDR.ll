; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_check_IHDR.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_check_IHDR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Image width is zero in IHDR\00", align 1
@PNG_UINT_31_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid image width in IHDR\00", align 1
@PNG_SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Image width is too large for this architecture\00", align 1
@PNG_USER_WIDTH_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Image width exceeds user limit in IHDR\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Image height is zero in IHDR\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid image height in IHDR\00", align 1
@PNG_USER_HEIGHT_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Image height exceeds user limit in IHDR\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid bit depth in IHDR\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Invalid color type in IHDR\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"Invalid color type/bit depth combination in IHDR\00", align 1
@PNG_INTERLACE_LAST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Unknown interlace method in IHDR\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Unknown compression method in IHDR\00", align 1
@PNG_FILTER_TYPE_BASE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Unknown filter method in IHDR\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Invalid IHDR data\00", align 1
@PNG_FLAG_MNG_FILTER_64 = common dso_local global i32 0, align 4
@PNG_HAVE_PNG_SIGNATURE = common dso_local global i32 0, align 4
@PNG_INTRAPIXEL_DIFFERENCING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_check_IHDR(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = call i32 @png_warning(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %23

23:                                               ; preds = %20, %8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @PNG_UINT_31_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = call i32 @png_warning(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 7
  %33 = and i32 %32, -8
  %34 = load i32, i32* @PNG_SIZE_MAX, align 4
  %35 = sub nsw i32 %34, 48
  %36 = sub nsw i32 %35, 1
  %37 = sdiv i32 %36, 8
  %38 = sub nsw i32 %37, 1
  %39 = call i64 @png_gt(i32 %33, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = call i32 @png_warning(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %44

44:                                               ; preds = %41, %30
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PNG_USER_WIDTH_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = call i32 @png_warning(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = call i32 @png_warning(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @PNG_UINT_31_MAX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = call i32 @png_warning(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @PNG_USER_HEIGHT_MAX, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = call i32 @png_warning(%struct.TYPE_5__* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 4
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 8
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 16
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = call i32 @png_warning(%struct.TYPE_5__* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %89

89:                                               ; preds = %86, %83, %80, %77, %74, %71
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 5
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %13, align 4
  %100 = icmp sgt i32 %99, 6
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %95, %92, %89
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = call i32 @png_warning(%struct.TYPE_5__* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %109, 8
  br i1 %110, label %126, label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119, %115, %111
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 8
  br i1 %125, label %126, label %129

126:                                              ; preds = %123, %108
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %128 = call i32 @png_warning(%struct.TYPE_5__* %127, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %129

129:                                              ; preds = %126, %123, %119
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @PNG_INTERLACE_LAST, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = call i32 @png_warning(%struct.TYPE_5__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = call i32 @png_warning(%struct.TYPE_5__* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %143

143:                                              ; preds = %140, %136
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* @PNG_FILTER_TYPE_BASE, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %149 = call i32 @png_warning(%struct.TYPE_5__* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = load i32, i32* %17, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %155 = call i32 @png_error(%struct.TYPE_5__* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  ret void
}

declare dso_local i32 @png_warning(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @png_gt(i32, i32) #1

declare dso_local i32 @png_error(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
