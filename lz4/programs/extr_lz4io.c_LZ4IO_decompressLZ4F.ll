; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_decompressLZ4F.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_decompressLZ4F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i64, i64, i32, i32, i32, i32 }

@MAGICNUMBER_SIZE = common dso_local global i64 0, align 8
@LZ4IO_MAGICNUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Header error : %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Decompression error : %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0DDecompressed : %u MB  \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Unfinished stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32*)* @LZ4IO_decompressLZ4F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4IO_decompressLZ4F(%struct.TYPE_7__* %0, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* %3, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* @MAGICNUMBER_SIZE, align 8
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @LZ4IO_MAGICNUMBER, align 4
  %21 = call i32 @LZ4IO_writeLE32(i8* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @LZ4F_decompress_usingDict(i32 %23, i32 %25, i64* %12, i8* %27, i64* %11, i32 %29, i32 %31, i32* null)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @LZ4F_isError(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @LZ4F_getErrorName(i64 %37)
  %39 = call i32 (i32, i8*, ...) @EXM_THROW(i32 62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %4
  br label %41

41:                                               ; preds = %133, %40
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %134

44:                                               ; preds = %41
  store i64 0, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %51, %44
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @fread(i8* %56, i32 1, i64 %57, i32* %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %134

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %132, %63
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %69, %71
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ true, %64 ], [ %72, %68 ]
  br i1 %74, label %75, label %133

75:                                               ; preds = %73
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @LZ4F_decompress_usingDict(i32 %82, i32 %84, i64* %15, i8* %88, i64* %16, i32 %90, i32 %92, i32* null)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @LZ4F_isError(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %75
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @LZ4F_getErrorName(i64 %98)
  %100 = call i32 (i32, i8*, ...) @EXM_THROW(i32 66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %75
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @LZ4IO_fwriteSparse(%struct.TYPE_7__* %113, i32* %114, i32 %116, i64 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %112, %107
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = lshr i64 %124, 20
  %126 = trunc i64 %125 to i32
  %127 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %120, %101
  %129 = load i64, i64* %9, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %133

132:                                              ; preds = %128
  br label %64

133:                                              ; preds = %131, %73
  br label %41

134:                                              ; preds = %62, %41
  %135 = load i32*, i32** %6, align 8
  %136 = call i64 @ferror(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (i32, i8*, ...) @EXM_THROW(i32 67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %134
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @LZ4IO_fwriteSparseEnd(i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i64, i64* %9, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 (i32, i8*, ...) @EXM_THROW(i32 68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %149
  %155 = load i64, i64* %8, align 8
  ret i64 %155
}

declare dso_local i32 @LZ4IO_writeLE32(i8*, i32) #1

declare dso_local i64 @LZ4F_decompress_usingDict(i32, i32, i64*, i8*, i64*, i32, i32, i32*) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i32 @LZ4F_getErrorName(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @LZ4IO_fwriteSparse(%struct.TYPE_7__*, i32*, i32, i64, i32) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @LZ4IO_fwriteSparseEnd(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
