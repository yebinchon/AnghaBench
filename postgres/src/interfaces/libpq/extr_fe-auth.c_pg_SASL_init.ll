; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_SASL_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_SASL_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, i64, i8*, i32, i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_18__ = type { i8* }

@.str = private unnamed_addr constant [46 x i8] c"Channel binding required, but SSL not in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"duplicate SASL authentication request\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"fe_sendauth: invalid authentication request from server: invalid list of authentication mechanisms\0A\00", align 1
@SCRAM_SHA_256_PLUS_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"channel binding is required, but client does not support it\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"server offered SCRAM-SHA-256-PLUS authentication over a non-SSL connection\0A\00", align 1
@SCRAM_SHA_256_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"none of the server's SASL authentication mechanisms are supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [110 x i8] c"channel binding is required, but server did not offer an authentication method that supports channel binding\0A\00", align 1
@PQnoPasswordSupplied = common dso_local global i8* null, align 8
@STATUS_OK = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @pg_SASL_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_SASL_init(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %13 = call i32 @initPQExpBuffer(%struct.TYPE_18__* %11)
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 114
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 4
  %29 = call i8* @libpq_gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @printfPQExpBuffer(i32* %28, i8* %29)
  br label %236

31:                                               ; preds = %21, %2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 4
  %39 = call i8* @libpq_gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @printfPQExpBuffer(i32* %38, i8* %39)
  br label %236

41:                                               ; preds = %31
  store i8* null, i8** %10, align 8
  br label %42

42:                                               ; preds = %107, %41
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = call i64 @pqGets(%struct.TYPE_18__* %11, %struct.TYPE_19__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 4
  %49 = call i32 @printfPQExpBuffer(i32* %48, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  br label %236

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @PQExpBufferDataBroken(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %245

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %108

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** @SCRAM_SHA_256_PLUS_NAME, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 114
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 4
  %86 = call i8* @libpq_gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @printfPQExpBuffer(i32* %85, i8* %86)
  br label %236

88:                                               ; preds = %75
  br label %94

89:                                               ; preds = %70
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 4
  %92 = call i8* @libpq_gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 @printfPQExpBuffer(i32* %91, i8* %92)
  br label %236

94:                                               ; preds = %88
  br label %107

95:                                               ; preds = %64
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** @SCRAM_SHA_256_NAME, align 8
  %99 = call i64 @strcmp(i8* %97, i8* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** @SCRAM_SHA_256_NAME, align 8
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %104, %101, %95
  br label %107

107:                                              ; preds = %106, %94
  br label %42

108:                                              ; preds = %63
  %109 = load i8*, i8** %10, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 4
  %114 = call i8* @libpq_gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32 @printfPQExpBuffer(i32* %113, i8* %114)
  br label %236

116:                                              ; preds = %108
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 114
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** @SCRAM_SHA_256_PLUS_NAME, align 8
  %127 = call i64 @strcmp(i8* %125, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 4
  %132 = call i8* @libpq_gettext(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i64 0, i64 0))
  %133 = call i32 @printfPQExpBuffer(i32* %131, i8* %132)
  br label %236

134:                                              ; preds = %124, %116
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %12, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %134
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %12, align 8
  br label %152

152:                                              ; preds = %148, %134
  %153 = load i8*, i8** %12, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %12, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %155, %152
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = load i8*, i8** @PQnoPasswordSupplied, align 8
  %165 = call i32 @printfPQExpBuffer(i32* %163, i8* %164)
  br label %236

166:                                              ; preds = %155
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 @pg_fe_scram_init(%struct.TYPE_19__* %167, i8* %168, i8* %169)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %166
  br label %245

178:                                              ; preds = %166
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @pg_fe_scram_exchange(i32 %181, i32* null, i32 -1, i8** %6, i32* %7, i32* %8, i32* %9)
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %236

189:                                              ; preds = %185, %178
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %191 = call i64 @pqPutMsgStart(i8 signext 112, i32 1, %struct.TYPE_19__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %236

194:                                              ; preds = %189
  %195 = load i8*, i8** %10, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = call i64 @pqPuts(i8* %195, %struct.TYPE_19__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %236

200:                                              ; preds = %194
  %201 = load i8*, i8** %6, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %217

203:                                              ; preds = %200
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %206 = call i64 @pqPutInt(i32 %204, i32 4, %struct.TYPE_19__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %236

209:                                              ; preds = %203
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %213 = call i64 @pqPutnchar(i8* %210, i32 %211, %struct.TYPE_19__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %236

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %200
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %219 = call i64 @pqPutMsgEnd(%struct.TYPE_19__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %236

222:                                              ; preds = %217
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %224 = call i64 @pqFlush(%struct.TYPE_19__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %236

227:                                              ; preds = %222
  %228 = call i32 @termPQExpBuffer(%struct.TYPE_18__* %11)
  %229 = load i8*, i8** %6, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 @free(i8* %232)
  br label %234

234:                                              ; preds = %231, %227
  %235 = load i32, i32* @STATUS_OK, align 4
  store i32 %235, i32* %3, align 4
  br label %258

236:                                              ; preds = %226, %221, %215, %208, %199, %193, %188, %161, %129, %111, %89, %83, %46, %36, %26
  %237 = call i32 @termPQExpBuffer(%struct.TYPE_18__* %11)
  %238 = load i8*, i8** %6, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i8*, i8** %6, align 8
  %242 = call i32 @free(i8* %241)
  br label %243

243:                                              ; preds = %240, %236
  %244 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %244, i32* %3, align 4
  br label %258

245:                                              ; preds = %177, %55
  %246 = call i32 @termPQExpBuffer(%struct.TYPE_18__* %11)
  %247 = load i8*, i8** %6, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i8*, i8** %6, align 8
  %251 = call i32 @free(i8* %250)
  br label %252

252:                                              ; preds = %249, %245
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 4
  %255 = call i8* @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %256 = call i32 @printfPQExpBuffer(i32* %254, i8* %255)
  %257 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %252, %243, %234
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_18__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i64 @pqGets(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @PQExpBufferDataBroken(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_fe_scram_init(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i32 @pg_fe_scram_exchange(i32, i32*, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @pqPuts(i8*, %struct.TYPE_19__*) #1

declare dso_local i64 @pqPutInt(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @pqPutnchar(i8*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_19__*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_19__*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_18__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
