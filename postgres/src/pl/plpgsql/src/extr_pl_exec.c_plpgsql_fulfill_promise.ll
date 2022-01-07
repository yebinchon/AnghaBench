; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_fulfill_promise.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_fulfill_promise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@PLPGSQL_PROMISE_NONE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"trigger promise is not in a trigger function\00", align 1
@namein = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"INSTEAD OF\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"unrecognized trigger execution time: not BEFORE, AFTER, or INSTEAD OF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ROW\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"STATEMENT\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"unrecognized trigger event type: not ROW or STATEMENT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TRUNCATE\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"unrecognized trigger action: not INSERT, DELETE, UPDATE, or TRUNCATE\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [58 x i8] c"event trigger promise is not in an event trigger function\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unrecognized promise type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @plpgsql_fulfill_promise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plpgsql_fulfill_promise(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PLPGSQL_PROMISE_NONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %395

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MemoryContextSwitchTo(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %386 [
    i32 135, label %25
    i32 128, label %47
    i32 136, label %97
    i32 133, label %134
    i32 132, label %197
    i32 131, label %217
    i32 130, label %238
    i32 134, label %260
    i32 138, label %280
    i32 137, label %352
    i32 129, label %369
  ]

25:                                               ; preds = %17
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = icmp eq %struct.TYPE_16__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 (i32, i8*, ...) @elog(i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = load i32, i32* @namein, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CStringGetDatum(i32 %43)
  %45 = call i32 @DirectFunctionCall1(i32 %36, i32 %44)
  %46 = call i32 @assign_simple_var(%struct.TYPE_19__* %34, %struct.TYPE_18__* %35, i32 %45, i32 0, i32 1)
  br label %392

47:                                               ; preds = %17
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = icmp eq %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @elog(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TRIGGER_FIRED_BEFORE(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = call i32 @assign_text_var(%struct.TYPE_19__* %64, %struct.TYPE_18__* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %96

67:                                               ; preds = %55
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @TRIGGER_FIRED_AFTER(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = call i32 @assign_text_var(%struct.TYPE_19__* %76, %struct.TYPE_18__* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %95

79:                                               ; preds = %67
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @TRIGGER_FIRED_INSTEAD(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = call i32 @assign_text_var(%struct.TYPE_19__* %88, %struct.TYPE_18__* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 (i32, i8*, ...) @elog(i32 %92, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95, %63
  br label %392

97:                                               ; preds = %17
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = icmp eq %struct.TYPE_16__* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @ERROR, align 4
  %104 = call i32 (i32, i8*, ...) @elog(i32 %103, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @TRIGGER_FIRED_FOR_ROW(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = call i32 @assign_text_var(%struct.TYPE_19__* %114, %struct.TYPE_18__* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %133

117:                                              ; preds = %105
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @TRIGGER_FIRED_FOR_STATEMENT(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = call i32 @assign_text_var(%struct.TYPE_19__* %126, %struct.TYPE_18__* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %132

129:                                              ; preds = %117
  %130 = load i32, i32* @ERROR, align 4
  %131 = call i32 (i32, i8*, ...) @elog(i32 %130, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %113
  br label %392

134:                                              ; preds = %17
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = icmp eq %struct.TYPE_16__* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @ERROR, align 4
  %141 = call i32 (i32, i8*, ...) @elog(i32 %140, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %134
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @TRIGGER_FIRED_BY_INSERT(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = call i32 @assign_text_var(%struct.TYPE_19__* %151, %struct.TYPE_18__* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %196

154:                                              ; preds = %142
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @TRIGGER_FIRED_BY_UPDATE(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = call i32 @assign_text_var(%struct.TYPE_19__* %163, %struct.TYPE_18__* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %195

166:                                              ; preds = %154
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @TRIGGER_FIRED_BY_DELETE(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %177 = call i32 @assign_text_var(%struct.TYPE_19__* %175, %struct.TYPE_18__* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %194

178:                                              ; preds = %166
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @TRIGGER_FIRED_BY_TRUNCATE(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %189 = call i32 @assign_text_var(%struct.TYPE_19__* %187, %struct.TYPE_18__* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %193

190:                                              ; preds = %178
  %191 = load i32, i32* @ERROR, align 4
  %192 = call i32 (i32, i8*, ...) @elog(i32 %191, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %186
  br label %194

194:                                              ; preds = %193, %174
  br label %195

195:                                              ; preds = %194, %162
  br label %196

196:                                              ; preds = %195, %150
  br label %392

197:                                              ; preds = %17
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = icmp eq %struct.TYPE_16__* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* @ERROR, align 4
  %204 = call i32 (i32, i8*, ...) @elog(i32 %203, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %197
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ObjectIdGetDatum(i32 %214)
  %216 = call i32 @assign_simple_var(%struct.TYPE_19__* %206, %struct.TYPE_18__* %207, i32 %215, i32 0, i32 0)
  br label %392

217:                                              ; preds = %17
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = icmp eq %struct.TYPE_16__* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* @ERROR, align 4
  %224 = call i32 (i32, i8*, ...) @elog(i32 %223, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %217
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %228 = load i32, i32* @namein, align 4
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %233)
  %235 = call i32 @CStringGetDatum(i32 %234)
  %236 = call i32 @DirectFunctionCall1(i32 %228, i32 %235)
  %237 = call i32 @assign_simple_var(%struct.TYPE_19__* %226, %struct.TYPE_18__* %227, i32 %236, i32 0, i32 1)
  br label %392

238:                                              ; preds = %17
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = icmp eq %struct.TYPE_16__* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load i32, i32* @ERROR, align 4
  %245 = call i32 (i32, i8*, ...) @elog(i32 %244, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %238
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %249 = load i32, i32* @namein, align 4
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = call i32 @RelationGetNamespace(%struct.TYPE_14__* %254)
  %256 = call i32 @get_namespace_name(i32 %255)
  %257 = call i32 @CStringGetDatum(i32 %256)
  %258 = call i32 @DirectFunctionCall1(i32 %249, i32 %257)
  %259 = call i32 @assign_simple_var(%struct.TYPE_19__* %247, %struct.TYPE_18__* %248, i32 %258, i32 0, i32 1)
  br label %392

260:                                              ; preds = %17
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  %264 = icmp eq %struct.TYPE_16__* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i32, i32* @ERROR, align 4
  %267 = call i32 (i32, i8*, ...) @elog(i32 %266, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %268

268:                                              ; preds = %265, %260
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @Int16GetDatum(i32 %277)
  %279 = call i32 @assign_simple_var(%struct.TYPE_19__* %269, %struct.TYPE_18__* %270, i32 %278, i32 0, i32 0)
  br label %392

280:                                              ; preds = %17
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = icmp eq %struct.TYPE_16__* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32, i32* @ERROR, align 4
  %287 = call i32 (i32, i8*, ...) @elog(i32 %286, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %280
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %347

297:                                              ; preds = %288
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = mul i64 4, %306
  %308 = trunc i64 %307 to i32
  %309 = call i32* @palloc(i32 %308)
  store i32* %309, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %310

310:                                              ; preds = %331, %297
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %334

314:                                              ; preds = %310
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @CStringGetTextDatum(i32 %325)
  %327 = load i32*, i32** %7, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %326, i32* %330, align 4
  br label %331

331:                                              ; preds = %314
  %332 = load i32, i32* %10, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %10, align 4
  br label %310

334:                                              ; preds = %310
  %335 = load i32, i32* %6, align 4
  %336 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32 %335, i32* %336, align 4
  %337 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %337, align 4
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %340 = load i32*, i32** %7, align 8
  %341 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %342 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %343 = load i32, i32* @TEXTOID, align 4
  %344 = call i32 @construct_md_array(i32* %340, i32* null, i32 1, i32* %341, i32* %342, i32 %343, i32 -1, i32 0, i8 signext 105)
  %345 = call i32 @PointerGetDatum(i32 %344)
  %346 = call i32 @assign_simple_var(%struct.TYPE_19__* %338, %struct.TYPE_18__* %339, i32 %345, i32 0, i32 1)
  br label %351

347:                                              ; preds = %288
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %350 = call i32 @assign_simple_var(%struct.TYPE_19__* %348, %struct.TYPE_18__* %349, i32 0, i32 1, i32 0)
  br label %351

351:                                              ; preds = %347, %334
  br label %392

352:                                              ; preds = %17
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %354, align 8
  %356 = icmp eq %struct.TYPE_17__* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load i32, i32* @ERROR, align 4
  %359 = call i32 (i32, i8*, ...) @elog(i32 %358, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  br label %360

360:                                              ; preds = %357, %352
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @assign_text_var(%struct.TYPE_19__* %361, %struct.TYPE_18__* %362, i8* %367)
  br label %392

369:                                              ; preds = %17
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %371, align 8
  %373 = icmp eq %struct.TYPE_17__* %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load i32, i32* @ERROR, align 4
  %376 = call i32 (i32, i8*, ...) @elog(i32 %375, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  br label %377

377:                                              ; preds = %374, %369
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 1
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @assign_text_var(%struct.TYPE_19__* %378, %struct.TYPE_18__* %379, i8* %384)
  br label %392

386:                                              ; preds = %17
  %387 = load i32, i32* @ERROR, align 4
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 (i32, i8*, ...) @elog(i32 %387, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %390)
  br label %392

392:                                              ; preds = %386, %377, %360, %351, %268, %246, %225, %205, %196, %133, %96, %33
  %393 = load i32, i32* %5, align 4
  %394 = call i32 @MemoryContextSwitchTo(i32 %393)
  br label %395

395:                                              ; preds = %392, %16
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @assign_simple_var(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BEFORE(i32) #1

declare dso_local i32 @assign_text_var(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @TRIGGER_FIRED_AFTER(i32) #1

declare dso_local i32 @TRIGGER_FIRED_INSTEAD(i32) #1

declare dso_local i32 @TRIGGER_FIRED_FOR_ROW(i32) #1

declare dso_local i32 @TRIGGER_FIRED_FOR_STATEMENT(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_INSERT(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_DELETE(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_TRUNCATE(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_14__*) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_14__*) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @CStringGetTextDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @construct_md_array(i32*, i32*, i32, i32*, i32*, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
