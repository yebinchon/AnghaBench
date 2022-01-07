; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_fread_utf8.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_fread_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @os_fread_utf8(i32* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [3 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i8**, i8*** %5, align 8
  store i8* null, i8** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @SEEK_END, align 4
  %15 = call i32 @fseek(i32* %13, i64 0, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @os_ftelli64(i32* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %2
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %23, align 1
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i32 @fseek(i32* %24, i64 0, i32 %25)
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @fread(i8* %27, i32 1, i64 3, i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %32 = call i64 @astrcmp_n(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 3, i32 0
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %68

43:                                               ; preds = %20
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = call i8* @bmalloc(i64 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @fseek(i32* %47, i64 %48, i32 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @fread(i8* %51, i32 1, i64 %52, i32* %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @bfree(i8* %58)
  store i64 0, i64* %3, align 8
  br label %68

60:                                               ; preds = %43
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %9, align 8
  %65 = load i8**, i8*** %5, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %2
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %57, %42
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @os_ftelli64(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @astrcmp_n(i8*, i8*, i32) #1

declare dso_local i8* @bmalloc(i64) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
