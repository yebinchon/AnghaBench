; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw-lib.c_read_to_buf.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw-lib.c_read_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to read from file \22%s\22\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_to_buf(%struct.file_info* %0, i8* %1) #0 {
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.file_info*, %struct.file_info** %3, align 8
  %10 = getelementptr inbounds %struct.file_info, %struct.file_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @fopen(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.file_info*, %struct.file_info** %3, align 8
  %17 = getelementptr inbounds %struct.file_info, %struct.file_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %43

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.file_info*, %struct.file_info** %3, align 8
  %23 = getelementptr inbounds %struct.file_info, %struct.file_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @fread(i8* %21, i32 %24, i32 1, i32* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @ferror(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %20
  %34 = load %struct.file_info*, %struct.file_info** %3, align 8
  %35 = getelementptr inbounds %struct.file_info, %struct.file_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ERRS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %43

43:                                               ; preds = %40, %15
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @ERRS(i8*, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
