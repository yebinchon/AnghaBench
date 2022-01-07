; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__allocAH.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__allocAH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i32, i32, i32*, i32, i64, i32, i64, %struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"allocating AH for %s, format %d\00", align 1
@K_VERS_SELF = common dso_local global i32 0, align 4
@PG_VERSION = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@archUnknown = common dso_local global i64 0, align 8
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unrecognized file format \22%d\22\00", align 1
@O_BINARY = common dso_local global i32 0, align 4
@archModeWrite = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i8*, i64, i32, i32, i64, i32)* @_allocAH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @_allocAH(i8* %0, i64 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @pg_log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  %17 = call i64 @pg_malloc0(i32 152)
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %13, align 8
  %19 = load i32, i32* @K_VERS_SELF, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 20
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 19
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 19
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 19
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 19
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @PG_VERSION, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 18
  store i32 %34, i32* %36, align 4
  %37 = call i32 @time(i32* null)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32 4, i32* %43, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %6
  %47 = load i8*, i8** %7, align 8
  %48 = call i32* @pg_strdup(i8* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 7
  store i32* %48, i32** %50, align 8
  br label %54

51:                                               ; preds = %6
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 7
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 16
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 15
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 14
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 13
  store i32* null, i32** %62, align 8
  %63 = call i64 @pg_malloc0(i32 16)
  %64 = inttoptr i64 %63 to %struct.TYPE_11__*
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 12
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 12
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 12
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 12
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 12
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 11
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 10
  %92 = call i32 @memset(i32* %91, i32 0, i32 4)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 9
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @stdout, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @archUnknown, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %54
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %106 = call i64 @_discoverArchiveFormat(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  br label %113

109:                                              ; preds = %54
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* @TRI_DEFAULT, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  switch i64 %119, label %132 [
    i64 131, label %120
    i64 129, label %123
    i64 130, label %126
    i64 128, label %129
  ]

120:                                              ; preds = %113
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = call i32 @InitArchiveFmt_Custom(%struct.TYPE_12__* %121)
  br label %135

123:                                              ; preds = %113
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = call i32 @InitArchiveFmt_Null(%struct.TYPE_12__* %124)
  br label %135

126:                                              ; preds = %113
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %128 = call i32 @InitArchiveFmt_Directory(%struct.TYPE_12__* %127)
  br label %135

129:                                              ; preds = %113
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %131 = call i32 @InitArchiveFmt_Tar(%struct.TYPE_12__* %130)
  br label %135

132:                                              ; preds = %113
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %132, %129, %126, %123, %120
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  ret %struct.TYPE_12__* %136
}

declare dso_local i32 @pg_log_debug(i8*, i8*, i64) #1

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @pg_strdup(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @_discoverArchiveFormat(%struct.TYPE_12__*) #1

declare dso_local i32 @InitArchiveFmt_Custom(%struct.TYPE_12__*) #1

declare dso_local i32 @InitArchiveFmt_Null(%struct.TYPE_12__*) #1

declare dso_local i32 @InitArchiveFmt_Directory(%struct.TYPE_12__*) #1

declare dso_local i32 @InitArchiveFmt_Tar(%struct.TYPE_12__*) #1

declare dso_local i32 @fatal(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
