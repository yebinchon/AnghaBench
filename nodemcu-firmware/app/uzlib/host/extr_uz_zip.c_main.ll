; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/host/extr_uz_zip.c_main.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/host/extr_uz_zip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Compressing in=%s out=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@UZLIB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %103

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  store i32 -1, i32* %10, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @SEEK_END, align 4
  %34 = call i64 @fseek(i32* %32, i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @ftell(i32* %37)
  store i64 %38, i64* %11, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i64 @fseek(i32* %41, i32 0, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %36, %31, %24
  store i32 1, i32* %3, align 4
  br label %103

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = call i32* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %48, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @uz_malloc(i64 %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %13, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @fread(i32* %56, i32 1, i64 %57, i32* %58)
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %50, %46
  store i32 1, i32* %3, align 4
  br label %103

63:                                               ; preds = %55
  %64 = load i32*, i32** %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @uzlib_compress(i32** %14, i64* %12, i32* %64, i64 %65)
  %67 = load i32, i32* @UZLIB_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i64, i64* %12, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i64 @fwrite(i32* %71, i64 %72, i32 1, i32* %73)
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @UZLIB_OK, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %69, %63
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @uz_free(i32* %79)
  %81 = load i32*, i32** %14, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @uz_free(i32* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @UZLIB_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @unlink(i8* %95)
  br label %97

97:                                               ; preds = %94, %86
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @UZLIB_OK, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %62, %45, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @uz_malloc(i64) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @uzlib_compress(i32**, i64*, i32*, i64) #1

declare dso_local i64 @fwrite(i32*, i64, i32, i32*) #1

declare dso_local i32 @uz_free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
