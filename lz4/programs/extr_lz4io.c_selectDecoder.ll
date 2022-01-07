; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_selectDecoder.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_selectDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@MAGICNUMBER_SIZE = common dso_local global i32 0, align 4
@selectDecoder.nbFrames = internal global i32 0, align 4
@g_magicRead = common dso_local global i32 0, align 4
@ENDOFSTREAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Unrecognized header : Magic Number unreadable\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Detected : Legacy format \0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Skipping detected skippable area \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Stream error : skippable size unreadable\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Stream error : cannot skip skippable area\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Unrecognized header : file cannot be decoded\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Stream followed by undecodable data \00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"at position %i \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EXTENDED_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i32*, i32*)* @selectDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @selectDecoder(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* @MAGICNUMBER_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @selectDecoder.nbFrames, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* @selectDecoder.nbFrames, align 4
  %25 = load i32, i32* @g_magicRead, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @g_magicRead, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* @g_magicRead, align 4
  br label %47

29:                                               ; preds = %4
  %30 = load i32, i32* @MAGICNUMBER_SIZE, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @fread(i8* %22, i32 1, i32 %30, i32* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  store i32 0, i32* @selectDecoder.nbFrames, align 4
  %36 = load i64, i64* @ENDOFSTREAM, align 8
  store i64 %36, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %124

37:                                               ; preds = %29
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* @MAGICNUMBER_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @EXM_THROW(i32 40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = call i8* @LZ4IO_readLE32(i8* %22)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %27
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @LZ4IO_isSkippableMagicNumber(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 128, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %86 [
    i32 129, label %54
    i32 130, label %60
    i32 128, label %66
  ]

54:                                               ; preds = %52
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @LZ4IO_decompressLZ4F(%struct.TYPE_6__* %55, i32 %56, i32* %57, i32* %58)
  store i64 %59, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %124

60:                                               ; preds = %52
  %61 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @LZ4IO_decodeLegacyStream(%struct.TYPE_6__* %62, i32* %63, i32* %64)
  store i64 %65, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %124

66:                                               ; preds = %52
  %67 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @fread(i8* %22, i32 1, i32 4, i32* %68)
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @EXM_THROW(i32 42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  %75 = call i8* @LZ4IO_readLE32(i8* %22)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %16, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @SEEK_CUR, align 4
  %80 = call i32 @fseek_u32(i32* %77, i32 %78, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 @EXM_THROW(i32 43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %74
  store i64 0, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %124

86:                                               ; preds = %52
  %87 = load i32, i32* @selectDecoder.nbFrames, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  store i32 0, i32* @selectDecoder.nbFrames, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i64 @LZ4IO_passThrough(%struct.TYPE_6__* %105, i32* %106, i32* %107, i8* %22)
  store i64 %108, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %124

109:                                              ; preds = %99, %94, %89
  %110 = call i32 @EXM_THROW(i32 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %86
  %112 = load i32*, i32** %8, align 8
  %113 = call i64 @ftell(i32* %112)
  store i64 %113, i64* %18, align 8
  %114 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i64, i64* %18, align 8
  %116 = icmp ne i64 %115, -1
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i64, i64* %18, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %111
  %122 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i64, i64* @ENDOFSTREAM, align 8
  store i64 %123, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %121, %104, %85, %60, %54, %35
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i64, i64* %5, align 8
  ret i64 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @EXM_THROW(i32, i8*) #2

declare dso_local i8* @LZ4IO_readLE32(i8*) #2

declare dso_local i64 @LZ4IO_isSkippableMagicNumber(i32) #2

declare dso_local i64 @LZ4IO_decompressLZ4F(%struct.TYPE_6__*, i32, i32*, i32*) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #2

declare dso_local i64 @LZ4IO_decodeLegacyStream(%struct.TYPE_6__*, i32*, i32*) #2

declare dso_local i32 @fseek_u32(i32*, i32, i32) #2

declare dso_local i64 @LZ4IO_passThrough(%struct.TYPE_6__*, i32*, i32*, i8*) #2

declare dso_local i64 @ftell(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
