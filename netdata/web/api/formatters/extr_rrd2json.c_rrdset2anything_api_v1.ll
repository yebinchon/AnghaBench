; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/extr_rrd2json.c_rrdset2anything_api_v1.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/extr_rrd2json.c_rrdset2anything_api_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Cannot generate output with these parameters on this chart.\00", align 1
@HTTP_RESP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@RRDR_RESULT_OPTION_RELATIVE = common dso_local global i32 0, align 4
@RRDR_RESULT_OPTION_ABSOLUTE = common dso_local global i32 0, align 4
@RRDR_OPTION_JSON_WRAP = common dso_local global i32 0, align 4
@CT_APPLICATION_JSON = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CT_TEXT_PLAIN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@RRDR_OPTION_LABEL_QUOTES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A]\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"<html>\\n<center>\\n<table border=\\\220\\\22 cellpadding=\\\225\\\22 cellspacing=\\\225\\\22>\\n\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"<tr><td>\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"</td><td>\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"</td></tr>\\n\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"</table>\\n</center>\\n</html>\\n\00", align 1
@CT_TEXT_HTML = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [68 x i8] c"<html>\0A<center>\0A<table border=\220\22 cellpadding=\225\22 cellspacing=\225\22>\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"</td></tr>\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"</table>\0A</center>\0A</html>\0A\00", align 1
@CT_APPLICATION_X_JAVASCRIPT = common dso_local global i8* null, align 8
@HTTP_RESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdset2anything_api_v1(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, i32 %3, i64 %4, i64 %5, i64 %6, i32 %7, i64 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %15, align 8
  store i32 %3, i32* %16, align 4
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i64 %8, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %25 = call i32 (...) @now_realtime_sec()
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* %18, align 8
  %31 = load i64, i64* %19, align 8
  %32 = load i32, i32* %20, align 4
  %33 = load i64, i64* %21, align 8
  %34 = load i32, i32* %22, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %36 = icmp ne %struct.TYPE_27__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %11
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %39 = call i32* @buffer_tostring(%struct.TYPE_27__* %38)
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32* [ %39, %37 ], [ null, %40 ]
  %43 = call %struct.TYPE_26__* @rrd2rrdr(%struct.TYPE_25__* %28, i64 %29, i64 %30, i64 %31, i32 %32, i64 %33, i32 %34, i32* %42)
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %24, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %45 = icmp ne %struct.TYPE_26__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %48 = call i32 @buffer_strcat(%struct.TYPE_27__* %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @HTTP_RESP_INTERNAL_SERVER_ERROR, align 4
  store i32 %49, i32* %12, align 4
  br label %496

50:                                               ; preds = %41
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RRDR_RESULT_OPTION_RELATIVE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %59 = call i32 @buffer_no_cacheable(%struct.TYPE_27__* %58)
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RRDR_RESULT_OPTION_ABSOLUTE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %69 = call i32 @buffer_cacheable(%struct.TYPE_27__* %68)
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32*, i32** %23, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %76 = call i64 @rrdr_rows(%struct.TYPE_26__* %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %23, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %74, %71
  %84 = load i32, i32* %16, align 4
  switch i32 %84, label %462 [
    i32 130, label %85
    i32 129, label %117
    i32 131, label %149
    i32 139, label %181
    i32 137, label %215
    i32 138, label %249
    i32 128, label %295
    i32 134, label %329
    i32 135, label %371
    i32 136, label %401
    i32 132, label %431
    i32 133, label %461
  ]

85:                                               ; preds = %83
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %94, %struct.TYPE_27__* %95, i32 %96, i32 %97, i32 1)
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @rrdr2ssv(%struct.TYPE_26__* %99, %struct.TYPE_27__* %100, i32 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %103, %struct.TYPE_27__* %104, i32 %105, i32 %106, i32 1)
  br label %116

108:                                              ; preds = %85
  %109 = load i8*, i8** @CT_TEXT_PLAIN, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %114 = load i32, i32* %22, align 4
  %115 = call i32 @rrdr2ssv(%struct.TYPE_26__* %112, %struct.TYPE_27__* %113, i32 %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %108, %90
  br label %492

117:                                              ; preds = %83
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %117
  %123 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %22, align 4
  %130 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %126, %struct.TYPE_27__* %127, i32 %128, i32 %129, i32 1)
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @rrdr2ssv(%struct.TYPE_26__* %131, %struct.TYPE_27__* %132, i32 %133, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %22, align 4
  %139 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %135, %struct.TYPE_27__* %136, i32 %137, i32 %138, i32 1)
  br label %148

140:                                              ; preds = %117
  %141 = load i8*, i8** @CT_TEXT_PLAIN, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @rrdr2ssv(%struct.TYPE_26__* %144, %struct.TYPE_27__* %145, i32 %146, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %140, %122
  br label %492

149:                                              ; preds = %83
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %22, align 4
  %162 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %158, %struct.TYPE_27__* %159, i32 %160, i32 %161, i32 0)
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %165 = load i32, i32* %22, align 4
  %166 = call i32 @rrdr2ssv(%struct.TYPE_26__* %163, %struct.TYPE_27__* %164, i32 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %22, align 4
  %171 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %167, %struct.TYPE_27__* %168, i32 %169, i32 %170, i32 0)
  br label %180

172:                                              ; preds = %149
  %173 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %178 = load i32, i32* %22, align 4
  %179 = call i32 @rrdr2ssv(%struct.TYPE_26__* %176, %struct.TYPE_27__* %177, i32 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %172, %154
  br label %492

181:                                              ; preds = %83
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %181
  %187 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %190, %struct.TYPE_27__* %191, i32 %192, i32 %193, i32 1)
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %22, align 4
  %199 = call i32 @rrdr2csv(%struct.TYPE_26__* %195, %struct.TYPE_27__* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %22, align 4
  %204 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %200, %struct.TYPE_27__* %201, i32 %202, i32 %203, i32 1)
  br label %214

205:                                              ; preds = %181
  %206 = load i8*, i8** @CT_TEXT_PLAIN, align 8
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %22, align 4
  %213 = call i32 @rrdr2csv(%struct.TYPE_26__* %209, %struct.TYPE_27__* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %214

214:                                              ; preds = %205, %186
  br label %492

215:                                              ; preds = %83
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %224, %struct.TYPE_27__* %225, i32 %226, i32 %227, i32 1)
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %22, align 4
  %233 = call i32 @rrdr2csv(%struct.TYPE_26__* %229, %struct.TYPE_27__* %230, i32 %231, i32 %232, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %22, align 4
  %238 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %234, %struct.TYPE_27__* %235, i32 %236, i32 %237, i32 1)
  br label %248

239:                                              ; preds = %215
  %240 = load i8*, i8** @CT_TEXT_PLAIN, align 8
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %22, align 4
  %247 = call i32 @rrdr2csv(%struct.TYPE_26__* %243, %struct.TYPE_27__* %244, i32 %245, i32 %246, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %248

248:                                              ; preds = %239, %220
  br label %492

249:                                              ; preds = %83
  %250 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %279

257:                                              ; preds = %249
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %22, align 4
  %262 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %258, %struct.TYPE_27__* %259, i32 %260, i32 %261, i32 0)
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %264 = call i32 @buffer_strcat(%struct.TYPE_27__* %263, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %270 = add nsw i32 %268, %269
  %271 = call i32 @rrdr2csv(%struct.TYPE_26__* %265, %struct.TYPE_27__* %266, i32 %267, i32 %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %273 = call i32 @buffer_strcat(%struct.TYPE_27__* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* %22, align 4
  %278 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %274, %struct.TYPE_27__* %275, i32 %276, i32 %277, i32 0)
  br label %294

279:                                              ; preds = %249
  %280 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 0
  store i8* %280, i8** %282, align 8
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %284 = call i32 @buffer_strcat(%struct.TYPE_27__* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %290 = add nsw i32 %288, %289
  %291 = call i32 @rrdr2csv(%struct.TYPE_26__* %285, %struct.TYPE_27__* %286, i32 %287, i32 %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %293 = call i32 @buffer_strcat(%struct.TYPE_27__* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %294

294:                                              ; preds = %279, %257
  br label %492

295:                                              ; preds = %83
  %296 = load i32, i32* %22, align 4
  %297 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %319

300:                                              ; preds = %295
  %301 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 0
  store i8* %301, i8** %303, align 8
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %22, align 4
  %308 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %304, %struct.TYPE_27__* %305, i32 %306, i32 %307, i32 1)
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %310 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %22, align 4
  %313 = call i32 @rrdr2csv(%struct.TYPE_26__* %309, %struct.TYPE_27__* %310, i32 %311, i32 %312, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %22, align 4
  %318 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %314, %struct.TYPE_27__* %315, i32 %316, i32 %317, i32 1)
  br label %328

319:                                              ; preds = %295
  %320 = load i8*, i8** @CT_TEXT_PLAIN, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 0
  store i8* %320, i8** %322, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %22, align 4
  %327 = call i32 @rrdr2csv(%struct.TYPE_26__* %323, %struct.TYPE_27__* %324, i32 %325, i32 %326, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %328

328:                                              ; preds = %319, %300
  br label %492

329:                                              ; preds = %83
  %330 = load i32, i32* %22, align 4
  %331 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %357

334:                                              ; preds = %329
  %335 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 0
  store i8* %335, i8** %337, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %340 = load i32, i32* %16, align 4
  %341 = load i32, i32* %22, align 4
  %342 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %338, %struct.TYPE_27__* %339, i32 %340, i32 %341, i32 1)
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %344 = call i32 @buffer_strcat(%struct.TYPE_27__* %343, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.13, i64 0, i64 0))
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %347 = load i32, i32* %16, align 4
  %348 = load i32, i32* %22, align 4
  %349 = call i32 @rrdr2csv(%struct.TYPE_26__* %345, %struct.TYPE_27__* %346, i32 %347, i32 %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %351 = call i32 @buffer_strcat(%struct.TYPE_27__* %350, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %354 = load i32, i32* %16, align 4
  %355 = load i32, i32* %22, align 4
  %356 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %352, %struct.TYPE_27__* %353, i32 %354, i32 %355, i32 1)
  br label %370

357:                                              ; preds = %329
  %358 = load i8*, i8** @CT_TEXT_HTML, align 8
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 0
  store i8* %358, i8** %360, align 8
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %362 = call i32 @buffer_strcat(%struct.TYPE_27__* %361, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i64 0, i64 0))
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %365 = load i32, i32* %16, align 4
  %366 = load i32, i32* %22, align 4
  %367 = call i32 @rrdr2csv(%struct.TYPE_26__* %363, %struct.TYPE_27__* %364, i32 %365, i32 %366, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %369 = call i32 @buffer_strcat(%struct.TYPE_27__* %368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  br label %370

370:                                              ; preds = %357, %334
  br label %492

371:                                              ; preds = %83
  %372 = load i8*, i8** @CT_APPLICATION_X_JAVASCRIPT, align 8
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %374 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %373, i32 0, i32 0
  store i8* %372, i8** %374, align 8
  %375 = load i32, i32* %22, align 4
  %376 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %371
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %381 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %382 = load i32, i32* %16, align 4
  %383 = load i32, i32* %22, align 4
  %384 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %380, %struct.TYPE_27__* %381, i32 %382, i32 %383, i32 0)
  br label %385

385:                                              ; preds = %379, %371
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %387 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %388 = load i32, i32* %22, align 4
  %389 = call i32 @rrdr2json(%struct.TYPE_26__* %386, %struct.TYPE_27__* %387, i32 %388, i32 1)
  %390 = load i32, i32* %22, align 4
  %391 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %385
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %396 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %397 = load i32, i32* %16, align 4
  %398 = load i32, i32* %22, align 4
  %399 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %395, %struct.TYPE_27__* %396, i32 %397, i32 %398, i32 0)
  br label %400

400:                                              ; preds = %394, %385
  br label %492

401:                                              ; preds = %83
  %402 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %403 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %404 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %403, i32 0, i32 0
  store i8* %402, i8** %404, align 8
  %405 = load i32, i32* %22, align 4
  %406 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %401
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %411 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %412 = load i32, i32* %16, align 4
  %413 = load i32, i32* %22, align 4
  %414 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %410, %struct.TYPE_27__* %411, i32 %412, i32 %413, i32 0)
  br label %415

415:                                              ; preds = %409, %401
  %416 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %417 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %418 = load i32, i32* %22, align 4
  %419 = call i32 @rrdr2json(%struct.TYPE_26__* %416, %struct.TYPE_27__* %417, i32 %418, i32 1)
  %420 = load i32, i32* %22, align 4
  %421 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %415
  %425 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %427 = load i32, i32* %16, align 4
  %428 = load i32, i32* %22, align 4
  %429 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %425, %struct.TYPE_27__* %426, i32 %427, i32 %428, i32 0)
  br label %430

430:                                              ; preds = %424, %415
  br label %492

431:                                              ; preds = %83
  %432 = load i8*, i8** @CT_APPLICATION_X_JAVASCRIPT, align 8
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 0
  store i8* %432, i8** %434, align 8
  %435 = load i32, i32* %22, align 4
  %436 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %431
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %441 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %442 = load i32, i32* %16, align 4
  %443 = load i32, i32* %22, align 4
  %444 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %440, %struct.TYPE_27__* %441, i32 %442, i32 %443, i32 0)
  br label %445

445:                                              ; preds = %439, %431
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %448 = load i32, i32* %22, align 4
  %449 = call i32 @rrdr2json(%struct.TYPE_26__* %446, %struct.TYPE_27__* %447, i32 %448, i32 0)
  %450 = load i32, i32* %22, align 4
  %451 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %445
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %456 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %457 = load i32, i32* %16, align 4
  %458 = load i32, i32* %22, align 4
  %459 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %455, %struct.TYPE_27__* %456, i32 %457, i32 %458, i32 0)
  br label %460

460:                                              ; preds = %454, %445
  br label %492

461:                                              ; preds = %83
  br label %462

462:                                              ; preds = %83, %461
  %463 = load i8*, i8** @CT_APPLICATION_JSON, align 8
  %464 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %465 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %464, i32 0, i32 0
  store i8* %463, i8** %465, align 8
  %466 = load i32, i32* %22, align 4
  %467 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %462
  %471 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %472 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %473 = load i32, i32* %16, align 4
  %474 = load i32, i32* %22, align 4
  %475 = call i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__* %471, %struct.TYPE_27__* %472, i32 %473, i32 %474, i32 0)
  br label %476

476:                                              ; preds = %470, %462
  %477 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %478 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %479 = load i32, i32* %22, align 4
  %480 = call i32 @rrdr2json(%struct.TYPE_26__* %477, %struct.TYPE_27__* %478, i32 %479, i32 0)
  %481 = load i32, i32* %22, align 4
  %482 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %476
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %487 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %488 = load i32, i32* %16, align 4
  %489 = load i32, i32* %22, align 4
  %490 = call i32 @rrdr_json_wrapper_end(%struct.TYPE_26__* %486, %struct.TYPE_27__* %487, i32 %488, i32 %489, i32 0)
  br label %491

491:                                              ; preds = %485, %476
  br label %492

492:                                              ; preds = %491, %460, %430, %400, %370, %328, %294, %248, %214, %180, %148, %116
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %494 = call i32 @rrdr_free(%struct.TYPE_26__* %493)
  %495 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %495, i32* %12, align 4
  br label %496

496:                                              ; preds = %492, %46
  %497 = load i32, i32* %12, align 4
  ret i32 %497
}

declare dso_local i32 @now_realtime_sec(...) #1

declare dso_local %struct.TYPE_26__* @rrd2rrdr(%struct.TYPE_25__*, i64, i64, i64, i32, i64, i32, i32*) #1

declare dso_local i32* @buffer_tostring(%struct.TYPE_27__*) #1

declare dso_local i32 @buffer_strcat(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @buffer_no_cacheable(%struct.TYPE_27__*) #1

declare dso_local i32 @buffer_cacheable(%struct.TYPE_27__*) #1

declare dso_local i64 @rrdr_rows(%struct.TYPE_26__*) #1

declare dso_local i32 @rrdr_json_wrapper_begin(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @rrdr2ssv(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rrdr_json_wrapper_end(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @rrdr2csv(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @rrdr2json(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @rrdr_free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
