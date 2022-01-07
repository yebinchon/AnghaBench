; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerSaveEvent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerSaveEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i64, i64, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_54__ = type { %struct.TYPE_51__*, %struct.TYPE_41__* }
%struct.TYPE_51__ = type { i32, %struct.TYPE_52__*, i32, i32, i32 }
%struct.TYPE_52__ = type { i64, i64, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i8 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_53__ = type { i32, i32, i32, i32, %struct.TYPE_48__*, %struct.TYPE_50__*, %struct.TYPE_49__* }
%struct.TYPE_48__ = type { %struct.TYPE_49__*, i32*, i32* }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_43__ = type { i32, %struct.TYPE_48__*, i64, i32, i32 }

@afterTriggers = common dso_local global %struct.TYPE_45__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"AfterTriggerSaveEvent() called outside of query\00", align 1
@TTSOpsVirtual = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSERT = common dso_local global i32 0, align 4
@CMD_INSERT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_DELETE = common dso_local global i32 0, align 4
@CMD_DELETE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_UPDATE = common dso_local global i32 0, align 4
@CMD_UPDATE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_TRUNCATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid after-trigger event code: %d\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@AFTER_TRIGGER_2CTID = common dso_local global i32 0, align 4
@AFTER_TRIGGER_1CTID = common dso_local global i32 0, align 4
@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_STATEMENT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_AFTER = common dso_local global i32 0, align 4
@AFTER_TRIGGER_FDW_FETCH = common dso_local global i32 0, align 4
@AFTER_TRIGGER_FDW_REUSE = common dso_local global i32 0, align 4
@F_UNIQUE_KEY_RECHECK = common dso_local global i64 0, align 8
@TRIGGER_EVENT_OPMASK = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@AFTER_TRIGGER_DEFERRABLE = common dso_local global i32 0, align 4
@AFTER_TRIGGER_INITDEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_42__*, %struct.TYPE_54__*, i32, i32, %struct.TYPE_49__*, %struct.TYPE_49__*, i32*, i32*, %struct.TYPE_53__*)* @AfterTriggerSaveEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AfterTriggerSaveEvent(%struct.TYPE_42__* %0, %struct.TYPE_54__* %1, i32 %2, i32 %3, %struct.TYPE_49__* %4, %struct.TYPE_49__* %5, i32* %6, i32* %7, %struct.TYPE_53__* %8) #0 {
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_54__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_49__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_53__*, align 8
  %19 = alloca %struct.TYPE_41__*, align 8
  %20 = alloca %struct.TYPE_51__*, align 8
  %21 = alloca %struct.TYPE_44__, align 4
  %22 = alloca %struct.TYPE_43__, align 8
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_49__*, align 8
  %29 = alloca %struct.TYPE_50__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_49__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca %struct.TYPE_49__*, align 8
  %38 = alloca %struct.TYPE_52__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %10, align 8
  store %struct.TYPE_54__* %1, %struct.TYPE_54__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_49__* %4, %struct.TYPE_49__** %14, align 8
  store %struct.TYPE_49__* %5, %struct.TYPE_49__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.TYPE_53__* %8, %struct.TYPE_53__** %18, align 8
  %39 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_41__*, %struct.TYPE_41__** %40, align 8
  store %struct.TYPE_41__* %41, %struct.TYPE_41__** %19, align 8
  %42 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_51__*, %struct.TYPE_51__** %43, align 8
  store %struct.TYPE_51__* %44, %struct.TYPE_51__** %20, align 8
  %45 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_47__*, %struct.TYPE_47__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %23, align 1
  store i32* null, i32** %27, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @afterTriggers, i32 0, i32 0), align 8
  %51 = icmp ult i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %9
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @elog(i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %9
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @afterTriggers, i32 0, i32 0), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @afterTriggers, i32 0, i32 1), align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (...) @AfterTriggerEnlargeQueryState()
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %278

64:                                               ; preds = %61
  %65 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %66 = icmp ne %struct.TYPE_53__* %65, null
  br i1 %66, label %67, label %278

67:                                               ; preds = %64
  %68 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_49__*, %struct.TYPE_49__** %69, align 8
  store %struct.TYPE_49__* %70, %struct.TYPE_49__** %28, align 8
  %71 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_50__*, %struct.TYPE_50__** %72, align 8
  store %struct.TYPE_50__* %73, %struct.TYPE_50__** %29, align 8
  %74 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %30, align 4
  %77 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %31, align 4
  %80 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %32, align 4
  %83 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %33, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 131
  br i1 %87, label %88, label %95

88:                                               ; preds = %67
  %89 = load i32, i32* %30, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %93 = call i32 @TupIsNull(%struct.TYPE_49__* %92)
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %91, %88, %67
  %96 = phi i1 [ false, %88 ], [ false, %67 ], [ %94, %91 ]
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @Assert(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* %33, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %107 = call i32 @TupIsNull(%struct.TYPE_49__* %106)
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %105, %102, %95
  %110 = phi i1 [ false, %102 ], [ false, %95 ], [ %108, %105 ]
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @Assert(i32 %112)
  %114 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %115 = call i32 @TupIsNull(%struct.TYPE_49__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %172, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 131
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %30, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %172

126:                                              ; preds = %123
  %127 = load i32, i32* %31, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %172

129:                                              ; preds = %126, %120
  %130 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_48__*, %struct.TYPE_48__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %34, align 8
  %135 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %136 = icmp ne %struct.TYPE_50__* %135, null
  br i1 %136, label %137, label %167

137:                                              ; preds = %129
  %138 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_48__*, %struct.TYPE_48__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_49__*, %struct.TYPE_49__** %141, align 8
  store %struct.TYPE_49__* %142, %struct.TYPE_49__** %35, align 8
  %143 = load %struct.TYPE_49__*, %struct.TYPE_49__** %35, align 8
  %144 = icmp ne %struct.TYPE_49__* %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %137
  %146 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %149 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.TYPE_49__* @ExecAllocTableSlot(i32* %147, i32 %150, i32* @TTSOpsVirtual)
  store %struct.TYPE_49__* %151, %struct.TYPE_49__** %35, align 8
  %152 = load %struct.TYPE_49__*, %struct.TYPE_49__** %35, align 8
  %153 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_48__*, %struct.TYPE_48__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %155, i32 0, i32 0
  store %struct.TYPE_49__* %152, %struct.TYPE_49__** %156, align 8
  br label %157

157:                                              ; preds = %145, %137
  %158 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %159 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %162 = load %struct.TYPE_49__*, %struct.TYPE_49__** %35, align 8
  %163 = call i32 @execute_attr_map_slot(i32 %160, %struct.TYPE_49__* %161, %struct.TYPE_49__* %162)
  %164 = load i32*, i32** %34, align 8
  %165 = load %struct.TYPE_49__*, %struct.TYPE_49__** %35, align 8
  %166 = call i32 @tuplestore_puttupleslot(i32* %164, %struct.TYPE_49__* %165)
  br label %171

167:                                              ; preds = %129
  %168 = load i32*, i32** %34, align 8
  %169 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %170 = call i32 @tuplestore_puttupleslot(i32* %168, %struct.TYPE_49__* %169)
  br label %171

171:                                              ; preds = %167, %157
  br label %172

172:                                              ; preds = %171, %126, %123, %109
  %173 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %174 = call i32 @TupIsNull(%struct.TYPE_49__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %239, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %12, align 4
  %178 = icmp eq i32 %177, 130
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %33, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %12, align 4
  %184 = icmp eq i32 %183, 128
  br i1 %184, label %185, label %239

185:                                              ; preds = %182
  %186 = load i32, i32* %32, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %239

188:                                              ; preds = %185, %179
  %189 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_48__*, %struct.TYPE_48__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %36, align 8
  %194 = load %struct.TYPE_49__*, %struct.TYPE_49__** %28, align 8
  %195 = icmp ne %struct.TYPE_49__* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load i32*, i32** %36, align 8
  %198 = load %struct.TYPE_49__*, %struct.TYPE_49__** %28, align 8
  %199 = call i32 @tuplestore_puttupleslot(i32* %197, %struct.TYPE_49__* %198)
  br label %238

200:                                              ; preds = %188
  %201 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %202 = icmp ne %struct.TYPE_50__* %201, null
  br i1 %202, label %203, label %233

203:                                              ; preds = %200
  %204 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_48__*, %struct.TYPE_48__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_49__*, %struct.TYPE_49__** %207, align 8
  store %struct.TYPE_49__* %208, %struct.TYPE_49__** %37, align 8
  %209 = load %struct.TYPE_49__*, %struct.TYPE_49__** %37, align 8
  %210 = icmp ne %struct.TYPE_49__* %209, null
  br i1 %210, label %223, label %211

211:                                              ; preds = %203
  %212 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %215 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call %struct.TYPE_49__* @ExecAllocTableSlot(i32* %213, i32 %216, i32* @TTSOpsVirtual)
  store %struct.TYPE_49__* %217, %struct.TYPE_49__** %37, align 8
  %218 = load %struct.TYPE_49__*, %struct.TYPE_49__** %37, align 8
  %219 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_48__*, %struct.TYPE_48__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %221, i32 0, i32 0
  store %struct.TYPE_49__* %218, %struct.TYPE_49__** %222, align 8
  br label %223

223:                                              ; preds = %211, %203
  %224 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %225 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %228 = load %struct.TYPE_49__*, %struct.TYPE_49__** %37, align 8
  %229 = call i32 @execute_attr_map_slot(i32 %226, %struct.TYPE_49__* %227, %struct.TYPE_49__* %228)
  %230 = load i32*, i32** %36, align 8
  %231 = load %struct.TYPE_49__*, %struct.TYPE_49__** %37, align 8
  %232 = call i32 @tuplestore_puttupleslot(i32* %230, %struct.TYPE_49__* %231)
  br label %237

233:                                              ; preds = %200
  %234 = load i32*, i32** %36, align 8
  %235 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %236 = call i32 @tuplestore_puttupleslot(i32* %234, %struct.TYPE_49__* %235)
  br label %237

237:                                              ; preds = %233, %223
  br label %238

238:                                              ; preds = %237, %196
  br label %239

239:                                              ; preds = %238, %185, %182, %172
  %240 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %241 = icmp eq %struct.TYPE_51__* %240, null
  br i1 %241, label %276, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %12, align 4
  %244 = icmp eq i32 %243, 131
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %245, %242
  %251 = load i32, i32* %12, align 4
  %252 = icmp eq i32 %251, 130
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %255 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253, %250
  %259 = load i32, i32* %12, align 4
  %260 = icmp eq i32 %259, 128
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %261, %258
  %267 = load i32, i32* %12, align 4
  %268 = icmp eq i32 %267, 128
  br i1 %268, label %269, label %277

269:                                              ; preds = %266
  %270 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %271 = call i32 @TupIsNull(%struct.TYPE_49__* %270)
  %272 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %273 = call i32 @TupIsNull(%struct.TYPE_49__* %272)
  %274 = xor i32 %271, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %269, %261, %253, %245, %239
  br label %633

277:                                              ; preds = %269, %266
  br label %278

278:                                              ; preds = %277, %64, %61
  %279 = load i32, i32* %12, align 4
  switch i32 %279, label %410 [
    i32 130, label %280
    i32 131, label %318
    i32 128, label %356
    i32 129, label %396
  ]

280:                                              ; preds = %278
  %281 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  store i32 %281, i32* %24, align 4
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %280
  %285 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %286 = icmp eq %struct.TYPE_49__* %285, null
  %287 = zext i1 %286 to i32
  %288 = call i32 @Assert(i32 %287)
  %289 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %290 = icmp ne %struct.TYPE_49__* %289, null
  %291 = zext i1 %290 to i32
  %292 = call i32 @Assert(i32 %291)
  %293 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %296 = call i32 @ItemPointerCopy(i32* %294, i32* %295)
  %297 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %298 = call i32 @ItemPointerSetInvalid(i32* %297)
  br label %317

299:                                              ; preds = %280
  %300 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %301 = icmp eq %struct.TYPE_49__* %300, null
  %302 = zext i1 %301 to i32
  %303 = call i32 @Assert(i32 %302)
  %304 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %305 = icmp eq %struct.TYPE_49__* %304, null
  %306 = zext i1 %305 to i32
  %307 = call i32 @Assert(i32 %306)
  %308 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %309 = call i32 @ItemPointerSetInvalid(i32* %308)
  %310 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %311 = call i32 @ItemPointerSetInvalid(i32* %310)
  %312 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %313 = call i32 @RelationGetRelid(%struct.TYPE_41__* %312)
  %314 = load i32, i32* @CMD_INSERT, align 4
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @cancel_prior_stmt_triggers(i32 %313, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %299, %284
  br label %414

318:                                              ; preds = %278
  %319 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  store i32 %319, i32* %24, align 4
  %320 = load i32, i32* %13, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %337

322:                                              ; preds = %318
  %323 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %324 = icmp ne %struct.TYPE_49__* %323, null
  %325 = zext i1 %324 to i32
  %326 = call i32 @Assert(i32 %325)
  %327 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %328 = icmp eq %struct.TYPE_49__* %327, null
  %329 = zext i1 %328 to i32
  %330 = call i32 @Assert(i32 %329)
  %331 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %334 = call i32 @ItemPointerCopy(i32* %332, i32* %333)
  %335 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %336 = call i32 @ItemPointerSetInvalid(i32* %335)
  br label %355

337:                                              ; preds = %318
  %338 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %339 = icmp eq %struct.TYPE_49__* %338, null
  %340 = zext i1 %339 to i32
  %341 = call i32 @Assert(i32 %340)
  %342 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %343 = icmp eq %struct.TYPE_49__* %342, null
  %344 = zext i1 %343 to i32
  %345 = call i32 @Assert(i32 %344)
  %346 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %347 = call i32 @ItemPointerSetInvalid(i32* %346)
  %348 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %349 = call i32 @ItemPointerSetInvalid(i32* %348)
  %350 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %351 = call i32 @RelationGetRelid(%struct.TYPE_41__* %350)
  %352 = load i32, i32* @CMD_DELETE, align 4
  %353 = load i32, i32* %12, align 4
  %354 = call i32 @cancel_prior_stmt_triggers(i32 %351, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %337, %322
  br label %414

356:                                              ; preds = %278
  %357 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  store i32 %357, i32* %24, align 4
  %358 = load i32, i32* %13, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %377

360:                                              ; preds = %356
  %361 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %362 = icmp ne %struct.TYPE_49__* %361, null
  %363 = zext i1 %362 to i32
  %364 = call i32 @Assert(i32 %363)
  %365 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %366 = icmp ne %struct.TYPE_49__* %365, null
  %367 = zext i1 %366 to i32
  %368 = call i32 @Assert(i32 %367)
  %369 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %370 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %372 = call i32 @ItemPointerCopy(i32* %370, i32* %371)
  %373 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %374 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %376 = call i32 @ItemPointerCopy(i32* %374, i32* %375)
  br label %395

377:                                              ; preds = %356
  %378 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %379 = icmp eq %struct.TYPE_49__* %378, null
  %380 = zext i1 %379 to i32
  %381 = call i32 @Assert(i32 %380)
  %382 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %383 = icmp eq %struct.TYPE_49__* %382, null
  %384 = zext i1 %383 to i32
  %385 = call i32 @Assert(i32 %384)
  %386 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %387 = call i32 @ItemPointerSetInvalid(i32* %386)
  %388 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %389 = call i32 @ItemPointerSetInvalid(i32* %388)
  %390 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %391 = call i32 @RelationGetRelid(%struct.TYPE_41__* %390)
  %392 = load i32, i32* @CMD_UPDATE, align 4
  %393 = load i32, i32* %12, align 4
  %394 = call i32 @cancel_prior_stmt_triggers(i32 %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %377, %360
  br label %414

396:                                              ; preds = %278
  %397 = load i32, i32* @TRIGGER_TYPE_TRUNCATE, align 4
  store i32 %397, i32* %24, align 4
  %398 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %399 = icmp eq %struct.TYPE_49__* %398, null
  %400 = zext i1 %399 to i32
  %401 = call i32 @Assert(i32 %400)
  %402 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %403 = icmp eq %struct.TYPE_49__* %402, null
  %404 = zext i1 %403 to i32
  %405 = call i32 @Assert(i32 %404)
  %406 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 2
  %407 = call i32 @ItemPointerSetInvalid(i32* %406)
  %408 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %409 = call i32 @ItemPointerSetInvalid(i32* %408)
  br label %414

410:                                              ; preds = %278
  %411 = load i32, i32* @ERROR, align 4
  %412 = load i32, i32* %12, align 4
  %413 = call i32 (i32, i8*, ...) @elog(i32 %411, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %412)
  store i32 0, i32* %24, align 4
  br label %414

414:                                              ; preds = %410, %396, %395, %355, %317
  %415 = load i8, i8* %23, align 1
  %416 = sext i8 %415 to i32
  %417 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %416, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %414
  %421 = load i32, i32* %13, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %436, label %423

423:                                              ; preds = %420, %414
  %424 = load i32, i32* %13, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %431

426:                                              ; preds = %423
  %427 = load i32, i32* %12, align 4
  %428 = icmp eq i32 %427, 128
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  %430 = load i32, i32* @AFTER_TRIGGER_2CTID, align 4
  br label %433

431:                                              ; preds = %426, %423
  %432 = load i32, i32* @AFTER_TRIGGER_1CTID, align 4
  br label %433

433:                                              ; preds = %431, %429
  %434 = phi i32 [ %430, %429 ], [ %432, %431 ]
  %435 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 0
  store i32 %434, i32* %435, align 4
  br label %436

436:                                              ; preds = %433, %420
  %437 = load i32, i32* %13, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %436
  %440 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  br label %443

441:                                              ; preds = %436
  %442 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  br label %443

443:                                              ; preds = %441, %439
  %444 = phi i32 [ %440, %439 ], [ %442, %441 ]
  store i32 %444, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %445

445:                                              ; preds = %612, %443
  %446 = load i32, i32* %26, align 4
  %447 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %448 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp slt i32 %446, %449
  br i1 %450, label %451, label %615

451:                                              ; preds = %445
  %452 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %453 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_52__*, %struct.TYPE_52__** %453, align 8
  %455 = load i32, i32* %26, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %454, i64 %456
  store %struct.TYPE_52__* %457, %struct.TYPE_52__** %38, align 8
  %458 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %459 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %458, i32 0, i32 7
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* %25, align 4
  %462 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %463 = load i32, i32* %24, align 4
  %464 = call i32 @TRIGGER_TYPE_MATCHES(i32 %460, i32 %461, i32 %462, i32 %463)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %467, label %466

466:                                              ; preds = %451
  br label %612

467:                                              ; preds = %451
  %468 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %469 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %470 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %471 = load i32, i32* %12, align 4
  %472 = load i32*, i32** %17, align 8
  %473 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %474 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %475 = call i32 @TriggerEnabled(%struct.TYPE_42__* %468, %struct.TYPE_54__* %469, %struct.TYPE_52__* %470, i32 %471, i32* %472, %struct.TYPE_49__* %473, %struct.TYPE_49__* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %478, label %477

477:                                              ; preds = %467
  br label %612

478:                                              ; preds = %467
  %479 = load i8, i8* %23, align 1
  %480 = sext i8 %479 to i32
  %481 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %482 = sext i8 %481 to i32
  %483 = icmp eq i32 %480, %482
  br i1 %483, label %484, label %498

484:                                              ; preds = %478
  %485 = load i32, i32* %13, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %498

487:                                              ; preds = %484
  %488 = load i32*, i32** %27, align 8
  %489 = icmp eq i32* %488, null
  br i1 %489, label %490, label %494

490:                                              ; preds = %487
  %491 = call i32* (...) @GetCurrentFDWTuplestore()
  store i32* %491, i32** %27, align 8
  %492 = load i32, i32* @AFTER_TRIGGER_FDW_FETCH, align 4
  %493 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 0
  store i32 %492, i32* %493, align 4
  br label %497

494:                                              ; preds = %487
  %495 = load i32, i32* @AFTER_TRIGGER_FDW_REUSE, align 4
  %496 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 0
  store i32 %495, i32* %496, align 4
  br label %497

497:                                              ; preds = %494, %490
  br label %498

498:                                              ; preds = %497, %484, %478
  %499 = load i32, i32* %12, align 4
  %500 = call i64 @TRIGGER_FIRED_BY_UPDATE(i32 %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %506, label %502

502:                                              ; preds = %498
  %503 = load i32, i32* %12, align 4
  %504 = call i64 @TRIGGER_FIRED_BY_DELETE(i32 %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %531

506:                                              ; preds = %502, %498
  %507 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %508 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = call i32 @RI_FKey_trigger_type(i64 %509)
  switch i32 %510, label %530 [
    i32 132, label %511
    i32 134, label %520
    i32 133, label %529
  ]

511:                                              ; preds = %506
  %512 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %513 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %514 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %515 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %516 = call i32 @RI_FKey_pk_upd_check_required(%struct.TYPE_52__* %512, %struct.TYPE_41__* %513, %struct.TYPE_49__* %514, %struct.TYPE_49__* %515)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %511
  br label %612

519:                                              ; preds = %511
  br label %530

520:                                              ; preds = %506
  %521 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %522 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %523 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %524 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %525 = call i32 @RI_FKey_fk_upd_check_required(%struct.TYPE_52__* %521, %struct.TYPE_41__* %522, %struct.TYPE_49__* %523, %struct.TYPE_49__* %524)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %528, label %527

527:                                              ; preds = %520
  br label %612

528:                                              ; preds = %520
  br label %530

529:                                              ; preds = %506
  br label %530

530:                                              ; preds = %506, %529, %528, %519
  br label %531

531:                                              ; preds = %530, %502
  %532 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %533 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @F_UNIQUE_KEY_RECHECK, align 8
  %536 = icmp eq i64 %534, %535
  br i1 %536, label %537, label %546

537:                                              ; preds = %531
  %538 = load i32*, i32** %16, align 8
  %539 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %540 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = call i32 @list_member_oid(i32* %538, i32 %541)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %545, label %544

544:                                              ; preds = %537
  br label %612

545:                                              ; preds = %537
  br label %546

546:                                              ; preds = %545, %531
  %547 = load i32, i32* %12, align 4
  %548 = load i32, i32* @TRIGGER_EVENT_OPMASK, align 4
  %549 = and i32 %547, %548
  %550 = load i32, i32* %13, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %546
  %553 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  br label %555

554:                                              ; preds = %546
  br label %555

555:                                              ; preds = %554, %552
  %556 = phi i32 [ %553, %552 ], [ 0, %554 ]
  %557 = or i32 %549, %556
  %558 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %559 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %558, i32 0, i32 5
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %555
  %563 = load i32, i32* @AFTER_TRIGGER_DEFERRABLE, align 4
  br label %565

564:                                              ; preds = %555
  br label %565

565:                                              ; preds = %564, %562
  %566 = phi i32 [ %563, %562 ], [ 0, %564 ]
  %567 = or i32 %557, %566
  %568 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %569 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %565
  %573 = load i32, i32* @AFTER_TRIGGER_INITDEFERRED, align 4
  br label %575

574:                                              ; preds = %565
  br label %575

575:                                              ; preds = %574, %572
  %576 = phi i32 [ %573, %572 ], [ 0, %574 ]
  %577 = or i32 %567, %576
  %578 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 0
  store i32 %577, i32* %578, align 8
  %579 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %580 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 4
  store i32 %581, i32* %582, align 4
  %583 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %584 = call i32 @RelationGetRelid(%struct.TYPE_41__* %583)
  %585 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 3
  store i32 %584, i32* %585, align 8
  %586 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 2
  store i64 0, i64* %586, align 8
  %587 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %588 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %587, i32 0, i32 2
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %596, label %591

591:                                              ; preds = %575
  %592 = load %struct.TYPE_52__*, %struct.TYPE_52__** %38, align 8
  %593 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %592, i32 0, i32 1
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %604

596:                                              ; preds = %591, %575
  %597 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %598 = icmp ne %struct.TYPE_53__* %597, null
  br i1 %598, label %599, label %604

599:                                              ; preds = %596
  %600 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %601 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %600, i32 0, i32 4
  %602 = load %struct.TYPE_48__*, %struct.TYPE_48__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 1
  store %struct.TYPE_48__* %602, %struct.TYPE_48__** %603, align 8
  br label %606

604:                                              ; preds = %596, %591
  %605 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 1
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %605, align 8
  br label %606

606:                                              ; preds = %604, %599
  %607 = load %struct.TYPE_46__*, %struct.TYPE_46__** getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @afterTriggers, i32 0, i32 2), align 8
  %608 = load i64, i64* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @afterTriggers, i32 0, i32 0), align 8
  %609 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %607, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %609, i32 0, i32 0
  %611 = call i32 @afterTriggerAddEvent(i32* %610, %struct.TYPE_44__* %21, %struct.TYPE_43__* %22)
  br label %612

612:                                              ; preds = %606, %544, %527, %518, %477, %466
  %613 = load i32, i32* %26, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %26, align 4
  br label %445

615:                                              ; preds = %445
  %616 = load i32*, i32** %27, align 8
  %617 = icmp ne i32* %616, null
  br i1 %617, label %618, label %633

618:                                              ; preds = %615
  %619 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %620 = icmp ne %struct.TYPE_49__* %619, null
  br i1 %620, label %621, label %625

621:                                              ; preds = %618
  %622 = load i32*, i32** %27, align 8
  %623 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %624 = call i32 @tuplestore_puttupleslot(i32* %622, %struct.TYPE_49__* %623)
  br label %625

625:                                              ; preds = %621, %618
  %626 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %627 = icmp ne %struct.TYPE_49__* %626, null
  br i1 %627, label %628, label %632

628:                                              ; preds = %625
  %629 = load i32*, i32** %27, align 8
  %630 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %631 = call i32 @tuplestore_puttupleslot(i32* %629, %struct.TYPE_49__* %630)
  br label %632

632:                                              ; preds = %628, %625
  br label %633

633:                                              ; preds = %276, %632, %615
  ret void
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @AfterTriggerEnlargeQueryState(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TupIsNull(%struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_49__* @ExecAllocTableSlot(i32*, i32, i32*) #1

declare dso_local i32 @execute_attr_map_slot(i32, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @tuplestore_puttupleslot(i32*, %struct.TYPE_49__*) #1

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @cancel_prior_stmt_triggers(i32, i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_41__*) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(%struct.TYPE_42__*, %struct.TYPE_54__*, %struct.TYPE_52__*, i32, i32*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32* @GetCurrentFDWTuplestore(...) #1

declare dso_local i64 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_DELETE(i32) #1

declare dso_local i32 @RI_FKey_trigger_type(i64) #1

declare dso_local i32 @RI_FKey_pk_upd_check_required(%struct.TYPE_52__*, %struct.TYPE_41__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @RI_FKey_fk_upd_check_required(%struct.TYPE_52__*, %struct.TYPE_41__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @list_member_oid(i32*, i32) #1

declare dso_local i32 @afterTriggerAddEvent(i32*, %struct.TYPE_44__*, %struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
