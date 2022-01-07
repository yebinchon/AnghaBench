; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_buffer_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_buffer_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Buffers:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" shared\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" hit=%ld\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" read=%ld\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" dirtied=%ld\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" written=%ld\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" local\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" temp\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"I/O Timings:\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" read=%0.3f\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" write=%0.3f\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Shared Hit Blocks\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Shared Read Blocks\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Shared Dirtied Blocks\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Shared Written Blocks\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Local Hit Blocks\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Local Read Blocks\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Local Dirtied Blocks\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Local Written Blocks\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Temp Read Blocks\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Temp Written Blocks\00", align 1
@track_io_timing = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"I/O Read Time\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"I/O Write Time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @show_buffer_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_buffer_usage(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %335

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24, %19, %14
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ true, %14 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br label %56

56:                                               ; preds = %51, %46, %41, %34
  %57 = phi i1 [ true, %46 ], [ true, %41 ], [ true, %34 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br label %68

68:                                               ; preds = %63, %56
  %69 = phi i1 [ true, %56 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @INSTR_TIME_IS_ZERO(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @INSTR_TIME_IS_ZERO(i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %76, %68
  %84 = phi i1 [ true, %68 ], [ %82, %76 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %284

94:                                               ; preds = %91, %88, %83
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 2
  %102 = call i32 @appendStringInfoSpaces(i32 %97, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @appendStringInfoString(i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %177

109:                                              ; preds = %94
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @appendStringInfoString(i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %109
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @appendStringInfo(i32 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %118, %109
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @appendStringInfo(i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @appendStringInfo(i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %144, %139
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @appendStringInfo(i32 %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %157, %152
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168, %165
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @appendStringInfoChar(i32 %174, i8 signext 44)
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176, %94
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %245

180:                                              ; preds = %177
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @appendStringInfoString(i32 %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %180
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @appendStringInfo(i32 %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %195)
  br label %197

197:                                              ; preds = %189, %180
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @appendStringInfo(i32 %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %208)
  br label %210

210:                                              ; preds = %202, %197
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @appendStringInfo(i32 %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %221)
  br label %223

223:                                              ; preds = %215, %210
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 7
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @appendStringInfo(i32 %231, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %234)
  br label %236

236:                                              ; preds = %228, %223
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @appendStringInfoChar(i32 %242, i8 signext 44)
  br label %244

244:                                              ; preds = %239, %236
  br label %245

245:                                              ; preds = %244, %177
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %245
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @appendStringInfoString(i32 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %248
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @appendStringInfo(i32 %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %263)
  br label %265

265:                                              ; preds = %257, %248
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 9
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 9
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @appendStringInfo(i32 %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %276)
  br label %278

278:                                              ; preds = %270, %265
  br label %279

279:                                              ; preds = %278, %245
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @appendStringInfoChar(i32 %282, i8 signext 10)
  br label %284

284:                                              ; preds = %279, %91
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %334

287:                                              ; preds = %284
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = mul nsw i32 %293, 2
  %295 = call i32 @appendStringInfoSpaces(i32 %290, i32 %294)
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @appendStringInfoString(i32 %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @INSTR_TIME_IS_ZERO(i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %314, label %305

305:                                              ; preds = %287
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 11
  %311 = load i32, i32* %310, align 4
  %312 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %311)
  %313 = call i32 @appendStringInfo(i32 %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %312)
  br label %314

314:                                              ; preds = %305, %287
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @INSTR_TIME_IS_ZERO(i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %329, label %320

320:                                              ; preds = %314
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 10
  %326 = load i32, i32* %325, align 8
  %327 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %326)
  %328 = call i32 @appendStringInfo(i32 %323, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %327)
  br label %329

329:                                              ; preds = %320, %314
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @appendStringInfoChar(i32 %332, i8 signext 10)
  br label %334

334:                                              ; preds = %329, %284
  br label %402

335:                                              ; preds = %2
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %340 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* null, i64 %338, %struct.TYPE_7__* %339)
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %345 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* null, i64 %343, %struct.TYPE_7__* %344)
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %350 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32* null, i64 %348, %struct.TYPE_7__* %349)
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %355 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32* null, i64 %353, %struct.TYPE_7__* %354)
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %360 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32* null, i64 %358, %struct.TYPE_7__* %359)
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %365 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32* null, i64 %363, %struct.TYPE_7__* %364)
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 6
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %370 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32* null, i64 %368, %struct.TYPE_7__* %369)
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 7
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %375 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32* null, i64 %373, %struct.TYPE_7__* %374)
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 8
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %380 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32* null, i64 %378, %struct.TYPE_7__* %379)
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 9
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %385 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32* null, i64 %383, %struct.TYPE_7__* %384)
  %386 = load i64, i64* @track_io_timing, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %335
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 11
  %391 = load i32, i32* %390, align 4
  %392 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %391)
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %394 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i64 %392, i32 3, %struct.TYPE_7__* %393)
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 10
  %397 = load i32, i32* %396, align 8
  %398 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %397)
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %400 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i64 %398, i32 3, %struct.TYPE_7__* %399)
  br label %401

401:                                              ; preds = %388, %335
  br label %402

402:                                              ; preds = %401, %334
  ret void
}

declare dso_local i32 @INSTR_TIME_IS_ZERO(i32) #1

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i64) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #1

declare dso_local i32 @ExplainPropertyInteger(i8*, i32*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @ExplainPropertyFloat(i8*, i8*, i64, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
