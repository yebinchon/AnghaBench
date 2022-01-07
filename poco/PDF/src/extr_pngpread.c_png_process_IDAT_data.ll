; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_process_IDAT_data.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_process_IDAT_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i32, %struct.TYPE_8__, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i32 }

@PNG_FLAG_ZLIB_FINISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Extra compression data\00", align 1
@Z_PARTIAL_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Decompression Error\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Too much data in IDAT chunks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_process_IDAT_data(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PNG_FLAG_ZLIB_FINISHED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = call i32 @png_error(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  br label %30

30:                                               ; preds = %127, %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i32, i32* @Z_PARTIAL_FLUSH, align 4
  %34 = call i32 @inflate(%struct.TYPE_8__* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @Z_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @Z_STREAM_END, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i32 @png_error(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call i32 @png_push_process_row(%struct.TYPE_7__* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @PNG_FLAG_ZLIB_FINISHED, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %128

71:                                               ; preds = %38
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @Z_BUF_ERROR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %128

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = call i32 @png_error(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %30
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %126, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %87
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = call i32 @png_warning(%struct.TYPE_7__* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %95
  %105 = load i32, i32* @PNG_FLAG_ZLIB_FINISHED, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %128

110:                                              ; preds = %87
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = call i32 @png_push_process_row(%struct.TYPE_7__* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  br label %127

126:                                              ; preds = %81
  br label %128

127:                                              ; preds = %110
  br label %30

128:                                              ; preds = %126, %104, %75, %60
  ret void
}

declare dso_local i32 @png_error(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @inflate(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @png_push_process_row(%struct.TYPE_7__*) #1

declare dso_local i32 @png_warning(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
