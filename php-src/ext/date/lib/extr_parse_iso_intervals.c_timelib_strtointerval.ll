; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_iso_intervals.c_timelib_strtointerval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_iso_intervals.c_timelib_strtointerval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32*, i64, i32*, i64 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_19__*, i64, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, i64, %struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }

@.str = private unnamed_addr constant [13 x i8] c"Empty string\00", align 1
@YYMAXFILL = common dso_local global i32 0, align 4
@TIMELIB_UNSET = common dso_local global i8* null, align 8
@TIMELIB_ZONETYPE_OFFSET = common dso_local global i8* null, align 8
@EOI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_strtointerval(i8* %0, i64 %1, %struct.TYPE_18__** %2, %struct.TYPE_18__** %3, %struct.TYPE_19__** %4, i32* %5, %struct.TYPE_20__** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca %struct.TYPE_18__**, align 8
  %12 = alloca %struct.TYPE_19__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_20__**, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__** %3, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_19__** %4, %struct.TYPE_19__*** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_20__** %6, %struct.TYPE_20__*** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8* %21, i8** %17, align 8
  %22 = call i32 @memset(%struct.TYPE_21__* %15, i32 0, i32 96)
  %23 = call i8* @timelib_malloc(i32 32)
  %24 = bitcast i8* %23 to %struct.TYPE_20__*
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %7
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isspace(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ult i8* %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %41

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i8*, i8** %17, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ugt i8* %62, %63
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ false, %56 ], [ %64, %61 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %17, align 8
  br label %56

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %7
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = call i32 @add_error(%struct.TYPE_21__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %81 = icmp ne %struct.TYPE_20__** %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %85, align 8
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = call i32 @timelib_error_container_dtor(%struct.TYPE_20__* %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %327

91:                                               ; preds = %71
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %17, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = load i32, i32* @YYMAXFILL, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @timelib_malloc(i32 %102)
  %104 = bitcast i8* %103 to %struct.TYPE_21__*
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = load i32, i32* @YYMAXFILL, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memset(%struct.TYPE_21__* %107, i32 0, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(%struct.TYPE_21__* %119, i8* %120, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i64 %134
  %136 = load i32, i32* @YYMAXFILL, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 11
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 10
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %142, align 8
  %143 = call i8* (...) @timelib_time_ctor()
  %144 = bitcast i8* %143 to %struct.TYPE_18__*
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  store %struct.TYPE_18__* %144, %struct.TYPE_18__** %145, align 8
  %146 = load i8*, i8** @TIMELIB_UNSET, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 10
  store i8* %146, i8** %149, align 8
  %150 = load i8*, i8** @TIMELIB_UNSET, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 9
  store i8* %150, i8** %153, align 8
  %154 = load i8*, i8** @TIMELIB_UNSET, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 8
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** @TIMELIB_UNSET, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 7
  store i8* %158, i8** %161, align 8
  %162 = load i8*, i8** @TIMELIB_UNSET, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 6
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** @TIMELIB_UNSET, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 5
  store i8* %166, i8** %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 4
  store i64 0, i64* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 3
  store i64 0, i64* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  store i64 0, i64* %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load i8*, i8** @TIMELIB_ZONETYPE_OFFSET, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i8* %182, i8** %185, align 8
  %186 = call i8* (...) @timelib_time_ctor()
  %187 = bitcast i8* %186 to %struct.TYPE_18__*
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %188, align 8
  %189 = load i8*, i8** @TIMELIB_UNSET, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 10
  store i8* %189, i8** %192, align 8
  %193 = load i8*, i8** @TIMELIB_UNSET, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 9
  store i8* %193, i8** %196, align 8
  %197 = load i8*, i8** @TIMELIB_UNSET, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 8
  store i8* %197, i8** %200, align 8
  %201 = load i8*, i8** @TIMELIB_UNSET, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 7
  store i8* %201, i8** %204, align 8
  %205 = load i8*, i8** @TIMELIB_UNSET, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 6
  store i8* %205, i8** %208, align 8
  %209 = load i8*, i8** @TIMELIB_UNSET, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 5
  store i8* %209, i8** %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 4
  store i64 0, i64* %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 3
  store i64 0, i64* %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 2
  store i64 0, i64* %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  store i64 0, i64* %224, align 8
  %225 = load i8*, i8** @TIMELIB_ZONETYPE_OFFSET, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  store i8* %225, i8** %228, align 8
  %229 = call %struct.TYPE_19__* (...) @timelib_rel_time_ctor()
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  store %struct.TYPE_19__* %229, %struct.TYPE_19__** %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 9
  store i64 0, i64* %233, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 8
  store i64 0, i64* %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 7
  store i64 0, i64* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 6
  store i64 0, i64* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 5
  store i64 0, i64* %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 4
  store i64 0, i64* %248, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 3
  store i64 0, i64* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  store i64 0, i64* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 1
  store i64 0, i64* %257, align 8
  %258 = load i8*, i8** @TIMELIB_UNSET, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  store i8* %258, i8** %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 1, i32* %262, align 8
  br label %263

263:                                              ; preds = %265, %91
  %264 = call i32 @scan(%struct.TYPE_21__* %15)
  store i32 %264, i32* %16, align 4
  br label %265

265:                                              ; preds = %263
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @EOI, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %263, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = call i32 @timelib_free(%struct.TYPE_21__* %271)
  %273 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %274 = icmp ne %struct.TYPE_20__** %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %276, align 8
  %278 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  store %struct.TYPE_20__* %277, %struct.TYPE_20__** %278, align 8
  br label %283

279:                                              ; preds = %269
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %280, align 8
  %282 = call i32 @timelib_error_container_dtor(%struct.TYPE_20__* %281)
  br label %283

283:                                              ; preds = %279, %275
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 7
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__* %289, %struct.TYPE_18__** %290, align 8
  br label %295

291:                                              ; preds = %283
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = call i32 @timelib_time_dtor(%struct.TYPE_18__* %293)
  br label %295

295:                                              ; preds = %291, %287
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_18__* %301, %struct.TYPE_18__** %302, align 8
  br label %307

303:                                              ; preds = %295
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %304, align 8
  %306 = call i32 @timelib_time_dtor(%struct.TYPE_18__* %305)
  br label %307

307:                                              ; preds = %303, %299
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %312, align 8
  %314 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  store %struct.TYPE_19__* %313, %struct.TYPE_19__** %314, align 8
  br label %319

315:                                              ; preds = %307
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %316, align 8
  %318 = call i32 @timelib_rel_time_dtor(%struct.TYPE_19__* %317)
  br label %319

319:                                              ; preds = %315, %311
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32*, i32** %13, align 8
  store i32 %325, i32* %326, align 4
  br label %327

327:                                              ; preds = %90, %323, %319
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i8* @timelib_malloc(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @add_error(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @timelib_error_container_dtor(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i8* @timelib_time_ctor(...) #1

declare dso_local %struct.TYPE_19__* @timelib_rel_time_ctor(...) #1

declare dso_local i32 @scan(%struct.TYPE_21__*) #1

declare dso_local i32 @timelib_free(%struct.TYPE_21__*) #1

declare dso_local i32 @timelib_time_dtor(%struct.TYPE_18__*) #1

declare dso_local i32 @timelib_rel_time_dtor(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
