; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_string.c__zip_string_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_string.c__zip_string_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_string = type { i8*, i32, i32, i64, i32* }
%struct.zip_error = type { i32 }

@ZIP_FL_ENCODING_ALL = common dso_local global i32 0, align 4
@ZIP_ENCODING_UNKNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_CP437 = common dso_local global i32 0, align 4
@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_ENCODING_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_string* @_zip_string_new(i8* %0, i32 %1, i32 %2, %struct.zip_error* %3) #0 {
  %5 = alloca %struct.zip_string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_error*, align 8
  %10 = alloca %struct.zip_string*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.zip_string* null, %struct.zip_string** %5, align 8
  br label %89

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ZIP_FL_ENCODING_ALL, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %21
    i32 130, label %23
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @ZIP_ENCODING_UNKNOWN, align 4
  store i32 %20, i32* %11, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  store i32 %22, i32* %11, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @ZIP_ENCODING_CP437, align 4
  store i32 %24, i32* %11, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %27 = load i32, i32* @ZIP_ER_INVAL, align 4
  %28 = call i32 @_zip_error_set(%struct.zip_error* %26, i32 %27, i32 0)
  store %struct.zip_string* null, %struct.zip_string** %5, align 8
  br label %89

29:                                               ; preds = %23, %21, %19
  %30 = call i64 @malloc(i32 32)
  %31 = inttoptr i64 %30 to %struct.zip_string*
  store %struct.zip_string* %31, %struct.zip_string** %10, align 8
  %32 = icmp eq %struct.zip_string* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %35 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %36 = call i32 @_zip_error_set(%struct.zip_error* %34, i32 %35, i32 0)
  store %struct.zip_string* null, %struct.zip_string** %5, align 8
  br label %89

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %43 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = icmp eq i8* %41, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %47 = call i32 @free(%struct.zip_string* %46)
  store %struct.zip_string* null, %struct.zip_string** %5, align 8
  br label %89

48:                                               ; preds = %37
  %49 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %50 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i8* %51, i8* %52, i32 %53)
  %55 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %56 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %63 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ZIP_ENCODING_UNKNOWN, align 4
  %65 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %66 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %68 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %70 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ZIP_ENCODING_UNKNOWN, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %48
  %75 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @_zip_guess_encoding(%struct.zip_string* %75, i32 %76)
  %78 = load i64, i64* @ZIP_ENCODING_ERROR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  %82 = call i32 @_zip_string_free(%struct.zip_string* %81)
  %83 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %84 = load i32, i32* @ZIP_ER_INVAL, align 4
  %85 = call i32 @_zip_error_set(%struct.zip_error* %83, i32 %84, i32 0)
  store %struct.zip_string* null, %struct.zip_string** %5, align 8
  br label %89

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %48
  %88 = load %struct.zip_string*, %struct.zip_string** %10, align 8
  store %struct.zip_string* %88, %struct.zip_string** %5, align 8
  br label %89

89:                                               ; preds = %87, %80, %45, %33, %25, %14
  %90 = load %struct.zip_string*, %struct.zip_string** %5, align 8
  ret %struct.zip_string* %90
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.zip_string*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @_zip_guess_encoding(%struct.zip_string*, i32) #1

declare dso_local i32 @_zip_string_free(%struct.zip_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
