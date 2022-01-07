; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__hdr_info.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__hdr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBI__HDR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FORMAT=32-bit_rle_rgbe\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-Y \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"+X \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__hdr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__hdr_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @STBI__HDR_BUFLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @stbi__hdr_test(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @stbi__rewind(i32* %23)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @stbi__hdr_gettoken(i32* %27, i8* %18)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %41

35:                                               ; preds = %26
  %36 = load i8*, i8** %12, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %13, align 4
  br label %40

40:                                               ; preds = %39, %35
  br label %26

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @stbi__rewind(i32* %45)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @stbi__hdr_gettoken(i32* %48, i8* %18)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @stbi__rewind(i32* %54)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

56:                                               ; preds = %47
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @strtol(i8* %59, i8** %12, i32 10)
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %68, %56
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %12, align 8
  br label %63

71:                                               ; preds = %63
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strncmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @stbi__rewind(i32* %76)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

78:                                               ; preds = %71
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @strtol(i8* %81, i8** null, i32 10)
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 3, i32* %85, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %78, %75, %53, %44, %22
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stbi__hdr_test(i32*) #2

declare dso_local i32 @stbi__rewind(i32*) #2

declare dso_local i8* @stbi__hdr_gettoken(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
