; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoSearchDirectoryBufferForFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoSearchDirectoryBufferForFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [93 x i8] c"IsoSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x DirectoryLength = %d FileName = %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SECTORSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Name '.'\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Name '..'\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i8*, %struct.TYPE_4__*)* @IsoSearchDirectoryBufferForFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsoSearchDirectoryBufferForFile(i64 %0, i64 %1, i8* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15, i8* %16)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %19 = call i32 @RtlZeroMemory(i8* %18, i32 128)
  store i64 0, i64* %11, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %10, align 8
  br label %22

22:                                               ; preds = %153, %4
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %156

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %31, %32
  %34 = inttoptr i64 %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @SECTORSIZE, align 4
  %42 = call i64 @ROUND_UP(i64 %40, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %43, %44
  %46 = inttoptr i64 %45 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %10, align 8
  br label %47

47:                                               ; preds = %39, %25
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %5, align 8
  br label %158

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %153

67:                                               ; preds = %58, %53
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %152

81:                                               ; preds = %72, %67
  store i64 0, i64* %12, align 8
  br label %82

82:                                               ; preds = %109, %81
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %83, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 59
  br label %97

97:                                               ; preds = %89, %82
  %98 = phi i1 [ false, %82 ], [ %96, %89 ]
  br i1 %98, label %99, label %112

99:                                               ; preds = %97
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 %107
  store i8 %106, i8* %108, align 1
  br label %109

109:                                              ; preds = %99
  %110 = load i64, i64* %12, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %12, align 8
  br label %82

112:                                              ; preds = %97
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 %113
  store i8 0, i8* %114, align 1
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %120 = call i64 @strlen(i8* %119)
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %122, label %151

122:                                              ; preds = %112
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %125 = call i64 @_stricmp(i8* %123, i8* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %5, align 8
  br label %158

151:                                              ; preds = %122, %112
  br label %152

152:                                              ; preds = %151, %79
  br label %153

153:                                              ; preds = %152, %65
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %155 = call i32 @RtlZeroMemory(i8* %154, i32 128)
  br label %22

156:                                              ; preds = %22
  %157 = load i64, i64* @FALSE, align 8
  store i64 %157, i64* %5, align 8
  br label %158

158:                                              ; preds = %156, %127, %51
  %159 = load i64, i64* %5, align 8
  ret i64 %159
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @RtlZeroMemory(i8*, i32) #1

declare dso_local i64 @ROUND_UP(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
