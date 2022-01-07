; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_initialize_reloptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_initialize_reloptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i8*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }

@boolRelOpts = common dso_local global %struct.TYPE_15__* null, align 8
@intRelOpts = common dso_local global %struct.TYPE_13__* null, align 8
@realRelOpts = common dso_local global %struct.TYPE_12__* null, align 8
@enumRelOpts = common dso_local global %struct.TYPE_14__* null, align 8
@stringRelOpts = common dso_local global %struct.TYPE_10__* null, align 8
@num_custom_options = common dso_local global i32 0, align 4
@relOpts = common dso_local global %struct.TYPE_11__** null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@RELOPT_TYPE_BOOL = common dso_local global i32 0, align 4
@RELOPT_TYPE_INT = common dso_local global i32 0, align 4
@RELOPT_TYPE_REAL = common dso_local global i32 0, align 4
@RELOPT_TYPE_ENUM = common dso_local global i32 0, align 4
@RELOPT_TYPE_STRING = common dso_local global i32 0, align 4
@custom_options = common dso_local global %struct.TYPE_11__** null, align 8
@need_initialization = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_reloptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_reloptions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %31, %0
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** @boolRelOpts, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @boolRelOpts, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** @boolRelOpts, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DoLockModesConflict(i32 %19, i32 %26)
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %3

34:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @intRelOpts, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %35
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @intRelOpts, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @intRelOpts, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DoLockModesConflict(i32 %51, i32 %58)
  %60 = call i32 @Assert(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %35

66:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @realRelOpts, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %67
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @realRelOpts, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @realRelOpts, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DoLockModesConflict(i32 %83, i32 %90)
  %92 = call i32 @Assert(i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %76
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %67

98:                                               ; preds = %67
  store i32 0, i32* %1, align 4
  br label %99

99:                                               ; preds = %127, %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enumRelOpts, align 8
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %99
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enumRelOpts, align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enumRelOpts, align 8
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @DoLockModesConflict(i32 %115, i32 %122)
  %124 = call i32 @Assert(i32 %123)
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %99

130:                                              ; preds = %99
  store i32 0, i32* %1, align 4
  br label %131

131:                                              ; preds = %159, %130
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stringRelOpts, align 8
  %133 = load i32, i32* %1, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %131
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stringRelOpts, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stringRelOpts, align 8
  %149 = load i32, i32* %1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @DoLockModesConflict(i32 %147, i32 %154)
  %156 = call i32 @Assert(i32 %155)
  %157 = load i32, i32* %2, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %140
  %160 = load i32, i32* %1, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %1, align 4
  br label %131

162:                                              ; preds = %131
  %163 = load i32, i32* @num_custom_options, align 4
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %2, align 4
  %166 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %167 = icmp ne %struct.TYPE_11__** %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %170 = call i32 @pfree(%struct.TYPE_11__** %169)
  br label %171

171:                                              ; preds = %168, %162
  %172 = load i32, i32* @TopMemoryContext, align 4
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 8
  %177 = trunc i64 %176 to i32
  %178 = call %struct.TYPE_11__** @MemoryContextAlloc(i32 %172, i32 %177)
  store %struct.TYPE_11__** %178, %struct.TYPE_11__*** @relOpts, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %179

179:                                              ; preds = %221, %171
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** @boolRelOpts, align 8
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %224

188:                                              ; preds = %179
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** @boolRelOpts, align 8
  %190 = load i32, i32* %1, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %195 = load i32, i32* %2, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %194, i64 %196
  store %struct.TYPE_11__* %193, %struct.TYPE_11__** %197, align 8
  %198 = load i32, i32* @RELOPT_TYPE_BOOL, align 4
  %199 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %199, i64 %201
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  store i32 %198, i32* %204, align 8
  %205 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %206 = load i32, i32* %2, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %205, i64 %207
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @strlen(i64 %211)
  %213 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %214 = load i32, i32* %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %213, i64 %215
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  store i8* %212, i8** %218, align 8
  %219 = load i32, i32* %2, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %188
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %179

224:                                              ; preds = %179
  store i32 0, i32* %1, align 4
  br label %225

225:                                              ; preds = %267, %224
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** @intRelOpts, align 8
  %227 = load i32, i32* %1, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %270

234:                                              ; preds = %225
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** @intRelOpts, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %241 = load i32, i32* %2, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %240, i64 %242
  store %struct.TYPE_11__* %239, %struct.TYPE_11__** %243, align 8
  %244 = load i32, i32* @RELOPT_TYPE_INT, align 4
  %245 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %245, i64 %247
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  store i32 %244, i32* %250, align 8
  %251 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %252 = load i32, i32* %2, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %251, i64 %253
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i8* @strlen(i64 %257)
  %259 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %260 = load i32, i32* %2, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %259, i64 %261
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  store i8* %258, i8** %264, align 8
  %265 = load i32, i32* %2, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %234
  %268 = load i32, i32* %1, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %1, align 4
  br label %225

270:                                              ; preds = %225
  store i32 0, i32* %1, align 4
  br label %271

271:                                              ; preds = %313, %270
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** @realRelOpts, align 8
  %273 = load i32, i32* %1, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %316

280:                                              ; preds = %271
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** @realRelOpts, align 8
  %282 = load i32, i32* %1, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %287 = load i32, i32* %2, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %286, i64 %288
  store %struct.TYPE_11__* %285, %struct.TYPE_11__** %289, align 8
  %290 = load i32, i32* @RELOPT_TYPE_REAL, align 4
  %291 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %292 = load i32, i32* %2, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %291, i64 %293
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 2
  store i32 %290, i32* %296, align 8
  %297 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %298 = load i32, i32* %2, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %297, i64 %299
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i8* @strlen(i64 %303)
  %305 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %306 = load i32, i32* %2, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %305, i64 %307
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  store i8* %304, i8** %310, align 8
  %311 = load i32, i32* %2, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %280
  %314 = load i32, i32* %1, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %1, align 4
  br label %271

316:                                              ; preds = %271
  store i32 0, i32* %1, align 4
  br label %317

317:                                              ; preds = %359, %316
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enumRelOpts, align 8
  %319 = load i32, i32* %1, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %362

326:                                              ; preds = %317
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enumRelOpts, align 8
  %328 = load i32, i32* %1, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %333 = load i32, i32* %2, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %332, i64 %334
  store %struct.TYPE_11__* %331, %struct.TYPE_11__** %335, align 8
  %336 = load i32, i32* @RELOPT_TYPE_ENUM, align 4
  %337 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %338 = load i32, i32* %2, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %337, i64 %339
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 2
  store i32 %336, i32* %342, align 8
  %343 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %344 = load i32, i32* %2, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %343, i64 %345
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = call i8* @strlen(i64 %349)
  %351 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %352 = load i32, i32* %2, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %351, i64 %353
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 1
  store i8* %350, i8** %356, align 8
  %357 = load i32, i32* %2, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %2, align 4
  br label %359

359:                                              ; preds = %326
  %360 = load i32, i32* %1, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %1, align 4
  br label %317

362:                                              ; preds = %317
  store i32 0, i32* %1, align 4
  br label %363

363:                                              ; preds = %405, %362
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stringRelOpts, align 8
  %365 = load i32, i32* %1, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %408

372:                                              ; preds = %363
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stringRelOpts, align 8
  %374 = load i32, i32* %1, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %379 = load i32, i32* %2, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %378, i64 %380
  store %struct.TYPE_11__* %377, %struct.TYPE_11__** %381, align 8
  %382 = load i32, i32* @RELOPT_TYPE_STRING, align 4
  %383 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %384 = load i32, i32* %2, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %383, i64 %385
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 2
  store i32 %382, i32* %388, align 8
  %389 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %390 = load i32, i32* %2, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %389, i64 %391
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = call i8* @strlen(i64 %395)
  %397 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %398 = load i32, i32* %2, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %397, i64 %399
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 1
  store i8* %396, i8** %402, align 8
  %403 = load i32, i32* %2, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %2, align 4
  br label %405

405:                                              ; preds = %372
  %406 = load i32, i32* %1, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %1, align 4
  br label %363

408:                                              ; preds = %363
  store i32 0, i32* %1, align 4
  br label %409

409:                                              ; preds = %425, %408
  %410 = load i32, i32* %1, align 4
  %411 = load i32, i32* @num_custom_options, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %428

413:                                              ; preds = %409
  %414 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @custom_options, align 8
  %415 = load i32, i32* %1, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %414, i64 %416
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %417, align 8
  %419 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %420 = load i32, i32* %2, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %419, i64 %421
  store %struct.TYPE_11__* %418, %struct.TYPE_11__** %422, align 8
  %423 = load i32, i32* %2, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %2, align 4
  br label %425

425:                                              ; preds = %413
  %426 = load i32, i32* %1, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %1, align 4
  br label %409

428:                                              ; preds = %409
  %429 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @relOpts, align 8
  %430 = load i32, i32* %2, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %429, i64 %431
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %432, align 8
  store i32 0, i32* @need_initialization, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DoLockModesConflict(i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_11__**) #1

declare dso_local %struct.TYPE_11__** @MemoryContextAlloc(i32, i32) #1

declare dso_local i8* @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
