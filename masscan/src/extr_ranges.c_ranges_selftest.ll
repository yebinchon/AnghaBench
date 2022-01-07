; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32 }
%struct.RangeList = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"0.0.0.0/0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0.0.0./0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"75.748.86.91\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"23.75.345.200\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"192.1083.0.1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"192.168.1.3\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"r.begin = 0x%08x r.end = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"selftest: failed %s:%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"10.0.0.20-10.0.0.30\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"10.0.1.2/16\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"10.0.0.0/24\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"10.0.1.10-10.0.1.19\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"10.0.1.20-10.0.1.30\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"10.0.0.0-10.0.1.12\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"count = %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"10.0.0.0/8\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"9.255.255.255\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"11.0.0.0/16\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"192.168.0.0/16\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"1.0.0.0-10.0.0.0\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"10.255.255.255-11.0.0.0\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"10.10.0.0/16\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"10.20.0.0/16\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"10.12.0.0/16\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"10.10.10.10-10.12.12.12\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"80,1000-2000,1234,4444\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ranges_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Range, align 4
  %3 = alloca [1 x %struct.RangeList], align 16
  %4 = alloca %struct.Range, align 4
  %5 = alloca %struct.Range, align 4
  %6 = alloca %struct.Range, align 4
  %7 = alloca %struct.Range, align 4
  %8 = alloca %struct.Range, align 4
  %9 = alloca %struct.Range, align 4
  %10 = alloca %struct.Range, align 4
  %11 = alloca %struct.Range, align 4
  %12 = alloca %struct.Range, align 4
  %13 = alloca %struct.Range, align 4
  %14 = alloca %struct.Range, align 4
  %15 = alloca %struct.Range, align 4
  %16 = alloca %struct.Range, align 4
  %17 = alloca %struct.Range, align 4
  %18 = alloca %struct.Range, align 4
  %19 = alloca %struct.Range, align 4
  %20 = alloca %struct.Range, align 4
  %21 = alloca %struct.Range, align 4
  %22 = alloca %struct.Range, align 4
  %23 = alloca %struct.Range, align 4
  %24 = alloca %struct.Range, align 4
  %25 = alloca %struct.Range, align 4
  %26 = alloca i32, align 4
  %27 = bitcast [1 x %struct.RangeList]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 24, i1 false)
  %28 = call i64 (...) @regress_pick2()
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @REGRESS(i32 %30)
  %32 = call i64 (...) @exclude_selftest()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %429

35:                                               ; preds = %0
  %36 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %37 = call i32 @memset(%struct.RangeList* %36, i32 0, i32 24)
  %38 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %39 = bitcast %struct.Range* %4 to i64*
  store i64 %38, i64* %39, align 4
  %40 = bitcast %struct.Range* %2 to i8*
  %41 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br label %49

49:                                               ; preds = %45, %35
  %50 = phi i1 [ false, %35 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @REGRESS(i32 %51)
  %53 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %54 = bitcast %struct.Range* %5 to i64*
  store i64 %53, i64* %54, align 4
  %55 = bitcast %struct.Range* %2 to i8*
  %56 = bitcast %struct.Range* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  %57 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @REGRESS(i32 %62)
  %64 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %65 = bitcast %struct.Range* %6 to i64*
  store i64 %64, i64* %65, align 4
  %66 = bitcast %struct.Range* %2 to i8*
  %67 = bitcast %struct.Range* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @REGRESS(i32 %73)
  %75 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  %76 = bitcast %struct.Range* %7 to i64*
  store i64 %75, i64* %76, align 4
  %77 = bitcast %struct.Range* %2 to i8*
  %78 = bitcast %struct.Range* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 8, i1 false)
  %79 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @REGRESS(i32 %84)
  %86 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %87 = bitcast %struct.Range* %8 to i64*
  store i64 %86, i64* %87, align 4
  %88 = bitcast %struct.Range* %2 to i8*
  %89 = bitcast %struct.Range* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 8, i1 false)
  %90 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @REGRESS(i32 %95)
  %97 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %98 = bitcast %struct.Range* %9 to i64*
  store i64 %97, i64* %98, align 4
  %99 = bitcast %struct.Range* %2 to i8*
  %100 = bitcast %struct.Range* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 8, i1 false)
  %101 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, -1062731517
  br i1 %103, label %108, label %104

104:                                              ; preds = %49
  %105 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, -1062731517
  br i1 %107, label %108, label %115

108:                                              ; preds = %104, %49
  %109 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %112)
  %114 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 68)
  store i32 1, i32* %1, align 4
  br label %429

115:                                              ; preds = %104
  %116 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0)
  %117 = bitcast %struct.Range* %10 to i64*
  store i64 %116, i64* %117, align 4
  %118 = bitcast %struct.Range* %2 to i8*
  %119 = bitcast %struct.Range* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  %120 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 167772180
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 167772190
  br i1 %126, label %127, label %134

127:                                              ; preds = %123, %115
  %128 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %131)
  %133 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 75)
  store i32 1, i32* %1, align 4
  br label %429

134:                                              ; preds = %123
  %135 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0)
  %136 = bitcast %struct.Range* %11 to i64*
  store i64 %135, i64* %136, align 4
  %137 = bitcast %struct.Range* %2 to i8*
  %138 = bitcast %struct.Range* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 8, i1 false)
  %139 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 167772160
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 167837695
  br i1 %145, label %146, label %153

146:                                              ; preds = %142, %134
  %147 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.Range, %struct.Range* %2, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %148, i32 %150)
  %152 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 82)
  store i32 1, i32* %1, align 4
  br label %429

153:                                              ; preds = %142
  %154 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %155 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  %156 = bitcast %struct.Range* %12 to i64*
  store i64 %155, i64* %156, align 4
  %157 = bitcast %struct.Range* %12 to i64*
  %158 = load i64, i64* %157, align 4
  %159 = call i32 @rangelist_add_range2(%struct.RangeList* %154, i64 %158)
  %160 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %161 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0)
  %162 = bitcast %struct.Range* %13 to i64*
  store i64 %161, i64* %162, align 4
  %163 = bitcast %struct.Range* %13 to i64*
  %164 = load i64, i64* %163, align 4
  %165 = call i32 @rangelist_add_range2(%struct.RangeList* %160, i64 %164)
  %166 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %167 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 0)
  %168 = bitcast %struct.Range* %14 to i64*
  store i64 %167, i64* %168, align 4
  %169 = bitcast %struct.Range* %14 to i64*
  %170 = load i64, i64* %169, align 4
  %171 = call i32 @rangelist_add_range2(%struct.RangeList* %166, i64 %170)
  %172 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %173 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 0)
  %174 = bitcast %struct.Range* %15 to i64*
  store i64 %173, i64* %174, align 4
  %175 = bitcast %struct.Range* %15 to i64*
  %176 = load i64, i64* %175, align 4
  %177 = call i32 @rangelist_add_range2(%struct.RangeList* %172, i64 %176)
  %178 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %179 = call i32 @rangelist_sort(%struct.RangeList* %178)
  %180 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %181 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 16
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %190

184:                                              ; preds = %153
  %185 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %186 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 16
  %188 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %187)
  %189 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 95)
  store i32 1, i32* %1, align 4
  br label %429

190:                                              ; preds = %153
  %191 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %192 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 167772160
  br i1 %197, label %206, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %200 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %199, i32 0, i32 1
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 167772446
  br i1 %205, label %206, label %221

206:                                              ; preds = %198, %190
  %207 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %208 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %207, i32 0, i32 1
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %214 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %213, i32 0, i32 1
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %212, i32 %218)
  %220 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 100)
  store i32 1, i32* %1, align 4
  br label %429

221:                                              ; preds = %198
  %222 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %223 = call i32 @rangelist_remove_all(%struct.RangeList* %222)
  %224 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %225 = call i32 @memset(%struct.RangeList* %224, i32 0, i32 24)
  %226 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %227 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 0)
  %228 = bitcast %struct.Range* %16 to i64*
  store i64 %227, i64* %228, align 4
  %229 = bitcast %struct.Range* %16 to i64*
  %230 = load i64, i64* %229, align 4
  %231 = call i32 @rangelist_add_range2(%struct.RangeList* %226, i64 %230)
  %232 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %233 = call i32 @rangelist_sort(%struct.RangeList* %232)
  %234 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %235 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 0, i32 0)
  %236 = bitcast %struct.Range* %17 to i64*
  store i64 %235, i64* %236, align 4
  %237 = bitcast %struct.Range* %17 to i64*
  %238 = load i64, i64* %237, align 4
  %239 = call i32 @rangelist_remove_range2(%struct.RangeList* %234, i64 %238)
  %240 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %241 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 0)
  %242 = bitcast %struct.Range* %18 to i64*
  store i64 %241, i64* %242, align 4
  %243 = bitcast %struct.Range* %18 to i64*
  %244 = load i64, i64* %243, align 4
  %245 = call i32 @rangelist_remove_range2(%struct.RangeList* %240, i64 %244)
  %246 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %247 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 0, i32 0)
  %248 = bitcast %struct.Range* %19 to i64*
  store i64 %247, i64* %248, align 4
  %249 = bitcast %struct.Range* %19 to i64*
  %250 = load i64, i64* %249, align 4
  %251 = call i32 @rangelist_remove_range2(%struct.RangeList* %246, i64 %250)
  %252 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %253 = call i32 @rangelist_sort(%struct.RangeList* %252)
  %254 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %255 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 16
  %257 = icmp ne i32 %256, 1
  br i1 %257, label %272, label %258

258:                                              ; preds = %221
  %259 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %260 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %259, i32 0, i32 1
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 167772160
  br i1 %264, label %272, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %267 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %266, i32 0, i32 1
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 184549375
  br i1 %271, label %272, label %274

272:                                              ; preds = %265, %258, %221
  %273 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 123)
  store i32 1, i32* %1, align 4
  br label %429

274:                                              ; preds = %265
  %275 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %276 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 0)
  %277 = bitcast %struct.Range* %20 to i64*
  store i64 %276, i64* %277, align 4
  %278 = bitcast %struct.Range* %20 to i64*
  %279 = load i64, i64* %278, align 4
  %280 = call i32 @rangelist_remove_range2(%struct.RangeList* %275, i64 %279)
  %281 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %282 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 0)
  %283 = bitcast %struct.Range* %21 to i64*
  store i64 %282, i64* %283, align 4
  %284 = bitcast %struct.Range* %21 to i64*
  %285 = load i64, i64* %284, align 4
  %286 = call i32 @rangelist_remove_range2(%struct.RangeList* %281, i64 %285)
  %287 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %288 = call i32 @rangelist_sort(%struct.RangeList* %287)
  %289 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %290 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 16
  %292 = icmp ne i32 %291, 1
  br i1 %292, label %307, label %293

293:                                              ; preds = %274
  %294 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %295 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %294, i32 0, i32 1
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 167772161
  br i1 %299, label %307, label %300

300:                                              ; preds = %293
  %301 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %302 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %301, i32 0, i32 1
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 184549374
  br i1 %306, label %307, label %309

307:                                              ; preds = %300, %293, %274
  %308 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 134)
  store i32 1, i32* %1, align 4
  br label %429

309:                                              ; preds = %300
  %310 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %311 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 0, i32 0)
  %312 = bitcast %struct.Range* %22 to i64*
  store i64 %311, i64* %312, align 4
  %313 = bitcast %struct.Range* %22 to i64*
  %314 = load i64, i64* %313, align 4
  %315 = call i32 @rangelist_remove_range2(%struct.RangeList* %310, i64 %314)
  %316 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %317 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 0, i32 0)
  %318 = bitcast %struct.Range* %23 to i64*
  store i64 %317, i64* %318, align 4
  %319 = bitcast %struct.Range* %23 to i64*
  %320 = load i64, i64* %319, align 4
  %321 = call i32 @rangelist_remove_range2(%struct.RangeList* %316, i64 %320)
  %322 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %323 = call i32 @rangelist_sort(%struct.RangeList* %322)
  %324 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %325 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 16
  %327 = icmp ne i32 %326, 3
  br i1 %327, label %328, label %330

328:                                              ; preds = %309
  %329 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 144)
  store i32 1, i32* %1, align 4
  br label %429

330:                                              ; preds = %309
  %331 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %332 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 0, i32 0)
  %333 = bitcast %struct.Range* %24 to i64*
  store i64 %332, i64* %333, align 4
  %334 = bitcast %struct.Range* %24 to i64*
  %335 = load i64, i64* %334, align 4
  %336 = call i32 @rangelist_remove_range2(%struct.RangeList* %331, i64 %335)
  %337 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %338 = call i32 @rangelist_sort(%struct.RangeList* %337)
  %339 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %340 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 16
  %342 = icmp ne i32 %341, 4
  br i1 %342, label %343, label %345

343:                                              ; preds = %330
  %344 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 151)
  store i32 1, i32* %1, align 4
  br label %429

345:                                              ; preds = %330
  %346 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %347 = call i64 @range_parse_ipv4(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 0, i32 0)
  %348 = bitcast %struct.Range* %25 to i64*
  store i64 %347, i64* %348, align 4
  %349 = bitcast %struct.Range* %25 to i64*
  %350 = load i64, i64* %349, align 4
  %351 = call i32 @rangelist_remove_range2(%struct.RangeList* %346, i64 %350)
  %352 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %353 = call i32 @rangelist_sort(%struct.RangeList* %352)
  %354 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %355 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 16
  %357 = icmp ne i32 %356, 3
  br i1 %357, label %358, label %360

358:                                              ; preds = %345
  %359 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 158)
  store i32 1, i32* %1, align 4
  br label %429

360:                                              ; preds = %345
  %361 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %362 = call i32 @rangelist_remove_all(%struct.RangeList* %361)
  store i32 0, i32* %26, align 4
  %363 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %364 = call i32 @memset(%struct.RangeList* %363, i32 0, i32 24)
  %365 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %366 = call i32 @rangelist_parse_ports(%struct.RangeList* %365, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32* %26, i32 0)
  %367 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %368 = call i32 @rangelist_sort(%struct.RangeList* %367)
  %369 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %370 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 16
  %372 = icmp ne i32 %371, 3
  br i1 %372, label %376, label %373

373:                                              ; preds = %360
  %374 = load i32, i32* %26, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %373, %360
  %377 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 171)
  store i32 1, i32* %1, align 4
  br label %429

378:                                              ; preds = %373
  %379 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %380 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %379, i32 0, i32 1
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i64 0
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %384, 80
  br i1 %385, label %426, label %386

386:                                              ; preds = %378
  %387 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %388 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %387, i32 0, i32 1
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i64 0
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 80
  br i1 %393, label %426, label %394

394:                                              ; preds = %386
  %395 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %396 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %395, i32 0, i32 1
  %397 = load %struct.TYPE_2__*, %struct.TYPE_2__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i64 1
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 1000
  br i1 %401, label %426, label %402

402:                                              ; preds = %394
  %403 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %404 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %403, i32 0, i32 1
  %405 = load %struct.TYPE_2__*, %struct.TYPE_2__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i64 1
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 2000
  br i1 %409, label %426, label %410

410:                                              ; preds = %402
  %411 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %412 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %411, i32 0, i32 1
  %413 = load %struct.TYPE_2__*, %struct.TYPE_2__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %413, i64 2
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 4444
  br i1 %417, label %426, label %418

418:                                              ; preds = %410
  %419 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %3, i64 0, i64 0
  %420 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %419, i32 0, i32 1
  %421 = load %struct.TYPE_2__*, %struct.TYPE_2__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i64 2
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 4444
  br i1 %425, label %426, label %428

426:                                              ; preds = %418, %410, %402, %394, %386, %378
  %427 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ptrtoint ([66 x i8]* @.str.8 to i32), i32 178)
  store i32 1, i32* %1, align 4
  br label %429

428:                                              ; preds = %418
  store i32 0, i32* %1, align 4
  br label %429

429:                                              ; preds = %428, %426, %376, %358, %343, %328, %307, %272, %206, %184, %146, %127, %108, %34
  %430 = load i32, i32* %1, align 4
  ret i32 %430
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @REGRESS(i32) #2

declare dso_local i64 @regress_pick2(...) #2

declare dso_local i64 @exclude_selftest(...) #2

declare dso_local i32 @memset(%struct.RangeList*, i32, i32) #2

declare dso_local i64 @range_parse_ipv4(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LOG(i32, i8*, i32, ...) #2

declare dso_local i32 @rangelist_add_range2(%struct.RangeList*, i64) #2

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #2

declare dso_local i32 @rangelist_remove_all(%struct.RangeList*) #2

declare dso_local i32 @rangelist_remove_range2(%struct.RangeList*, i64) #2

declare dso_local i32 @rangelist_parse_ports(%struct.RangeList*, i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
