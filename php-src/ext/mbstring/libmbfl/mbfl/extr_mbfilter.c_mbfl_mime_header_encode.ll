; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_mime_header_encode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_mime_header_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i32*, i32 }
%struct.mime_header_encoder_data = type { i32*, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, %struct.TYPE_10__*)* }

@mbfl_encoding_ascii = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @mbfl_mime_header_encode(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mime_header_encoder_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = call i32 @mbfl_string_init(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32* @mbfl_encoding_ascii, i32** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call %struct.mime_header_encoder_data* @mime_header_encoder_new(i32* %28, i32* %29, i32* %30)
  store %struct.mime_header_encoder_data* %31, %struct.mime_header_encoder_data** %16, align 8
  %32 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %33 = icmp eq %struct.mime_header_encoder_data* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %118

35:                                               ; preds = %6
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %14, align 8
  %46 = icmp ult i64 %45, 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i1 [ false, %39 ], [ %46, %44 ]
  br i1 %48, label %49, label %60

49:                                               ; preds = %47
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %55 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  %59 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %59, align 4
  br label %39

60:                                               ; preds = %47
  %61 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %62 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %14, align 8
  %66 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 32, i32* %66, align 4
  %67 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %68 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %74 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %60, %35
  %76 = load i32, i32* %13, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 74
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %84 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %78, %75
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %15, align 8
  br label %92

92:                                               ; preds = %95, %85
  %93 = load i64, i64* %14, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %97 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %96, i32 0, i32 3
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %99, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %15, align 8
  %103 = load i8, i8* %101, align 1
  %104 = zext i8 %103 to i32
  %105 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %106 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %105, i32 0, i32 3
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = call i32 %100(i32 %104, %struct.TYPE_10__* %107)
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %14, align 8
  br label %92

111:                                              ; preds = %92
  %112 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = call %struct.TYPE_9__* @mime_header_encoder_result(%struct.mime_header_encoder_data* %112, %struct.TYPE_9__* %113)
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %9, align 8
  %115 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %16, align 8
  %116 = call i32 @mime_header_encoder_delete(%struct.mime_header_encoder_data* %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %7, align 8
  br label %118

118:                                              ; preds = %111, %34
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %119
}

declare dso_local i32 @mbfl_string_init(%struct.TYPE_9__*) #1

declare dso_local %struct.mime_header_encoder_data* @mime_header_encoder_new(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @mime_header_encoder_result(%struct.mime_header_encoder_data*, %struct.TYPE_9__*) #1

declare dso_local i32 @mime_header_encoder_delete(%struct.mime_header_encoder_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
