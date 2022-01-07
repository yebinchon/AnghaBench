; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_utf8.c_utf8_load_text_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_utf8.c_utf8_load_text_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @utf8_load_text_file(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64* null, i64** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i32 @fseek(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @ftell(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 0, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %27, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %26, %14
  %32 = load i64*, i64** %4, align 8
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 1, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to i64*
  store i64* %37, i64** %5, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memset(i64* %38, i8 signext 0, i64 %39)
  %41 = load i64*, i64** %5, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %31
  %44 = load i64*, i64** %5, align 8
  store i64* %44, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %54, %43
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %47, %49
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @fread(i64* %46, i32 1, i64 %50, i32* %51)
  store i64 %52, i64* %9, align 8
  %53 = icmp ult i64 0, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load i64, i64* %9, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 %55
  store i64* %57, i64** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %45

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @fclose(i32* %64)
  br label %66

66:                                               ; preds = %63, %26
  br label %67

67:                                               ; preds = %66, %2
  %68 = load i64*, i64** %5, align 8
  %69 = load i64*, i64** %4, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  %72 = load i64*, i64** %5, align 8
  ret i64* %72
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i64*, i8 signext, i64) #1

declare dso_local i64 @fread(i64*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
