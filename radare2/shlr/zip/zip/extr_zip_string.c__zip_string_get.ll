; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_string.c__zip_string_get.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_string.c__zip_string_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_string = type { i64, i8*, i8*, i64, i64 }
%struct.zip_error = type { i32 }

@_zip_string_get.empty = internal constant [1 x i8] zeroinitializer, align 1
@ZIP_FL_ENC_RAW = common dso_local global i32 0, align 4
@ZIP_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@ZIP_FL_ENC_STRICT = common dso_local global i32 0, align 4
@ZIP_ENCODING_ASCII = common dso_local global i64 0, align 8
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i64 0, align 8
@ZIP_ENCODING_CP437 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_zip_string_get(%struct.zip_string* %0, i64* %1, i32 %2, %struct.zip_error* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zip_string*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_error*, align 8
  store %struct.zip_string* %0, %struct.zip_string** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  %10 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %11 = icmp eq %struct.zip_string* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i64*, i64** %7, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64*, i64** %7, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %15, %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @_zip_string_get.empty, i64 0, i64 0), i8** %5, align 8
  br label %102

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ZIP_FL_ENC_RAW, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %18
  %24 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %25 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZIP_ENCODING_UNKNOWN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %31 = load i64, i64* @ZIP_ENCODING_UNKNOWN, align 8
  %32 = call i32 @_zip_guess_encoding(%struct.zip_string* %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ZIP_FL_ENC_STRICT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %40 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZIP_ENCODING_ASCII, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %46 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZIP_ENCODING_UTF8_KNOWN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44, %38, %33
  %51 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %52 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ZIP_ENCODING_CP437, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %50, %44
  %57 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %58 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %63 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %66 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %69 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %68, i32 0, i32 4
  %70 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %71 = call i8* @_zip_cp437_to_utf8(i8* %64, i64 %67, i64* %69, %struct.zip_error* %70)
  %72 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %73 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = icmp eq i8* %71, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  store i8* null, i8** %5, align 8
  br label %102

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i64*, i64** %7, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %82 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %7, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %87 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %5, align 8
  br label %102

89:                                               ; preds = %50
  br label %90

90:                                               ; preds = %89, %18
  %91 = load i64*, i64** %7, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %95 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %100 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %5, align 8
  br label %102

102:                                              ; preds = %98, %85, %75, %17
  %103 = load i8*, i8** %5, align 8
  ret i8* %103
}

declare dso_local i32 @_zip_guess_encoding(%struct.zip_string*, i64) #1

declare dso_local i8* @_zip_cp437_to_utf8(i8*, i64, i64*, %struct.zip_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
