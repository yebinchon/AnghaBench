; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c__oci_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c__oci_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }

@__const._oci_error.errbuf = private unnamed_addr constant [1024 x i8] c"<<Unknown>>\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s (%s:%d)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"00000\00", align 1
@OCI_HTYPE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: %s (%s:%d)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: OCI_SUCCESS_WITH_INFO: %s (%s:%d)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: OCI_NEED_DATA (%s:%d)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: OCI_NO_DATA (%s:%d)\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: OCI_INVALID_HANDLE (%s:%d)\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: OCI_STILL_EXECUTING (%s:%d)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: OCI_CONTINUE (%s:%d)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"42S02\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"01002\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"SQLSTATE[%s]: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_oci_error(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_8__* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [2048 x i8], align 16
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i8**, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = bitcast [1024 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 getelementptr inbounds ([1024 x i8], [1024 x i8]* @__const._oci_error.errbuf, i32 0, i32 0), i64 1024, i1 false)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %21, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i8** %29, i8*** %22, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %21, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %20, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8** %40, i8*** %22, align 8
  br label %44

41:                                               ; preds = %8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %20, align 8
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pefree(i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %57
  %71 = load i8**, i8*** %22, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcpy(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %74, i32 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %75, i8* %76, i32 %77)
  %79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @pestrdup(i8* %79, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %275

86:                                               ; preds = %57
  %87 = load i32, i32* %13, align 4
  switch i32 %87, label %197 [
    i32 129, label %88
    i32 134, label %92
    i32 128, label %112
    i32 132, label %132
    i32 131, label %145
    i32 133, label %158
    i32 130, label %171
    i32 135, label %184
  ]

88:                                               ; preds = %86
  %89 = load i8**, i8*** %22, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcpy(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %197

92:                                               ; preds = %86
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %97 = load i32, i32* @OCI_HTYPE_ERROR, align 4
  %98 = call i32 @OCIErrorGet(i32* %93, i32 1, i32* null, i32* %95, i8* %96, i32 1024, i32 %97)
  %99 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %102 = load i8*, i8** %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %99, i32 2048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %101, i8* %102, i32 %103)
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @pestrdup(i8* %105, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %197

112:                                              ; preds = %86
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %117 = load i32, i32* @OCI_HTYPE_ERROR, align 4
  %118 = call i32 @OCIErrorGet(i32* %113, i32 1, i32* null, i32* %115, i8* %116, i32 1024, i32 %117)
  %119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %120 = load i8*, i8** %12, align 8
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %122 = load i8*, i8** %15, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %119, i32 2048, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %120, i8* %121, i8* %122, i32 %123)
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @pestrdup(i8* %125, i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %197

132:                                              ; preds = %86
  %133 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %133, i32 2048, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %134, i8* %135, i32 %136)
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @pestrdup(i8* %138, i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  br label %197

145:                                              ; preds = %86
  %146 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %146, i32 2048, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %147, i8* %148, i32 %149)
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @pestrdup(i8* %151, i32 %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  br label %197

158:                                              ; preds = %86
  %159 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %160 = load i8*, i8** %12, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = load i32, i32* %16, align 4
  %163 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %159, i32 2048, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %160, i8* %161, i32 %162)
  %164 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @pestrdup(i8* %164, i32 %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %197

171:                                              ; preds = %86
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %172, i32 2048, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %173, i8* %174, i32 %175)
  %177 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i8* @pestrdup(i8* %177, i32 %180)
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  br label %197

184:                                              ; preds = %86
  %185 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %186 = load i8*, i8** %12, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = load i32, i32* %16, align 4
  %189 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @slprintf(i8* %185, i32 2048, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %186, i8* %187, i32 %188)
  %190 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @pestrdup(i8* %190, i32 %193)
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %86, %184, %171, %158, %145, %132, %112, %92, %88
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %225

202:                                              ; preds = %197
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  switch i32 %205, label %220 [
    i32 1013, label %206
    i32 12154, label %208
    i32 22, label %212
    i32 378, label %212
    i32 602, label %212
    i32 603, label %212
    i32 604, label %212
    i32 609, label %212
    i32 1012, label %212
    i32 1033, label %212
    i32 1041, label %212
    i32 1043, label %212
    i32 1089, label %212
    i32 1090, label %212
    i32 1092, label %212
    i32 3113, label %212
    i32 3114, label %212
    i32 3122, label %212
    i32 3135, label %212
    i32 12153, label %212
    i32 27146, label %212
    i32 28511, label %212
  ]

206:                                              ; preds = %202
  %207 = call i32 (...) @zend_bailout()
  br label %224

208:                                              ; preds = %202
  %209 = load i8**, i8*** %22, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strcpy(i8* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %224

212:                                              ; preds = %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202, %202
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  store i32 1, i32* %214, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  store i32 0, i32* %216, align 8
  %217 = load i8**, i8*** %22, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @strcpy(i8* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %224

220:                                              ; preds = %202
  %221 = load i8**, i8*** %22, align 8
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @strcpy(i8* %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %224

224:                                              ; preds = %220, %212, %208, %206
  br label %225

225:                                              ; preds = %224, %197
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %227 = icmp ne %struct.TYPE_8__* %226, null
  br i1 %227, label %228, label %274

228:                                              ; preds = %225
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %228
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @pefree(i8* %238, i32 %241)
  br label %243

243:                                              ; preds = %234, %228
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %247 = bitcast %struct.TYPE_10__* %245 to i8*
  %248 = bitcast %struct.TYPE_10__* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 32, i1 false)
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %261

253:                                              ; preds = %243
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i8* @pestrdup(i8* %256, i32 %259)
  br label %262

261:                                              ; preds = %243
  br label %262

262:                                              ; preds = %261, %253
  %263 = phi i8* [ %260, %253 ], [ null, %261 ]
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  store i8* %263, i8** %266, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @strcpy(i8* %269, i8* %272)
  br label %274

274:                                              ; preds = %262, %225
  br label %275

275:                                              ; preds = %274, %70
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %291, label %280

280:                                              ; preds = %275
  %281 = call i32 (...) @php_pdo_get_exception()
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load i8**, i8*** %22, align 8
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @zend_throw_exception_ex(i32 %281, i32 %284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %286, i8* %289)
  br label %291

291:                                              ; preds = %280, %275
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  ret i32 %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pefree(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @slprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @pestrdup(i8*, i32) #2

declare dso_local i32 @OCIErrorGet(i32*, i32, i32*, i32*, i8*, i32, i32) #2

declare dso_local i32 @zend_bailout(...) #2

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @php_pdo_get_exception(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
