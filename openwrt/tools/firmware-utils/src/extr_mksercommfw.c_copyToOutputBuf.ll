; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mksercommfw.c_copyToOutputBuf.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mksercommfw.c_copyToOutputBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid pointer provided!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Opening file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error opening file: %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Error getting filesize: %s\0A\00", align 1
@is_header = common dso_local global i64 0, align 8
@header_sz = common dso_local global i32 0, align 4
@footer_sz = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Filesize: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error reading file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"File: read successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*)* @copyToOutputBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyToOutputBuf(%struct.file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.file_info*, %struct.file_info** %3, align 8
  %10 = icmp ne %struct.file_info* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.file_info*, %struct.file_info** %3, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %1
  %17 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %112

18:                                               ; preds = %11
  %19 = load %struct.file_info*, %struct.file_info** %3, align 8
  %20 = getelementptr inbounds %struct.file_info, %struct.file_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.file_info*, %struct.file_info** %3, align 8
  %24 = getelementptr inbounds %struct.file_info, %struct.file_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load %struct.file_info*, %struct.file_info** %3, align 8
  %30 = getelementptr inbounds %struct.file_info, %struct.file_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %2, align 4
  br label %112

33:                                               ; preds = %18
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @rewind(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @SEEK_END, align 4
  %38 = call i32 @fseek(i32* %36, i64 0, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ftell(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @rewind(i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.file_info*, %struct.file_info** %3, align 8
  %47 = getelementptr inbounds %struct.file_info, %struct.file_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fclose(i32* %50)
  store i32 -1, i32* %2, align 4
  br label %112

52:                                               ; preds = %33
  %53 = load i64, i64* @is_header, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @header_sz, align 4
  store i32 %56, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %57 = load i32, i32* @header_sz, align 4
  store i32 %57, i32* %8, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @footer_sz, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.file_info*, %struct.file_info** %3, align 8
  %68 = getelementptr inbounds %struct.file_info, %struct.file_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.file_info*, %struct.file_info** %3, align 8
  %70 = getelementptr inbounds %struct.file_info, %struct.file_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @malloc(i32 %71)
  %73 = load %struct.file_info*, %struct.file_info** %3, align 8
  %74 = getelementptr inbounds %struct.file_info, %struct.file_info* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = icmp ne i64 %72, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %61
  %77 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fclose(i32* %78)
  store i32 -1, i32* %2, align 4
  br label %112

80:                                               ; preds = %61
  %81 = load %struct.file_info*, %struct.file_info** %3, align 8
  %82 = getelementptr inbounds %struct.file_info, %struct.file_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @memset(i64 %86, i32 0, i32 %87)
  %89 = load %struct.file_info*, %struct.file_info** %3, align 8
  %90 = getelementptr inbounds %struct.file_info, %struct.file_info* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @fread(i64 %94, i32 1, i32 %95, i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %80
  %101 = load %struct.file_info*, %struct.file_info** %3, align 8
  %102 = getelementptr inbounds %struct.file_info, %struct.file_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @fclose(i32* %105)
  store i32 -1, i32* %2, align 4
  br label %112

107:                                              ; preds = %80
  %108 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @fclose(i32* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %100, %76, %45, %28, %16
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @fread(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
