; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_strtotime.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_strtotime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i8*, i64, i8*, i8*, i8*, i64, %struct.TYPE_14__, i64, i64, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { i32*, i64, i32*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__* }

@TIMELIB_ERR_EMPTY_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Empty string\00", align 1
@TIMELIB_UNSET = common dso_local global i8* null, align 8
@YYMAXFILL = common dso_local global i32 0, align 4
@EOI = common dso_local global i32 0, align 4
@TIMELIB_WARN_INVALID_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"The parsed time was invalid\00", align 1
@TIMELIB_WARN_INVALID_DATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"The parsed date was invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @timelib_strtotime(i8* %0, i64 %1, %struct.TYPE_16__** %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %14, align 8
  %19 = call i32 @memset(%struct.TYPE_17__* %12, i32 0, i32 48)
  %20 = call i8* @timelib_malloc(i32 32)
  %21 = bitcast i8* %20 to %struct.TYPE_16__*
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isspace(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = icmp ult i8* %44, %45
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %38

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i8*, i8** %14, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %14, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ugt i8* %59, %60
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i1 [ false, %53 ], [ %61, %58 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %14, align 8
  br label %53

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %5
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %128

75:                                               ; preds = %68
  %76 = call i8* (...) @timelib_time_ctor()
  %77 = bitcast i8* %76 to %struct.TYPE_15__*
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %78, align 8
  %79 = load i32, i32* @TIMELIB_ERR_EMPTY_STRING, align 4
  %80 = call i32 @add_error(%struct.TYPE_17__* %12, i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %82 = icmp ne %struct.TYPE_16__** %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %86, align 8
  br label %91

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = call i32 @timelib_error_container_dtor(%struct.TYPE_16__* %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i8*, i8** @TIMELIB_UNSET, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 12
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 11
  store i8* %92, i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 13
  store i8* %92, i8** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  store i8* %92, i8** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 5
  store i8* %92, i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 6
  store i8* %92, i8** %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  store i8* %92, i8** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i8* %92, i8** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  store i8* %92, i8** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 9
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 10
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  store %struct.TYPE_15__* %127, %struct.TYPE_15__** %6, align 8
  br label %304

128:                                              ; preds = %68
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %14, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = load i32, i32* @YYMAXFILL, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = trunc i64 %138 to i32
  %140 = call i8* @timelib_malloc(i32 %139)
  %141 = bitcast i8* %140 to %struct.TYPE_17__*
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  store %struct.TYPE_17__* %141, %struct.TYPE_17__** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = load i32, i32* @YYMAXFILL, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @memset(%struct.TYPE_17__* %144, i32 0, i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memcpy(%struct.TYPE_17__* %156, i8* %157, i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = load i8*, i8** %14, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i64 %171
  %173 = load i32, i32* @YYMAXFILL, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  store %struct.TYPE_17__* %175, %struct.TYPE_17__** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  store %struct.TYPE_17__* %178, %struct.TYPE_17__** %179, align 8
  %180 = call i8* (...) @timelib_time_ctor()
  %181 = bitcast i8* %180 to %struct.TYPE_15__*
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store %struct.TYPE_15__* %181, %struct.TYPE_15__** %182, align 8
  %183 = load i8*, i8** @TIMELIB_UNSET, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  store i8* %183, i8** %186, align 8
  %187 = load i8*, i8** @TIMELIB_UNSET, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  %191 = load i8*, i8** @TIMELIB_UNSET, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  store i8* %191, i8** %194, align 8
  %195 = load i8*, i8** @TIMELIB_UNSET, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 6
  store i8* %195, i8** %198, align 8
  %199 = load i8*, i8** @TIMELIB_UNSET, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 5
  store i8* %199, i8** %202, align 8
  %203 = load i8*, i8** @TIMELIB_UNSET, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 4
  store i8* %203, i8** %206, align 8
  %207 = load i8*, i8** @TIMELIB_UNSET, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 13
  store i8* %207, i8** %210, align 8
  %211 = load i8*, i8** @TIMELIB_UNSET, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 12
  store i8* %211, i8** %214, align 8
  %215 = load i8*, i8** @TIMELIB_UNSET, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 11
  store i8* %215, i8** %218, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  store i32* %219, i32** %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 10
  store i64 0, i64* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 9
  store i64 0, i64* %226, align 8
  %227 = load i8*, i8** @TIMELIB_UNSET, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  store i8* %227, i8** %231, align 8
  br label %232

232:                                              ; preds = %235, %128
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @scan(%struct.TYPE_17__* %12, i32 %233)
  store i32 %234, i32* %13, align 4
  br label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* @EOI, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %232, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %263

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 6
  %249 = load i8*, i8** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 5
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 4
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @timelib_valid_time(i8* %249, i8* %253, i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %245
  %261 = load i32, i32* @TIMELIB_WARN_INVALID_TIME, align 4
  %262 = call i32 @add_warning(%struct.TYPE_17__* %12, i32 %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %245, %239
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %287

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @timelib_valid_date(i8* %273, i8* %277, i8* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %269
  %285 = load i32, i32* @TIMELIB_WARN_INVALID_DATE, align 4
  %286 = call i32 @add_warning(%struct.TYPE_17__* %12, i32 %285, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284, %269, %263
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = call i32 @timelib_free(%struct.TYPE_17__* %289)
  %291 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %292 = icmp ne %struct.TYPE_16__** %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %294, align 8
  %296 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %295, %struct.TYPE_16__** %296, align 8
  br label %301

297:                                              ; preds = %287
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %298, align 8
  %300 = call i32 @timelib_error_container_dtor(%struct.TYPE_16__* %299)
  br label %301

301:                                              ; preds = %297, %293
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  store %struct.TYPE_15__* %303, %struct.TYPE_15__** %6, align 8
  br label %304

304:                                              ; preds = %301, %91
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %305
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @timelib_malloc(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @timelib_time_ctor(...) #1

declare dso_local i32 @add_error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @timelib_error_container_dtor(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @scan(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @timelib_valid_time(i8*, i8*, i8*) #1

declare dso_local i32 @add_warning(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @timelib_valid_date(i8*, i8*, i8*) #1

declare dso_local i32 @timelib_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
