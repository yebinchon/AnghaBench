; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatLookupFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatLookupFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"FatLookupFile() FileName = %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FatLookupFile(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [261 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 16)
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @FsGetNumPathParts(i8* %19)
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %106, %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %109

25:                                               ; preds = %21
  %26 = getelementptr inbounds [261 x i32], [261 x i32]* %10, i64 0, i64 0
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @FsGetFirstNameFromPath(i32* %26, i8* %27)
  br label %29

29:                                               ; preds = %47, %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 92
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 47
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = phi i1 [ false, %34 ], [ false, %29 ], [ %43, %39 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  br label %29

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32* @FatBufferDirectory(%struct.TYPE_10__* %53, i64 %54, i64* %13, i32 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %4, align 4
  br label %113

63:                                               ; preds = %50
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ISFATX(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds [261 x i32], [261 x i32]* %10, i64 0, i64 0
  %74 = call i32 @FatXSearchDirectoryBufferForFile(%struct.TYPE_10__* %70, i32* %71, i64 %72, i32* %73, %struct.TYPE_11__* %14)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @ENOENT, align 4
  store i32 %77, i32* %4, align 4
  br label %113

78:                                               ; preds = %69
  br label %89

79:                                               ; preds = %63
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds [261 x i32], [261 x i32]* %10, i64 0, i64 0
  %84 = call i32 @FatSearchDirectoryBufferForFile(%struct.TYPE_10__* %80, i32* %81, i64 %82, i32* %83, %struct.TYPE_11__* %14)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOENT, align 4
  store i32 %87, i32* %4, align 4
  br label %113

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 1
  %92 = load i64, i64* %9, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ATTR_DIRECTORY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOTDIR, align 4
  store i32 %101, i32* %4, align 4
  br label %113

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %102, %89
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %21

109:                                              ; preds = %21
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @memcpy(i32 %110, %struct.TYPE_11__* %14, i32 16)
  %112 = load i32, i32* @ESUCCESS, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %100, %86, %76, %61
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @FsGetNumPathParts(i8*) #1

declare dso_local i32 @FsGetFirstNameFromPath(i32*, i8*) #1

declare dso_local i32* @FatBufferDirectory(%struct.TYPE_10__*, i64, i64*, i32) #1

declare dso_local i64 @ISFATX(i32) #1

declare dso_local i32 @FatXSearchDirectoryBufferForFile(%struct.TYPE_10__*, i32*, i64, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @FatSearchDirectoryBufferForFile(%struct.TYPE_10__*, i32*, i64, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
