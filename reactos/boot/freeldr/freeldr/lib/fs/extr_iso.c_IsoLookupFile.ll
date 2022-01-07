; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoLookupFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoLookupFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }

@SECTORSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"IsoLookupFile() FileName = %s\0A\00", align 1
@SeekAbsolute = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@TAG_ISO_BUFFER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, %struct.TYPE_15__*)* @IsoLookupFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsoLookupFile(i8* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [261 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 4
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %22 = load i32, i32* @SECTORSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %10, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %29, i32 8)
  %31 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %17, i32 8)
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @SECTORSIZE, align 4
  %34 = mul nsw i32 16, %33
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SeekAbsolute, align 4
  %38 = call i64 @ArcSeek(i32 %36, %struct.TYPE_16__* %18, i32 %37)
  store i64 %38, i64* %20, align 8
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* @ESUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i64, i64* %20, align 8
  store i64 %43, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %142

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = load i32, i32* @SECTORSIZE, align 4
  %48 = call i64 @ArcRead(i32 %45, %struct.TYPE_14__* %46, i32 %47, i32* %19)
  store i64 %48, i64* %20, align 8
  %49 = load i64, i64* %20, align 8
  %50 = load i64, i64* @ESUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %44
  %57 = load i64, i64* @EIO, align 8
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %142

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @FsGetNumPathParts(i8* %67)
  store i32 %68, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %135, %58
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %138

73:                                               ; preds = %69
  %74 = getelementptr inbounds [261 x i32], [261 x i32]* %13, i64 0, i64 0
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @FsGetFirstNameFromPath(i32* %74, i8* %75)
  br label %77

77:                                               ; preds = %95, %73
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 92
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 47
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %87, %82, %77
  %93 = phi i1 [ false, %82 ], [ false, %77 ], [ %91, %87 ]
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %5, align 8
  br label %77

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i64 @IsoBufferDirectory(i32 %101, i32 %102, i32 %103, i32* %14)
  store i64 %104, i64* %20, align 8
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* @ESUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i64, i64* %20, align 8
  store i64 %109, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %142

110:                                              ; preds = %98
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %16, align 4
  %113 = getelementptr inbounds [261 x i32], [261 x i32]* %13, i64 0, i64 0
  %114 = call i32 @IsoSearchDirectoryBufferForFile(i32 %111, i32 %112, i32* %113, %struct.TYPE_15__* %17)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @TAG_ISO_BUFFER, align 4
  %119 = call i32 @FrLdrTempFree(i32 %117, i32 %118)
  %120 = load i64, i64* @ENOENT, align 8
  store i64 %120, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %142

121:                                              ; preds = %110
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @TAG_ISO_BUFFER, align 4
  %124 = call i32 @FrLdrTempFree(i32 %122, i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %15, align 4
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %69

138:                                              ; preds = %69
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %140 = call i32 @RtlCopyMemory(%struct.TYPE_15__* %139, %struct.TYPE_15__* %17, i32 8)
  %141 = load i64, i64* @ESUCCESS, align 8
  store i64 %141, i64* %4, align 8
  store i32 1, i32* %21, align 4
  br label %142

142:                                              ; preds = %138, %116, %108, %56, %42
  %143 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i64, i64* %4, align 8
  ret i64 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i8*) #2

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @ArcSeek(i32, %struct.TYPE_16__*, i32) #2

declare dso_local i64 @ArcRead(i32, %struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @FsGetNumPathParts(i8*) #2

declare dso_local i32 @FsGetFirstNameFromPath(i32*, i8*) #2

declare dso_local i64 @IsoBufferDirectory(i32, i32, i32, i32*) #2

declare dso_local i32 @IsoSearchDirectoryBufferForFile(i32, i32, i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @FrLdrTempFree(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
