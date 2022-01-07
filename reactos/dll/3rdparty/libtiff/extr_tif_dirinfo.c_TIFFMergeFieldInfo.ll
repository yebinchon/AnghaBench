; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c_TIFFMergeFieldInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c_TIFFMergeFieldInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32, i8*, i8*, i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TIFFMergeFieldInfo.module = internal constant [19 x i8] c"TIFFMergeFieldInfo\00", align 16
@TIFFMergeFieldInfo.reason = internal constant [17 x i8] c"for fields array\00", align 16
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate fields array\00", align 1
@tfiatOther = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Setting up field info failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFMergeFieldInfo(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i64 @_TIFFCheckRealloc(%struct.TYPE_15__* %16, %struct.TYPE_13__* %19, i64 %23, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFMergeFieldInfo.reason, i64 0, i64 0))
  %25 = inttoptr i64 %24 to %struct.TYPE_13__*
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = call i64 @_TIFFCheckMalloc(%struct.TYPE_15__* %29, i64 1, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFMergeFieldInfo.reason, i64 0, i64 0))
  %31 = inttoptr i64 %30 to %struct.TYPE_13__*
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %33, align 8
  br label %34

34:                                               ; preds = %28, %15
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TIFFErrorExt(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFMergeFieldInfo.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

44:                                               ; preds = %34
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %49 = load i32, i32* @tfiatOther, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  store i32 %49, i32* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i64 %56, i64* %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i64 %63, i64* %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @_TIFFCheckMalloc(%struct.TYPE_15__* %70, i64 %71, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @TIFFMergeFieldInfo.reason, i64 0, i64 0))
  %73 = inttoptr i64 %72 to %struct.TYPE_14__*
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %44
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @TIFFErrorExt(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFMergeFieldInfo.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

93:                                               ; preds = %44
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %8, align 8
  store i64 0, i64* %10, align 8
  br label %101

101:                                              ; preds = %204, %93
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %207

105:                                              ; preds = %101
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 11
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 7
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @_TIFFSetGetType(i32 %140, i32 %145, i32 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @_TIFFSetGetType(i32 %158, i32 %163, i32 %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = load i64, i64* %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  store i32* null, i32** %201, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 1
  store %struct.TYPE_14__* %203, %struct.TYPE_14__** %8, align 8
  br label %204

204:                                              ; preds = %105
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  br label %101

207:                                              ; preds = %101
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = load i64, i64* %7, align 8
  %217 = call i32 @_TIFFMergeFields(%struct.TYPE_15__* %208, %struct.TYPE_14__* %215, i64 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %207
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @TIFFErrorExt(i32 %222, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @TIFFMergeFieldInfo.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

224:                                              ; preds = %207
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %219, %88, %39
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i64 @_TIFFCheckRealloc(%struct.TYPE_15__*, %struct.TYPE_13__*, i64, i32, i8*) #1

declare dso_local i64 @_TIFFCheckMalloc(%struct.TYPE_15__*, i64, i32, i8*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i8* @_TIFFSetGetType(i32, i32, i32) #1

declare dso_local i32 @_TIFFMergeFields(%struct.TYPE_15__*, %struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
