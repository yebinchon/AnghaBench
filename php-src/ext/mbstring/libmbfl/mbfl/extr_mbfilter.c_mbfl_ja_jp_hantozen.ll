; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_ja_jp_hantozen.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_ja_jp_hantozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i8*, i32*, i32 }
%struct.TYPE_22__ = type { i64 (i32, %struct.TYPE_22__*)*, %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { i32 }

@mbfl_encoding_wchar = common dso_local global i32 0, align 4
@vtbl_tl_jisx0201_jisx0208 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @mbfl_ja_jp_hantozen(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mbfl_memory_device_init(%struct.TYPE_22__* %9, i64 %17, i32 0)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = call i32 @mbfl_string_init(%struct.TYPE_21__* %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call %struct.TYPE_22__* @mbfl_convert_filter_new(i32* @mbfl_encoding_wchar, i32* %33, i32 (i32, i8*)* @mbfl_memory_device_output, i32 (i8*)* null, %struct.TYPE_22__* %9)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %10, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %36 = icmp eq %struct.TYPE_22__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %119

38:                                               ; preds = %3
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %13, align 8
  %40 = call i64 @mbfl_malloc(i32 4)
  %41 = inttoptr i64 %40 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %14, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %43 = icmp eq %struct.TYPE_23__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %119

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64 (i32, %struct.TYPE_22__*)*, i64 (i32, %struct.TYPE_22__*)** %50, align 8
  %52 = bitcast i64 (i32, %struct.TYPE_22__*)* %51 to i32 (i32, i8*)*
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32 (i8*)*
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %58 = call %struct.TYPE_22__* @mbfl_convert_filter_new2(i32* @vtbl_tl_jisx0201_jisx0208, i32 (i32, i8*)* %52, i32 (i8*)* %56, %struct.TYPE_22__* %57)
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %12, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %60 = icmp eq %struct.TYPE_22__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %63 = call i32 @mbfl_free(%struct.TYPE_23__* %62)
  br label %119

64:                                               ; preds = %45
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %67, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %13, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64 (i32, %struct.TYPE_22__*)*, i64 (i32, %struct.TYPE_22__*)** %73, align 8
  %75 = bitcast i64 (i32, %struct.TYPE_22__*)* %74 to i32 (i32, i8*)*
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32 (i8*)*
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %81 = call %struct.TYPE_22__* @mbfl_convert_filter_new(i32* %71, i32* @mbfl_encoding_wchar, i32 (i32, i8*)* %75, i32 (i8*)* %79, %struct.TYPE_22__* %80)
  store %struct.TYPE_22__* %81, %struct.TYPE_22__** %11, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = icmp eq %struct.TYPE_22__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %119

85:                                               ; preds = %64
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %8, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %114

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i64, i64* %7, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64 (i32, %struct.TYPE_22__*)*, i64 (i32, %struct.TYPE_22__*)** %100, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i32
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %107 = call i64 %101(i32 %105, %struct.TYPE_22__* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %113

110:                                              ; preds = %98
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %7, align 8
  br label %95

113:                                              ; preds = %109, %95
  br label %114

114:                                              ; preds = %113, %85
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %116 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_22__* %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = call %struct.TYPE_21__* @mbfl_memory_device_result(%struct.TYPE_22__* %9, %struct.TYPE_21__* %117)
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %5, align 8
  br label %119

119:                                              ; preds = %114, %84, %61, %44, %37
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %121 = icmp ne %struct.TYPE_22__* %120, null
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = icmp ne %struct.TYPE_23__* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = call i32 @mbfl_free(%struct.TYPE_23__* %130)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_22__* %133)
  br label %135

135:                                              ; preds = %132, %119
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %137 = icmp ne %struct.TYPE_22__* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %140 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_22__* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %143 = icmp ne %struct.TYPE_22__* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %146 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_22__* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %148
}

declare dso_local i32 @mbfl_memory_device_init(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @mbfl_string_init(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @mbfl_convert_filter_new(i32*, i32*, i32 (i32, i8*)*, i32 (i8*)*, %struct.TYPE_22__*) #1

declare dso_local i32 @mbfl_memory_device_output(i32, i8*) #1

declare dso_local i64 @mbfl_malloc(i32) #1

declare dso_local %struct.TYPE_22__* @mbfl_convert_filter_new2(i32*, i32 (i32, i8*)*, i32 (i8*)*, %struct.TYPE_22__*) #1

declare dso_local i32 @mbfl_free(%struct.TYPE_23__*) #1

declare dso_local i32 @mbfl_convert_filter_flush(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @mbfl_memory_device_result(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @mbfl_convert_filter_delete(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
