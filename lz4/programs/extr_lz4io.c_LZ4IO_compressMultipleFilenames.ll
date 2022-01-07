; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_compressMultipleFilenames.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_compressMultipleFilenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNSPACE = common dso_local global i64 0, align 8
@stdoutmark = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4IO_compressMultipleFilenames(i32* %0, i8** %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* @FNSPACE, align 8
  %20 = call i64 @malloc(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %14, align 8
  %22 = load i64, i64* @FNSPACE, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %16, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %6, align 4
  br label %118

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @LZ4IO_createCResources(i32* %30)
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %109, %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %112

36:                                               ; preds = %32
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %18, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** @stdoutmark, align 8
  %45 = call i32 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %36
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @stdoutmark, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @LZ4IO_compressFilename_extRess(i32* %48, i32 %49, i8* %54, i8* %55, i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  br label %109

62:                                               ; preds = %36
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 1
  %68 = icmp ule i64 %63, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i64, i64* %18, align 8
  %73 = add i64 %72, 20
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @malloc(i64 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @LZ4IO_freeCResources(i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %6, align 4
  br label %118

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i8*, i8** %14, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcpy(i8* %85, i8* %90)
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @strcat(i8* %92, i8* %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i8**, i8*** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @LZ4IO_compressFilename_extRess(i32* %95, i32 %96, i8* %101, i8* %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %84, %47
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %32

112:                                              ; preds = %32
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @LZ4IO_freeCResources(i32 %113)
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %112, %79, %27
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LZ4IO_createCResources(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @LZ4IO_compressFilename_extRess(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LZ4IO_freeCResources(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
