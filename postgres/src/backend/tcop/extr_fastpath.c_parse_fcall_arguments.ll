; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_parse_fcall_arguments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_parse_fcall_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i64, i64 }
%struct.fp_info = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"function call message contains %d arguments but function requires %d\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"function call message contains %d argument formats but %d arguments\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"invalid argument size %d in function call message\00", align 1
@ERRCODE_INVALID_BINARY_REPRESENTATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"incorrect binary data format in function argument %d\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"unsupported format code: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.fp_info*, %struct.TYPE_17__*)* @parse_fcall_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fcall_arguments(%struct.TYPE_16__* %0, %struct.fp_info* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.fp_info*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.fp_info* %1, %struct.fp_info** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32* null, i32** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i32 @pq_getmsgint(%struct.TYPE_16__* %20, i32 2)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64 @palloc(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %42, %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = call i32 @pq_getmsgint(%struct.TYPE_16__* %36, i32 2)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = call i32 @pq_getmsgint(%struct.TYPE_16__* %47, i32 2)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %50 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55, %46
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %65 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %67)
  %69 = call i32 @ereport(i32 %60, i32 %68)
  br label %70

70:                                               ; preds = %59, %55
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = call i32 @ereport(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %76, %70
  %89 = call i32 @initStringInfo(%struct.TYPE_16__* %11)
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %246, %88
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %249

94:                                               ; preds = %90
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = call i32 @pq_getmsgint(%struct.TYPE_16__* %95, i32 4)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %131

107:                                              ; preds = %94
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load i32, i32* @ERROR, align 4
  %119 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %120 = call i32 @errcode(i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = call i32 @ereport(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %117, %107
  %125 = call i32 @resetStringInfo(%struct.TYPE_16__* %11)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @pq_getmsgbytes(%struct.TYPE_16__* %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %11, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %99
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %13, align 4
  br label %149

140:                                              ; preds = %131
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %13, align 4
  br label %148

147:                                              ; preds = %140
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %147, %143
  br label %149

149:                                              ; preds = %148, %134
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %192

152:                                              ; preds = %149
  %153 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %154 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @getTypeInputInfo(i32 %159, i32* %14, i32* %15)
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  store i8* null, i8** %16, align 8
  br label %169

164:                                              ; preds = %152
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i8* @pg_client_to_server(i8* %166, i32 %167)
  store i8* %168, i8** %16, align 8
  br label %169

169:                                              ; preds = %164, %163
  %170 = load i32, i32* %14, align 4
  %171 = load i8*, i8** %16, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @OidInputFunctionCall(i32 %170, i8* %171, i32 %172, i32 -1)
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  store i32 %173, i32* %180, align 4
  %181 = load i8*, i8** %16, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %169
  %184 = load i8*, i8** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i8*, i8** %16, align 8
  %190 = call i32 @pfree(i8* %189)
  br label %191

191:                                              ; preds = %188, %183, %169
  br label %245

192:                                              ; preds = %149
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %237

195:                                              ; preds = %192
  %196 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %197 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @getTypeBinaryInputInfo(i32 %202, i32* %17, i32* %18)
  %204 = load i32, i32* %12, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %207

206:                                              ; preds = %195
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %19, align 8
  br label %208

207:                                              ; preds = %195
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %19, align 8
  br label %208

208:                                              ; preds = %207, %206
  %209 = load i32, i32* %17, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @OidReceiveFunctionCall(i32 %209, %struct.TYPE_16__* %210, i32 %211, i32 -1)
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  store i32 %212, i32* %219, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, -1
  br i1 %221, label %222, label %236

222:                                              ; preds = %208
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %224, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load i32, i32* @ERROR, align 4
  %230 = load i32, i32* @ERRCODE_INVALID_BINARY_REPRESENTATION, align 4
  %231 = call i32 @errcode(i32 %230)
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  %234 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  %235 = call i32 @ereport(i32 %229, i32 %234)
  br label %236

236:                                              ; preds = %228, %222, %208
  br label %244

237:                                              ; preds = %192
  %238 = load i32, i32* @ERROR, align 4
  %239 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %240 = call i32 @errcode(i32 %239)
  %241 = load i32, i32* %13, align 4
  %242 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  %243 = call i32 @ereport(i32 %238, i32 %242)
  br label %244

244:                                              ; preds = %237, %236
  br label %245

245:                                              ; preds = %244, %191
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  br label %90

249:                                              ; preds = %90
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %251 = call i32 @pq_getmsgint(%struct.TYPE_16__* %250, i32 2)
  ret i32 %251
}

declare dso_local i32 @pq_getmsgint(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_16__*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_16__*) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @pq_getmsgbytes(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @getTypeInputInfo(i32, i32*, i32*) #1

declare dso_local i8* @pg_client_to_server(i8*, i32) #1

declare dso_local i32 @OidInputFunctionCall(i32, i8*, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @getTypeBinaryInputInfo(i32, i32*, i32*) #1

declare dso_local i32 @OidReceiveFunctionCall(i32, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
