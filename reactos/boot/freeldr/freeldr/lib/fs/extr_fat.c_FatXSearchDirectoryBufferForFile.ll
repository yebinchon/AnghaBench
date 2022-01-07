; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatXSearchDirectoryBufferForFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatXSearchDirectoryBufferForFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [89 x i8] c"FatXSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x EntryCount = %d FileName = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FATX Directory Entry:\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FileNameSize = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Attr = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"StartCluster = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Size = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Time = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Date = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CreateTime = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CreateDate = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"LastAccessTime = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"LastAccessDate = %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* @FatXSearchDirectoryBufferForFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FatXSearchDirectoryBufferForFile(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 44
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @strlen(i32 %25)
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %127, %5
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %132

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = bitcast %struct.TYPE_8__* %15 to i8*
  %34 = bitcast %struct.TYPE_8__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 44, i1 false)
  %35 = call i32 @FatSwapFatXDirEntry(%struct.TYPE_8__* %15)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 255, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %132

41:                                               ; preds = %31
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 229, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %127

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %126

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i64 @_strnicmp(i32 %54, i32 %57, i32 %58)
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %126

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %6, align 4
  br label %134

126:                                              ; preds = %53, %47
  br label %127

127:                                              ; preds = %126, %46
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 1
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %8, align 8
  br label %27

132:                                              ; preds = %40, %27
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %61
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FatSwapFatXDirEntry(%struct.TYPE_8__*) #1

declare dso_local i64 @_strnicmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
