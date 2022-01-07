; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__CloseArchive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__CloseArchive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32*, i64, i64, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32, i32, i32*, i64, i32* }
%struct.TYPE_17__ = type { i32, i32, i32*, i32* }

@archModeWrite = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"toc.dat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"restore.sql\00", align 1
@.str.2 = private unnamed_addr constant [161 x i8] c"--\0A-- NOTE:\0A--\0A-- File paths need to be edited. Search for $$PATH$$ and\0A-- replace it with the path to the directory containing\0A-- the extracted data files.\0A--\0A\00", align 1
@_scriptOut = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@WRITE_ERROR_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @_CloseArchive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_CloseArchive(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @archModeWrite, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %132

19:                                               ; preds = %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = call i32* @tarOpen(%struct.TYPE_19__* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext 119)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = call i32 @WriteHead(%struct.TYPE_19__* %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = call i32 @WriteToc(%struct.TYPE_19__* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @tarClose(%struct.TYPE_19__* %29, i32* %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %33 = call i32 @WriteDataChunks(%struct.TYPE_19__* %32, i32* null)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = call i32* @tarOpen(%struct.TYPE_19__* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8 signext 119)
  store i32* %35, i32** %4, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @tarPrintf(%struct.TYPE_19__* %36, i32* %37, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @_scriptOut, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = call %struct.TYPE_18__* (...) @NewRestoreOptions()
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %5, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = call i32 @memcpy(%struct.TYPE_18__* %48, %struct.TYPE_18__* %52, i32 32)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %7, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %6, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = bitcast %struct.TYPE_19__* %72 to i32*
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = call i32 @SetArchiveOptions(i32* %73, i32* null, %struct.TYPE_18__* %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %84 = bitcast %struct.TYPE_19__* %83 to i32*
  %85 = call i32 @RestoreArchive(i32* %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = bitcast %struct.TYPE_19__* %86 to i32*
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = call i32 @SetArchiveOptions(i32* %87, i32* %88, %struct.TYPE_18__* %89)
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @tarClose(%struct.TYPE_19__* %95, i32* %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %113, %19
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 1024
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @fputc(i32 0, i32 %106)
  %108 = load i64, i64* @EOF, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @WRITE_ERROR_EXIT, align 4
  br label %112

112:                                              ; preds = %110, %103
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %100

116:                                              ; preds = %100
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @fsync_fname(i64 %129, i32 0)
  br label %131

131:                                              ; preds = %126, %121, %116
  br label %132

132:                                              ; preds = %131, %1
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  ret void
}

declare dso_local i32* @tarOpen(%struct.TYPE_19__*, i8*, i8 signext) #1

declare dso_local i32 @WriteHead(%struct.TYPE_19__*) #1

declare dso_local i32 @WriteToc(%struct.TYPE_19__*) #1

declare dso_local i32 @tarClose(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @WriteDataChunks(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tarPrintf(%struct.TYPE_19__*, i32*, i8*) #1

declare dso_local %struct.TYPE_18__* @NewRestoreOptions(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @SetArchiveOptions(i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @RestoreArchive(i32*) #1

declare dso_local i64 @fputc(i32, i32) #1

declare dso_local i32 @fsync_fname(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
