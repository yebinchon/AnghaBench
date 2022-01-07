; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_hIST.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_hIST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }

@PNG_MAX_PALETTE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"in png_handle_hIST\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before hIST\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid hIST after IDAT\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Missing PLTE before hIST\00", align 1
@PNG_INFO_hIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplicate hIST chunk\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Incorrect hIST chunk length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_hIST(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i32 @png_error(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = call i32 @png_warning(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @png_crc_finish(%struct.TYPE_11__* %37, i32 %38)
  store i32 1, i32* %11, align 4
  br label %117

40:                                               ; preds = %27
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @png_warning(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @png_crc_finish(%struct.TYPE_11__* %50, i32 %51)
  store i32 1, i32* %11, align 4
  br label %117

53:                                               ; preds = %40
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PNG_INFO_hIST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call i32 @png_warning(%struct.TYPE_11__* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @png_crc_finish(%struct.TYPE_11__* %66, i32 %67)
  store i32 1, i32* %11, align 4
  br label %117

69:                                               ; preds = %56, %53
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %24
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81, %72
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = call i32 @png_warning(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @png_crc_finish(%struct.TYPE_11__* %88, i32 %89)
  store i32 1, i32* %11, align 4
  br label %117

91:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %105, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %99 = call i32 @png_crc_read(%struct.TYPE_11__* %97, i32* %98, i32 2)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %101 = call i32 @png_get_uint_16(i32* %100)
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %16, i64 %103
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = call i64 @png_crc_finish(%struct.TYPE_11__* %109, i32 0)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 1, i32* %11, align 4
  br label %117

113:                                              ; preds = %108
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = call i32 @png_set_hIST(%struct.TYPE_11__* %114, %struct.TYPE_12__* %115, i32* %16)
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %112, %85, %63, %47, %34
  %118 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %11, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_debug(i32, i8*) #2

declare dso_local i32 @png_error(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @png_warning(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @png_crc_finish(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @png_get_uint_16(i32*) #2

declare dso_local i32 @png_set_hIST(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
