; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_read_to_buf.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_read_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to read from file \22%s\22\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, i32*)* @read_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_to_buf(%struct.file_info* %0, i32* %1) #0 {
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.file_info*, %struct.file_info** %3, align 8
  %9 = getelementptr inbounds %struct.file_info, %struct.file_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @fopen(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.file_info*, %struct.file_info** %3, align 8
  %16 = getelementptr inbounds %struct.file_info, %struct.file_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %38

19:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.file_info*, %struct.file_info** %3, align 8
  %22 = getelementptr inbounds %struct.file_info, %struct.file_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fread(i32* %20, i32 %23, i32 1, i32* %24)
  %26 = load i64, i64* @errno, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.file_info*, %struct.file_info** %3, align 8
  %30 = getelementptr inbounds %struct.file_info, %struct.file_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ERRS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %38

38:                                               ; preds = %35, %14
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @ERRS(i8*, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
