; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_makeamitbin.c_read_file.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_makeamitbin.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_file(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load i64*, i64** %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @SEEK_END, align 4
  %15 = call i64 @fseek(i32* %13, i32 0, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @ftell(i32* %18)
  %20 = load i64*, i64** %4, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, -1
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @fseek(i32* %25, i32 0, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @fread(i8* %37, i32 1, i64 %39, i32* %40)
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @free(i8* %46)
  store i8* null, i8** %6, align 8
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %17
  br label %52

52:                                               ; preds = %51, %12
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %52, %2
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
