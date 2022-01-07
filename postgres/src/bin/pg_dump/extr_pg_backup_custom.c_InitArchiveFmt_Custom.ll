; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c_InitArchiveFmt_Custom.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c_InitArchiveFmt_Custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i64, i8*, i32, i8*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i64 }

@_ArchiveEntry = common dso_local global i32 0, align 4
@_StartData = common dso_local global i32 0, align 4
@_WriteData = common dso_local global i32 0, align 4
@_EndData = common dso_local global i32 0, align 4
@_WriteByte = common dso_local global i32 0, align 4
@_ReadByte = common dso_local global i32 0, align 4
@_WriteBuf = common dso_local global i32 0, align 4
@_ReadBuf = common dso_local global i32 0, align 4
@_CloseArchive = common dso_local global i32 0, align 4
@_ReopenArchive = common dso_local global i32 0, align 4
@_PrintTocData = common dso_local global i32 0, align 4
@_ReadExtraToc = common dso_local global i32 0, align 4
@_WriteExtraToc = common dso_local global i32 0, align 4
@_PrintExtraToc = common dso_local global i32 0, align 4
@_StartBlobs = common dso_local global i32 0, align 4
@_StartBlob = common dso_local global i32 0, align 4
@_EndBlob = common dso_local global i32 0, align 4
@_EndBlobs = common dso_local global i32 0, align 4
@_PrepParallelRestore = common dso_local global i32 0, align 4
@_Clone = common dso_local global i32 0, align 4
@_DeClone = common dso_local global i32 0, align 4
@_WorkerJobRestoreCustom = common dso_local global i32 0, align 4
@LOBBUFSIZE = common dso_local global i32 0, align 4
@archModeWrite = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PG_BINARY_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not open output file \22%s\22: %m\00", align 1
@stdout = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"could not open output file: %m\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"could not open input file \22%s\22: %m\00", align 1
@stdin = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"could not open input file: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitArchiveFmt_Custom(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load i32, i32* @_ArchiveEntry, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 28
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @_StartData, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 27
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @_WriteData, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 26
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @_EndData, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 25
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @_WriteByte, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 24
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @_ReadByte, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 23
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @_WriteBuf, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 22
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @_ReadBuf, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 21
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @_CloseArchive, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @_ReopenArchive, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @_PrintTocData, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 18
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @_ReadExtraToc, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @_WriteExtraToc, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 16
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @_PrintExtraToc, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 15
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @_StartBlobs, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 14
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @_StartBlob, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @_EndBlob, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @_EndBlobs, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @_PrepParallelRestore, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @_Clone, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @_DeClone, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @_WorkerJobRestoreCustom, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = call i64 @pg_malloc0(i32 24)
  %73 = inttoptr i64 %72 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %3, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = bitcast %struct.TYPE_8__* %74 to i8*
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @LOBBUFSIZE, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @LOBBUFSIZE, align 4
  %82 = call i64 @pg_malloc(i32 %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @archModeWrite, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @strcmp(i64 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @PG_BINARY_W, align 4
  %109 = call i8* @fopen(i64 %107, i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %104
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %116, %104
  br label %133

122:                                              ; preds = %98, %93
  %123 = load i8*, i8** @stdout, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %122
  br label %133

133:                                              ; preds = %132, %121
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @checkSeek(i8* %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %196

140:                                              ; preds = %1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %140
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @strcmp(i64 %148, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %145
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @PG_BINARY_R, align 4
  %156 = call i8* @fopen(i64 %154, i32 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %151
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %163, %151
  br label %180

169:                                              ; preds = %145, %140
  %170 = load i8*, i8** @stdin, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %169
  %178 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %169
  br label %180

180:                                              ; preds = %179, %168
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @checkSeek(i8* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = call i32 @ReadHead(%struct.TYPE_9__* %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %190 = call i32 @ReadToc(%struct.TYPE_9__* %189)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %193 = call i32 @_getFilePos(%struct.TYPE_9__* %191, %struct.TYPE_8__* %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %180, %133
  ret void
}

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @fopen(i64, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @checkSeek(i8*) #1

declare dso_local i32 @ReadHead(%struct.TYPE_9__*) #1

declare dso_local i32 @ReadToc(%struct.TYPE_9__*) #1

declare dso_local i32 @_getFilePos(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
