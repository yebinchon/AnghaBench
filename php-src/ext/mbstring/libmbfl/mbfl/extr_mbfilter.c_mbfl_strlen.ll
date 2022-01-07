; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_strlen.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32 (i32, %struct.TYPE_11__*)* }

@MBFL_ENCTYPE_SBCS = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS2BE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS2LE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS4BE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS4LE = common dso_local global i32 0, align 4
@mbfl_encoding_wchar = common dso_local global i32 0, align 4
@filter_count_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbfl_strlen(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  store i64 0, i64* %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MBFL_ENCTYPE_SBCS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %136

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MBFL_ENCTYPE_WCS2BE, align 4
  %30 = load i32, i32* @MBFL_ENCTYPE_WCS2LE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = udiv i64 %37, 2
  store i64 %38, i64* %4, align 8
  br label %135

39:                                               ; preds = %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MBFL_ENCTYPE_WCS4BE, align 4
  %44 = load i32, i32* @MBFL_ENCTYPE_WCS4LE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %51, 4
  store i64 %52, i64* %4, align 8
  br label %134

53:                                               ; preds = %39
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %95

58:                                               ; preds = %53
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  store i64 0, i64* %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %7, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  %91 = load i64, i64* %4, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %4, align 8
  br label %71

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93, %58
  br label %133

95:                                               ; preds = %53
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* @filter_count_output, align 4
  %100 = call %struct.TYPE_11__* @mbfl_convert_filter_new(%struct.TYPE_10__* %98, i32* @mbfl_encoding_wchar, i32 %99, i32 0, i64* %4)
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %11, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = icmp eq %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i64 -1, i64* %2, align 8
  br label %138

104:                                              ; preds = %95
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %5, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %117, %113
  %115 = load i64, i64* %5, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i32
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %126 = call i32 %120(i32 %124, %struct.TYPE_11__* %125)
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %5, align 8
  br label %114

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %104
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_11__* %131)
  br label %133

133:                                              ; preds = %130, %94
  br label %134

134:                                              ; preds = %133, %48
  br label %135

135:                                              ; preds = %134, %34
  br label %136

136:                                              ; preds = %135, %21
  %137 = load i64, i64* %4, align 8
  store i64 %137, i64* %2, align 8
  br label %138

138:                                              ; preds = %136, %103
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local %struct.TYPE_11__* @mbfl_convert_filter_new(%struct.TYPE_10__*, i32*, i32, i32, i64*) #1

declare dso_local i32 @mbfl_convert_filter_delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
