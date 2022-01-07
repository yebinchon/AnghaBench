; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_openDstFile.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_openDstFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@stdoutmark = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Using stdout for output\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"Sparse File Support is automatically disabled on stdout ; try --sparse \0A\00", align 1
@nulmark = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@g_displayLevel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s already exists; not overwritten  \0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s already exists; do you wish to overwrite (y/N) ? \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"    not overwritten  \0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*)* @LZ4IO_openDstFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LZ4IO_openDstFile(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @stdoutmark, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** @stdout, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** @stdout, align 8
  %20 = call i32 @SET_BINARY_MODE(i32* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %16
  br label %89

30:                                               ; preds = %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %78, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @nulmark, align 4
  %38 = call i64 @strcmp(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = call i32* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i32, i32* @g_displayLevel, align 4
  %49 = icmp sle i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  store i32* null, i32** %3, align 8
  br label %102

53:                                               ; preds = %45
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  %56 = call i32 (...) @getchar()
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 89
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 121
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %102

64:                                               ; preds = %59, %53
  br label %65

65:                                               ; preds = %74, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @EOF, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 10
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i1 [ false, %65 ], [ %71, %69 ]
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = call i32 (...) @getchar()
  store i32 %75, i32* %7, align 4
  br label %65

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %40
  br label %78

78:                                               ; preds = %77, %35, %30
  %79 = load i8*, i8** %5, align 8
  %80 = call i32* @fopen(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %80, i32** %6, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @SET_SPARSE_FILE_MODE(i32* %98)
  br label %100

100:                                              ; preds = %97, %92, %89
  %101 = load i32*, i32** %6, align 8
  store i32* %101, i32** %3, align 8
  br label %102

102:                                              ; preds = %100, %62, %50
  %103 = load i32*, i32** %3, align 8
  ret i32* %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @SET_BINARY_MODE(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @SET_SPARSE_FILE_MODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
