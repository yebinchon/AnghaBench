; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/json/extr_json.c_rrdr2json.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/json/extr_json.c_rrdr2json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32*, i32*, i32, i32, %struct.TYPE_8__*, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }
%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@JSON_DATES_JS = common dso_local global i32 0, align 4
@RRDR_OPTION_GOOGLE_JSON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"        {%sc%s:[{%sv%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s}\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c",\0A     {%sid%s:%s%s,%slabel%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s,%spattern%s:%s%s,%stype%s:%snumber%s}\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c",{%sv%s:\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]}\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\0A  ],\0A    %srows%s:\0A [\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\0A  ]\0A}\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c",{%sv%s:%sRESET OR OVERFLOW%s},{%sv%s:%sThe counters have been wrapped.%s}\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c",{%sv%s:null},{%sv%s:null}\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"{\0A %scols%s:\0A [\0A\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"        {%sid%s:%s%s,%slabel%s:%stime%s,%spattern%s:%s%s,%stype%s:%sdatetime%s},\0A\00", align 1
@.str.13 = private unnamed_addr constant [108 x i8] c"        {%sid%s:%s%s,%slabel%s:%s%s,%spattern%s:%s%s,%stype%s:%sstring%s,%sp%s:{%srole%s:%sannotation%s}},\0A\00", align 1
@.str.14 = private unnamed_addr constant [110 x i8] c"        {%sid%s:%s%s,%slabel%s:%s%s,%spattern%s:%s%s,%stype%s:%sstring%s,%sp%s:{%srole%s:%sannotationText%s}}\00", align 1
@RRDR_OPTION_OBJECTSROWS = common dso_local global i32 0, align 4
@JSON_DATES_TIMESTAMP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"      { \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"      [ \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c", \22\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"],\0A    %sdata%s:\0A [\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"{\0A %slabels%s: [\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%stime%s\00", align 1
@RRDR_DIMENSION_HIDDEN = common dso_local global i32 0, align 4
@RRDR_OPTION_NONZERO = common dso_local global i32 0, align 4
@RRDR_DIMENSION_NONZERO = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"no data\00", align 1
@RRDR_OPTION_REVERSED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"localtime_r() failed.\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%stime%s: \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"new \00", align 1
@RRDR_DIMENSION_SELECTED = common dso_local global i32 0, align 4
@RRDR_VALUE_RESET = common dso_local global i32 0, align 4
@RRDR_OPTION_MILLISECONDS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"000\00", align 1
@RRDR_OPTION_PERCENTAGE = common dso_local global i32 0, align 4
@RRDR_OPTION_ABSOLUTE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"%s%s%s: \00", align 1
@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4
@RRDR_OPTION_NULL2ZERO = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdr2json(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x i8], align 1
  %14 = alloca [101 x i8], align 16
  %15 = alloca [101 x i8], align 16
  %16 = alloca [101 x i8], align 16
  %17 = alloca [101 x i8], align 16
  %18 = alloca [101 x i8], align 16
  %19 = alloca [101 x i8], align 16
  %20 = alloca [101 x i8], align 16
  %21 = alloca [201 x i8], align 16
  %22 = alloca [201 x i8], align 16
  %23 = alloca [101 x i8], align 16
  %24 = alloca [101 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.tm, align 8
  %36 = alloca %struct.tm*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @rrdset_check_rdlock(%struct.TYPE_8__* %43)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %45 = bitcast [2 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 2, i1 false)
  %46 = bitcast [2 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %46, i8 0, i64 2, i1 false)
  %47 = bitcast [101 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 101, i1 false)
  %48 = bitcast [101 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 101, i1 false)
  %49 = bitcast [101 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 101, i1 false)
  %50 = bitcast [101 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 101, i1 false)
  %51 = bitcast [101 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 101, i1 false)
  %52 = bitcast [101 x i8]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 101, i1 false)
  %53 = bitcast [101 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %53, i8 0, i64 101, i1 false)
  %54 = bitcast [201 x i8]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %54, i8 0, i64 201, i1 false)
  %55 = bitcast [201 x i8]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 201, i1 false)
  %56 = bitcast [101 x i8]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 101, i1 false)
  %57 = bitcast [101 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 101, i1 false)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %213

60:                                               ; preds = %4
  %61 = load i32, i32* @JSON_DATES_JS, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @RRDR_OPTION_GOOGLE_JSON, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 39, i8* %68, align 1
  br label %72

69:                                               ; preds = %60
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 34, i8* %70, align 1
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 34, i8* %71, align 1
  br label %72

72:                                               ; preds = %69, %66
  store i32 1, i32* %9, align 4
  %73 = getelementptr inbounds [101 x i8], [101 x i8]* %16, i64 0, i64 0
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %79 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %73, i32 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %74, i8* %75, i8* %76, i8* %77, i8* %78)
  %80 = getelementptr inbounds [101 x i8], [101 x i8]* %17, i64 0, i64 0
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %82 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %80, i32 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = getelementptr inbounds [101 x i8], [101 x i8]* %14, i64 0, i64 0
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %85 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %89 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %91 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %83, i32 100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %84, i8* %85, i8* %86, i8* %87, i8* %88, i8* %89, i8* %90)
  %92 = getelementptr inbounds [101 x i8], [101 x i8]* %15, i64 0, i64 0
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %95 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %96 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %98 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %100 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %102 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %92, i32 100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %93, i8* %94, i8* %95, i8* %96, i8* %97, i8* %98, i8* %99, i8* %100, i8* %101)
  %103 = getelementptr inbounds [101 x i8], [101 x i8]* %18, i64 0, i64 0
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %105 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %106 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %103, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %104, i8* %105)
  %107 = getelementptr inbounds [101 x i8], [101 x i8]* %19, i64 0, i64 0
  %108 = call i32 @strcpy(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %109 = getelementptr inbounds [101 x i8], [101 x i8]* %20, i64 0, i64 0
  %110 = call i32 @strcpy(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %111 = getelementptr inbounds [101 x i8], [101 x i8]* %23, i64 0, i64 0
  %112 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %114 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %111, i32 100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %112, i8* %113)
  %115 = getelementptr inbounds [101 x i8], [101 x i8]* %24, i64 0, i64 0
  %116 = call i32 @strcpy(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %117 = getelementptr inbounds [201 x i8], [201 x i8]* %22, i64 0, i64 0
  %118 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %119 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %123 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %126 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %117, i32 200, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i8* %118, i8* %119, i8* %120, i8* %121, i8* %122, i8* %123, i8* %124, i8* %125)
  %127 = getelementptr inbounds [201 x i8], [201 x i8]* %21, i64 0, i64 0
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %129 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %130 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %132 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %127, i32 200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %128, i8* %129, i8* %130, i8* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %135 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %136 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %134, i8* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %140 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %141 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %142 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %145 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %146 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %148 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %149 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %150 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %151 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %154 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %137, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i8* %138, i8* %139, i8* %140, i8* %141, i8* %142, i8* %143, i8* %144, i8* %145, i8* %146, i8* %147, i8* %148, i8* %149, i8* %150, i8* %151, i8* %152, i8* %153)
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %158 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %161 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %163 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %165 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %166 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %167 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %168 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %169 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %170 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %171 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %172 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %173 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %175 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %176 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %177 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %178 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %155, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.13, i64 0, i64 0), i8* %156, i8* %157, i8* %158, i8* %159, i8* %160, i8* %161, i8* %162, i8* %163, i8* %164, i8* %165, i8* %166, i8* %167, i8* %168, i8* %169, i8* %170, i8* %171, i8* %172, i8* %173, i8* %174, i8* %175, i8* %176, i8* %177)
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %181 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %182 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %183 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %184 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %185 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %186 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %187 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %189 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %190 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %191 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %193 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %194 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %195 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %196 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %197 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %198 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %199 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %200 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %201 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %202 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %179, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.14, i64 0, i64 0), i8* %180, i8* %181, i8* %182, i8* %183, i8* %184, i8* %185, i8* %186, i8* %187, i8* %188, i8* %189, i8* %190, i8* %191, i8* %192, i8* %193, i8* %194, i8* %195, i8* %196, i8* %197, i8* %198, i8* %199, i8* %200, i8* %201)
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %72
  %208 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %207, %72
  br label %267

213:                                              ; preds = %4
  %214 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 34, i8* %214, align 1
  %215 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 34, i8* %215, align 1
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @RRDR_OPTION_GOOGLE_JSON, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* @JSON_DATES_JS, align 4
  store i32 %221, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %224

222:                                              ; preds = %213
  %223 = load i32, i32* @JSON_DATES_TIMESTAMP, align 4
  store i32 %223, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = getelementptr inbounds [101 x i8], [101 x i8]* %16, i64 0, i64 0
  %231 = call i32 @strcpy(i8* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %235

232:                                              ; preds = %224
  %233 = getelementptr inbounds [101 x i8], [101 x i8]* %16, i64 0, i64 0
  %234 = call i32 @strcpy(i8* %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %229
  %236 = getelementptr inbounds [101 x i8], [101 x i8]* %14, i64 0, i64 0
  %237 = call i32 @strcpy(i8* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %238 = getelementptr inbounds [101 x i8], [101 x i8]* %15, i64 0, i64 0
  %239 = call i32 @strcpy(i8* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %240 = getelementptr inbounds [101 x i8], [101 x i8]* %18, i64 0, i64 0
  %241 = call i32 @strcpy(i8* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %235
  %247 = getelementptr inbounds [101 x i8], [101 x i8]* %20, i64 0, i64 0
  %248 = call i32 @strcpy(i8* %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %252

249:                                              ; preds = %235
  %250 = getelementptr inbounds [101 x i8], [101 x i8]* %20, i64 0, i64 0
  %251 = call i32 @strcpy(i8* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %246
  %253 = getelementptr inbounds [101 x i8], [101 x i8]* %23, i64 0, i64 0
  %254 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %256 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %253, i32 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %254, i8* %255)
  %257 = getelementptr inbounds [101 x i8], [101 x i8]* %24, i64 0, i64 0
  %258 = call i32 @strcpy(i8* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %259 = load i32*, i32** %6, align 8
  %260 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %261 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %262 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %259, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %260, i8* %261)
  %263 = load i32*, i32** %6, align 8
  %264 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %265 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %266 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* %264, i8* %265)
  br label %267

267:                                              ; preds = %252, %212
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 6
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  store %struct.TYPE_7__* %272, %struct.TYPE_7__** %27, align 8
  br label %273

273:                                              ; preds = %332, %267
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %275 = icmp ne %struct.TYPE_7__* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load i64, i64* %25, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp slt i64 %277, %280
  br label %282

282:                                              ; preds = %276, %273
  %283 = phi i1 [ false, %273 ], [ %281, %276 ]
  br i1 %283, label %284, label %338

284:                                              ; preds = %282
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* %25, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %292 = and i32 %290, %291
  %293 = call i64 @unlikely(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %284
  br label %332

296:                                              ; preds = %284
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %312

301:                                              ; preds = %296
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* %25, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  br label %312

312:                                              ; preds = %301, %296
  %313 = phi i1 [ false, %296 ], [ %311, %301 ]
  %314 = zext i1 %313 to i32
  %315 = call i64 @unlikely(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %332

318:                                              ; preds = %312
  %319 = load i32*, i32** %6, align 8
  %320 = getelementptr inbounds [101 x i8], [101 x i8]* %14, i64 0, i64 0
  %321 = call i32 @buffer_strcat(i32* %319, i8* %320)
  %322 = load i32*, i32** %6, align 8
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @buffer_strcat(i32* %322, i8* %325)
  %327 = load i32*, i32** %6, align 8
  %328 = getelementptr inbounds [101 x i8], [101 x i8]* %15, i64 0, i64 0
  %329 = call i32 @buffer_strcat(i32* %327, i8* %328)
  %330 = load i64, i64* %26, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %26, align 8
  br label %332

332:                                              ; preds = %318, %317, %295
  %333 = load i64, i64* %25, align 8
  %334 = add nsw i64 %333, 1
  store i64 %334, i64* %25, align 8
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %336, align 8
  store %struct.TYPE_7__* %337, %struct.TYPE_7__** %27, align 8
  br label %273

338:                                              ; preds = %282
  %339 = load i64, i64* %26, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %350, label %341

341:                                              ; preds = %338
  %342 = load i32*, i32** %6, align 8
  %343 = getelementptr inbounds [101 x i8], [101 x i8]* %14, i64 0, i64 0
  %344 = call i32 @buffer_strcat(i32* %342, i8* %343)
  %345 = load i32*, i32** %6, align 8
  %346 = call i32 @buffer_strcat(i32* %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %347 = load i32*, i32** %6, align 8
  %348 = getelementptr inbounds [101 x i8], [101 x i8]* %15, i64 0, i64 0
  %349 = call i32 @buffer_strcat(i32* %347, i8* %348)
  br label %350

350:                                              ; preds = %341, %338
  %351 = load i32*, i32** %6, align 8
  %352 = getelementptr inbounds [101 x i8], [101 x i8]* %23, i64 0, i64 0
  %353 = call i32 @buffer_strcat(i32* %351, i8* %352)
  %354 = load i64, i64* %26, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %360, label %356

356:                                              ; preds = %350
  %357 = load i32*, i32** %6, align 8
  %358 = getelementptr inbounds [101 x i8], [101 x i8]* %24, i64 0, i64 0
  %359 = call i32 @buffer_strcat(i32* %357, i8* %358)
  br label %797

360:                                              ; preds = %350
  store i64 0, i64* %28, align 8
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %362 = call i32 @rrdr_rows(%struct.TYPE_6__* %361)
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %29, align 8
  store i64 1, i64* %30, align 8
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* @RRDR_OPTION_REVERSED, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %373, label %368

368:                                              ; preds = %360
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %370 = call i32 @rrdr_rows(%struct.TYPE_6__* %369)
  %371 = sub nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %28, align 8
  store i64 -1, i64* %29, align 8
  store i64 -1, i64* %30, align 8
  br label %373

373:                                              ; preds = %368, %360
  store i32 1, i32* %31, align 4
  %374 = load i64, i64* %28, align 8
  store i64 %374, i64* %26, align 8
  br label %375

375:                                              ; preds = %789, %373
  %376 = load i64, i64* %26, align 8
  %377 = load i64, i64* %29, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %793

379:                                              ; preds = %375
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 2
  %382 = load i32*, i32** %381, align 8
  %383 = load i64, i64* %26, align 8
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = mul nsw i64 %383, %386
  %388 = getelementptr inbounds i32, i32* %382, i64 %387
  store i32* %388, i32** %32, align 8
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 3
  %391 = load i32*, i32** %390, align 8
  %392 = load i64, i64* %26, align 8
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = mul nsw i64 %392, %395
  %397 = getelementptr inbounds i32, i32* %391, i64 %396
  store i32* %397, i32** %33, align 8
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 7
  %400 = load i64*, i64** %399, align 8
  %401 = load i64, i64* %26, align 8
  %402 = getelementptr inbounds i64, i64* %400, i64 %401
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %34, align 8
  %404 = load i32, i32* %10, align 4
  %405 = load i32, i32* @JSON_DATES_JS, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %521

407:                                              ; preds = %379
  %408 = call %struct.tm* @localtime_r(i64* %34, %struct.tm* %35)
  store %struct.tm* %408, %struct.tm** %36, align 8
  %409 = load %struct.tm*, %struct.tm** %36, align 8
  %410 = icmp ne %struct.tm* %409, null
  br i1 %410, label %413, label %411

411:                                              ; preds = %407
  %412 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  br label %789

413:                                              ; preds = %407
  %414 = load i64, i64* %26, align 8
  %415 = load i64, i64* %28, align 8
  %416 = icmp ne i64 %414, %415
  %417 = zext i1 %416 to i32
  %418 = call i64 @likely(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %413
  %421 = load i32*, i32** %6, align 8
  %422 = call i32 @buffer_strcat(i32* %421, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %423

423:                                              ; preds = %420, %413
  %424 = load i32*, i32** %6, align 8
  %425 = getelementptr inbounds [101 x i8], [101 x i8]* %16, i64 0, i64 0
  %426 = call i32 @buffer_strcat(i32* %424, i8* %425)
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %423
  %432 = load i32*, i32** %6, align 8
  %433 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %434 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %435 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %433, i8* %434)
  br label %436

436:                                              ; preds = %431, %423
  %437 = load i32, i32* %11, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load i32*, i32** %6, align 8
  %441 = call i32 @buffer_strcat(i32* %440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  br label %442

442:                                              ; preds = %439, %436
  %443 = load i32*, i32** %6, align 8
  %444 = load %struct.tm*, %struct.tm** %36, align 8
  %445 = getelementptr inbounds %struct.tm, %struct.tm* %444, i32 0, i32 5
  %446 = load i64, i64* %445, align 8
  %447 = add nsw i64 %446, 1900
  %448 = load %struct.tm*, %struct.tm** %36, align 8
  %449 = getelementptr inbounds %struct.tm, %struct.tm* %448, i32 0, i32 4
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.tm*, %struct.tm** %36, align 8
  %452 = getelementptr inbounds %struct.tm, %struct.tm* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.tm*, %struct.tm** %36, align 8
  %455 = getelementptr inbounds %struct.tm, %struct.tm* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.tm*, %struct.tm** %36, align 8
  %458 = getelementptr inbounds %struct.tm, %struct.tm* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.tm*, %struct.tm** %36, align 8
  %461 = getelementptr inbounds %struct.tm, %struct.tm* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @buffer_jsdate(i32* %443, i64 %447, i32 %450, i32 %453, i32 %456, i32 %459, i32 %462)
  %464 = load i32*, i32** %6, align 8
  %465 = getelementptr inbounds [101 x i8], [101 x i8]* %17, i64 0, i64 0
  %466 = call i32 @buffer_strcat(i32* %464, i8* %465)
  %467 = load i32, i32* %9, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %520

469:                                              ; preds = %442
  store i32 0, i32* %37, align 4
  store i64 0, i64* %25, align 8
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 6
  %472 = load %struct.TYPE_8__*, %struct.TYPE_8__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  store %struct.TYPE_7__* %474, %struct.TYPE_7__** %27, align 8
  br label %475

475:                                              ; preds = %506, %469
  %476 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %477 = icmp ne %struct.TYPE_7__* %476, null
  br i1 %477, label %478, label %512

478:                                              ; preds = %475
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = load i64, i64* %25, align 8
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @RRDR_DIMENSION_SELECTED, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  %488 = xor i1 %487, true
  %489 = zext i1 %488 to i32
  %490 = call i64 @unlikely(i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %478
  br label %506

493:                                              ; preds = %478
  %494 = load i32*, i32** %33, align 8
  %495 = load i64, i64* %25, align 8
  %496 = getelementptr inbounds i32, i32* %494, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @RRDR_VALUE_RESET, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %493
  %502 = load i32*, i32** %6, align 8
  %503 = getelementptr inbounds [201 x i8], [201 x i8]* %22, i64 0, i64 0
  %504 = call i32 @buffer_strcat(i32* %502, i8* %503)
  store i32 1, i32* %37, align 4
  br label %512

505:                                              ; preds = %493
  br label %506

506:                                              ; preds = %505, %492
  %507 = load i64, i64* %25, align 8
  %508 = add nsw i64 %507, 1
  store i64 %508, i64* %25, align 8
  %509 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 1
  %511 = load %struct.TYPE_7__*, %struct.TYPE_7__** %510, align 8
  store %struct.TYPE_7__* %511, %struct.TYPE_7__** %27, align 8
  br label %475

512:                                              ; preds = %501, %475
  %513 = load i32, i32* %37, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %519, label %515

515:                                              ; preds = %512
  %516 = load i32*, i32** %6, align 8
  %517 = getelementptr inbounds [201 x i8], [201 x i8]* %21, i64 0, i64 0
  %518 = call i32 @buffer_strcat(i32* %516, i8* %517)
  br label %519

519:                                              ; preds = %515, %512
  br label %520

520:                                              ; preds = %519, %442
  br label %565

521:                                              ; preds = %379
  %522 = load i64, i64* %26, align 8
  %523 = load i64, i64* %28, align 8
  %524 = icmp ne i64 %522, %523
  %525 = zext i1 %524 to i32
  %526 = call i64 @likely(i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %521
  %529 = load i32*, i32** %6, align 8
  %530 = call i32 @buffer_strcat(i32* %529, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %531

531:                                              ; preds = %528, %521
  %532 = load i32*, i32** %6, align 8
  %533 = getelementptr inbounds [101 x i8], [101 x i8]* %16, i64 0, i64 0
  %534 = call i32 @buffer_strcat(i32* %532, i8* %533)
  %535 = load i32, i32* %7, align 4
  %536 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %531
  %540 = load i32*, i32** %6, align 8
  %541 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %542 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %543 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %540, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %541, i8* %542)
  br label %544

544:                                              ; preds = %539, %531
  %545 = load i32*, i32** %6, align 8
  %546 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %547 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %546, i32 0, i32 7
  %548 = load i64*, i64** %547, align 8
  %549 = load i64, i64* %26, align 8
  %550 = getelementptr inbounds i64, i64* %548, i64 %549
  %551 = load i64, i64* %550, align 8
  %552 = trunc i64 %551 to i32
  %553 = call i32 @buffer_rrd_value(i32* %545, i32 %552)
  %554 = load i32, i32* %7, align 4
  %555 = load i32, i32* @RRDR_OPTION_MILLISECONDS, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %544
  %559 = load i32*, i32** %6, align 8
  %560 = call i32 @buffer_strcat(i32* %559, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  br label %561

561:                                              ; preds = %558, %544
  %562 = load i32*, i32** %6, align 8
  %563 = getelementptr inbounds [101 x i8], [101 x i8]* %17, i64 0, i64 0
  %564 = call i32 @buffer_strcat(i32* %562, i8* %563)
  br label %565

565:                                              ; preds = %561, %520
  store i32 0, i32* %38, align 4
  %566 = load i32, i32* %7, align 4
  %567 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %568 = and i32 %566, %567
  %569 = call i64 @unlikely(i32 %568)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %623

571:                                              ; preds = %565
  store i32 0, i32* %31, align 4
  store i64 0, i64* %25, align 8
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 6
  %574 = load %struct.TYPE_8__*, %struct.TYPE_8__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 0
  %576 = load %struct.TYPE_7__*, %struct.TYPE_7__** %575, align 8
  store %struct.TYPE_7__* %576, %struct.TYPE_7__** %27, align 8
  br label %577

577:                                              ; preds = %612, %571
  %578 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %579 = icmp ne %struct.TYPE_7__* %578, null
  br i1 %579, label %580, label %586

580:                                              ; preds = %577
  %581 = load i64, i64* %25, align 8
  %582 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 0
  %584 = load i64, i64* %583, align 8
  %585 = icmp slt i64 %581, %584
  br label %586

586:                                              ; preds = %580, %577
  %587 = phi i1 [ false, %577 ], [ %585, %580 ]
  br i1 %587, label %588, label %618

588:                                              ; preds = %586
  %589 = load i32*, i32** %32, align 8
  %590 = load i64, i64* %25, align 8
  %591 = getelementptr inbounds i32, i32* %589, i64 %590
  %592 = load i32, i32* %591, align 4
  store i32 %592, i32* %39, align 4
  %593 = load i32, i32* %7, align 4
  %594 = load i32, i32* @RRDR_OPTION_ABSOLUTE, align 4
  %595 = and i32 %593, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %600

597:                                              ; preds = %588
  %598 = load i32, i32* %39, align 4
  %599 = icmp slt i32 %598, 0
  br label %600

600:                                              ; preds = %597, %588
  %601 = phi i1 [ false, %588 ], [ %599, %597 ]
  %602 = zext i1 %601 to i32
  %603 = call i64 @likely(i32 %602)
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %600
  %606 = load i32, i32* %39, align 4
  %607 = sub nsw i32 0, %606
  store i32 %607, i32* %39, align 4
  br label %608

608:                                              ; preds = %605, %600
  %609 = load i32, i32* %39, align 4
  %610 = load i32, i32* %31, align 4
  %611 = add nsw i32 %610, %609
  store i32 %611, i32* %31, align 4
  br label %612

612:                                              ; preds = %608
  %613 = load i64, i64* %25, align 8
  %614 = add nsw i64 %613, 1
  store i64 %614, i64* %25, align 8
  %615 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %616 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %615, i32 0, i32 1
  %617 = load %struct.TYPE_7__*, %struct.TYPE_7__** %616, align 8
  store %struct.TYPE_7__* %617, %struct.TYPE_7__** %27, align 8
  br label %577

618:                                              ; preds = %586
  %619 = load i32, i32* %31, align 4
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %618
  store i32 1, i32* %31, align 4
  br label %622

622:                                              ; preds = %621, %618
  store i32 1, i32* %38, align 4
  br label %623

623:                                              ; preds = %622, %565
  store i64 0, i64* %25, align 8
  %624 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %625 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %624, i32 0, i32 6
  %626 = load %struct.TYPE_8__*, %struct.TYPE_8__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i32 0, i32 0
  %628 = load %struct.TYPE_7__*, %struct.TYPE_7__** %627, align 8
  store %struct.TYPE_7__* %628, %struct.TYPE_7__** %27, align 8
  br label %629

629:                                              ; preds = %779, %623
  %630 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %631 = icmp ne %struct.TYPE_7__* %630, null
  br i1 %631, label %632, label %638

632:                                              ; preds = %629
  %633 = load i64, i64* %25, align 8
  %634 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %634, i32 0, i32 0
  %636 = load i64, i64* %635, align 8
  %637 = icmp slt i64 %633, %636
  br label %638

638:                                              ; preds = %632, %629
  %639 = phi i1 [ false, %629 ], [ %637, %632 ]
  br i1 %639, label %640, label %785

640:                                              ; preds = %638
  %641 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %642 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %641, i32 0, i32 1
  %643 = load i32*, i32** %642, align 8
  %644 = load i64, i64* %25, align 8
  %645 = getelementptr inbounds i32, i32* %643, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %648 = and i32 %646, %647
  %649 = call i64 @unlikely(i32 %648)
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %640
  br label %779

652:                                              ; preds = %640
  %653 = load i32, i32* %7, align 4
  %654 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %652
  %658 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %659 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %658, i32 0, i32 1
  %660 = load i32*, i32** %659, align 8
  %661 = load i64, i64* %25, align 8
  %662 = getelementptr inbounds i32, i32* %660, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %665 = and i32 %663, %664
  %666 = icmp ne i32 %665, 0
  %667 = xor i1 %666, true
  br label %668

668:                                              ; preds = %657, %652
  %669 = phi i1 [ false, %652 ], [ %667, %657 ]
  %670 = zext i1 %669 to i32
  %671 = call i64 @unlikely(i32 %670)
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %674

673:                                              ; preds = %668
  br label %779

674:                                              ; preds = %668
  %675 = load i32*, i32** %32, align 8
  %676 = load i64, i64* %25, align 8
  %677 = getelementptr inbounds i32, i32* %675, i64 %676
  %678 = load i32, i32* %677, align 4
  store i32 %678, i32* %40, align 4
  %679 = load i32*, i32** %6, align 8
  %680 = getelementptr inbounds [101 x i8], [101 x i8]* %18, i64 0, i64 0
  %681 = call i32 @buffer_strcat(i32* %679, i8* %680)
  %682 = load i32, i32* %7, align 4
  %683 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %684 = and i32 %682, %683
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %694

686:                                              ; preds = %674
  %687 = load i32*, i32** %6, align 8
  %688 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %689 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %690 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %689, i32 0, i32 0
  %691 = load i8*, i8** %690, align 8
  %692 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %693 = call i32 (i32*, i8*, i8*, i8*, ...) @buffer_sprintf(i32* %687, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8* %688, i8* %691, i8* %692)
  br label %694

694:                                              ; preds = %686, %674
  %695 = load i32*, i32** %33, align 8
  %696 = load i64, i64* %25, align 8
  %697 = getelementptr inbounds i32, i32* %695, i64 %696
  %698 = load i32, i32* %697, align 4
  %699 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %700 = and i32 %698, %699
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %714

702:                                              ; preds = %694
  %703 = load i32, i32* %7, align 4
  %704 = load i32, i32* @RRDR_OPTION_NULL2ZERO, align 4
  %705 = and i32 %703, %704
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %710

707:                                              ; preds = %702
  %708 = load i32*, i32** %6, align 8
  %709 = call i32 @buffer_strcat(i32* %708, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  br label %713

710:                                              ; preds = %702
  %711 = load i32*, i32** %6, align 8
  %712 = call i32 @buffer_strcat(i32* %711, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  br label %713

713:                                              ; preds = %710, %707
  br label %775

714:                                              ; preds = %694
  %715 = load i32, i32* %7, align 4
  %716 = load i32, i32* @RRDR_OPTION_ABSOLUTE, align 4
  %717 = and i32 %715, %716
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %722

719:                                              ; preds = %714
  %720 = load i32, i32* %40, align 4
  %721 = icmp slt i32 %720, 0
  br label %722

722:                                              ; preds = %719, %714
  %723 = phi i1 [ false, %714 ], [ %721, %719 ]
  %724 = zext i1 %723 to i32
  %725 = call i64 @unlikely(i32 %724)
  %726 = icmp ne i64 %725, 0
  br i1 %726, label %727, label %730

727:                                              ; preds = %722
  %728 = load i32, i32* %40, align 4
  %729 = sub nsw i32 0, %728
  store i32 %729, i32* %40, align 4
  br label %730

730:                                              ; preds = %727, %722
  %731 = load i32, i32* %7, align 4
  %732 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %733 = and i32 %731, %732
  %734 = call i64 @unlikely(i32 %733)
  %735 = icmp ne i64 %734, 0
  br i1 %735, label %736, label %771

736:                                              ; preds = %730
  %737 = load i32, i32* %40, align 4
  %738 = mul nsw i32 %737, 100
  %739 = load i32, i32* %31, align 4
  %740 = sdiv i32 %738, %739
  store i32 %740, i32* %40, align 4
  %741 = load i32, i32* %38, align 4
  %742 = call i64 @unlikely(i32 %741)
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %750

744:                                              ; preds = %736
  %745 = load i32, i32* %40, align 4
  %746 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %747 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %746, i32 0, i32 5
  store i32 %745, i32* %747, align 4
  %748 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %749 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %748, i32 0, i32 4
  store i32 %745, i32* %749, align 8
  store i32 0, i32* %38, align 4
  br label %750

750:                                              ; preds = %744, %736
  %751 = load i32, i32* %40, align 4
  %752 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %753 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %752, i32 0, i32 4
  %754 = load i32, i32* %753, align 8
  %755 = icmp slt i32 %751, %754
  br i1 %755, label %756, label %760

756:                                              ; preds = %750
  %757 = load i32, i32* %40, align 4
  %758 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %759 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %758, i32 0, i32 4
  store i32 %757, i32* %759, align 8
  br label %760

760:                                              ; preds = %756, %750
  %761 = load i32, i32* %40, align 4
  %762 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %763 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %762, i32 0, i32 5
  %764 = load i32, i32* %763, align 4
  %765 = icmp sgt i32 %761, %764
  br i1 %765, label %766, label %770

766:                                              ; preds = %760
  %767 = load i32, i32* %40, align 4
  %768 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %769 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %768, i32 0, i32 5
  store i32 %767, i32* %769, align 4
  br label %770

770:                                              ; preds = %766, %760
  br label %771

771:                                              ; preds = %770, %730
  %772 = load i32*, i32** %6, align 8
  %773 = load i32, i32* %40, align 4
  %774 = call i32 @buffer_rrd_value(i32* %772, i32 %773)
  br label %775

775:                                              ; preds = %771, %713
  %776 = load i32*, i32** %6, align 8
  %777 = getelementptr inbounds [101 x i8], [101 x i8]* %19, i64 0, i64 0
  %778 = call i32 @buffer_strcat(i32* %776, i8* %777)
  br label %779

779:                                              ; preds = %775, %673, %651
  %780 = load i64, i64* %25, align 8
  %781 = add nsw i64 %780, 1
  store i64 %781, i64* %25, align 8
  %782 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %783 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %782, i32 0, i32 1
  %784 = load %struct.TYPE_7__*, %struct.TYPE_7__** %783, align 8
  store %struct.TYPE_7__* %784, %struct.TYPE_7__** %27, align 8
  br label %629

785:                                              ; preds = %638
  %786 = load i32*, i32** %6, align 8
  %787 = getelementptr inbounds [101 x i8], [101 x i8]* %20, i64 0, i64 0
  %788 = call i32 @buffer_strcat(i32* %786, i8* %787)
  br label %789

789:                                              ; preds = %785, %411
  %790 = load i64, i64* %30, align 8
  %791 = load i64, i64* %26, align 8
  %792 = add nsw i64 %791, %790
  store i64 %792, i64* %26, align 8
  br label %375

793:                                              ; preds = %375
  %794 = load i32*, i32** %6, align 8
  %795 = getelementptr inbounds [101 x i8], [101 x i8]* %24, i64 0, i64 0
  %796 = call i32 @buffer_strcat(i32* %794, i8* %795)
  br label %797

797:                                              ; preds = %793, %356
  ret void
}

declare dso_local i32 @rrdset_check_rdlock(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @rrdr_rows(%struct.TYPE_6__*) #1

declare dso_local %struct.tm* @localtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @buffer_jsdate(i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @buffer_rrd_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
