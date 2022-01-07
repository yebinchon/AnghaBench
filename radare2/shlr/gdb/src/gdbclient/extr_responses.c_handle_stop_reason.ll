; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_responses.c_handle_stop_reason.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_responses.c_handle_stop_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_13__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@R_DEBUG_REASON_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@R_DEBUG_REASON_SIGNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rwatch\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"awatch\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vforkdone\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"swbreak\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"hwbreak\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@R_DEBUG_REASON_BREAKPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_stop_reason(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = call i32 @send_ack(%struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %404

13:                                               ; preds = %1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %62 [
    i32 79, label %19
    i32 87, label %56
    i32 88, label %59
  ]

19:                                               ; preds = %13
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = bitcast i32* %23 to i8*
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @unpack_hex(i8* %24, i32 %28, i8* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 @eprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = call i32 @send_ack(%struct.TYPE_20__* %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %404

45:                                               ; preds = %19
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = call i32 @memset(%struct.TYPE_13__* %47, i32 0, i32 4)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load i32, i32* @R_DEBUG_REASON_NONE, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 8
  store i32 %52, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %404

56:                                               ; preds = %13
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = call i32 @stop_reason_exit(%struct.TYPE_20__* %57)
  store i32 %58, i32* %2, align 4
  br label %404

59:                                               ; preds = %13
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = call i32 @stop_reason_terminated(%struct.TYPE_20__* %60)
  store i32 %61, i32* %2, align 4
  br label %404

62:                                               ; preds = %13
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 84
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %404

70:                                               ; preds = %62
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 2
  %87 = call i32 @memset(%struct.TYPE_13__* %86, i32 0, i32 4)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32 -1, i32* %90, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = bitcast i32* %94 to i8*
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = call i32 @sscanf(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %98)
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %70
  store i32 -1, i32* %2, align 4
  br label %404

102:                                              ; preds = %70
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @R_DEBUG_REASON_SIGNAL, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 8
  store i32 %106, i32* %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = bitcast i32* %113 to i8*
  %115 = call i8* @strtok(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %115, i8** %4, align 8
  br label %116

116:                                              ; preds = %390, %102
  %117 = load i8*, i8** %4, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %392

119:                                              ; preds = %116
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @r_str_startswith(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 13
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %159, label %130

130:                                              ; preds = %123
  %131 = load i8*, i8** %4, align 8
  %132 = call i8* @strchr(i8* %131, i8 signext 58)
  store i8* %132, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %390

135:                                              ; preds = %130
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 13
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 13
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @read_thread_id(i8* %138, i32* %142, i32* %146, i32 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %135
  br label %390

154:                                              ; preds = %135
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %390

159:                                              ; preds = %123, %119
  %160 = load i8*, i8** %4, align 8
  %161 = call i64 @r_str_startswith(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %159
  %164 = load i8*, i8** %4, align 8
  %165 = call i8* @strchr(i8* %164, i8 signext 58)
  store i8* %165, i8** %5, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  br label %390

168:                                              ; preds = %163
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %5, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @isxdigit(i8 signext %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  br label %390

176:                                              ; preds = %168
  %177 = load i8*, i8** %5, align 8
  %178 = call i64 @strtol(i8* %177, i32* null, i32 16)
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  br label %390

183:                                              ; preds = %159
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 5
  br i1 %188, label %189, label %389

189:                                              ; preds = %183
  %190 = load i8*, i8** %4, align 8
  %191 = call i64 @r_str_startswith(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %189
  %194 = load i8*, i8** %4, align 8
  %195 = call i64 @r_str_startswith(i8* %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i8*, i8** %4, align 8
  %199 = call i64 @r_str_startswith(i8* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %197, %193, %189
  %202 = load i8*, i8** %4, align 8
  %203 = call i8* @strchr(i8* %202, i8 signext 58)
  store i8* %203, i8** %5, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  br label %390

206:                                              ; preds = %201
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %5, align 8
  %209 = load i8*, i8** %5, align 8
  %210 = load i8, i8* %209, align 1
  %211 = call i32 @isxdigit(i8 signext %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %206
  br label %390

214:                                              ; preds = %206
  %215 = load i8*, i8** %5, align 8
  %216 = call i32 @strtoll(i8* %215, i32* null, i32 16)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 12
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 12
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  br label %390

225:                                              ; preds = %197
  %226 = load i8*, i8** %4, align 8
  %227 = call i64 @r_str_startswith(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %268

229:                                              ; preds = %225
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 11
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %268, label %236

236:                                              ; preds = %229
  %237 = load i8*, i8** %4, align 8
  %238 = call i8* @strchr(i8* %237, i8 signext 58)
  store i8* %238, i8** %5, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %236
  br label %390

241:                                              ; preds = %236
  %242 = load i8*, i8** %5, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %5, align 8
  %244 = load i8*, i8** %4, align 8
  %245 = call i32 @strlen(i8* %244)
  %246 = sdiv i32 %245, 2
  %247 = call i8* @calloc(i32 %246, i32 1)
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 11
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  store i8* %247, i8** %251, align 8
  %252 = icmp ne i8* %247, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %241
  br label %390

254:                                              ; preds = %241
  %255 = load i8*, i8** %5, align 8
  %256 = load i8*, i8** %5, align 8
  %257 = call i32 @strlen(i8* %256)
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 11
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @unpack_hex(i8* %255, i32 %257, i8* %262)
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 11
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  store i32 1, i32* %267, align 8
  br label %390

268:                                              ; preds = %229, %225
  %269 = load i8*, i8** %4, align 8
  %270 = call i64 @r_str_startswith(i8* %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %308

272:                                              ; preds = %268
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 10
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %308, label %279

279:                                              ; preds = %272
  %280 = load i8*, i8** %4, align 8
  %281 = call i8* @strchr(i8* %280, i8 signext 58)
  store i8* %281, i8** %5, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  br label %390

284:                                              ; preds = %279
  %285 = load i8*, i8** %5, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %5, align 8
  %287 = load i8*, i8** %5, align 8
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 10
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 10
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @read_thread_id(i8* %287, i32* %291, i32* %295, i32 %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %284
  br label %390

303:                                              ; preds = %284
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 10
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 0
  store i32 1, i32* %307, align 8
  br label %390

308:                                              ; preds = %272, %268
  %309 = load i8*, i8** %4, align 8
  %310 = call i64 @r_str_startswith(i8* %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %348

312:                                              ; preds = %308
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 9
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %348, label %319

319:                                              ; preds = %312
  %320 = load i8*, i8** %4, align 8
  %321 = call i8* @strchr(i8* %320, i8 signext 58)
  store i8* %321, i8** %5, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %319
  br label %390

324:                                              ; preds = %319
  %325 = load i8*, i8** %5, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %5, align 8
  %327 = load i8*, i8** %5, align 8
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 9
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 9
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @read_thread_id(i8* %327, i32* %331, i32* %335, i32 %339)
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %324
  br label %390

343:                                              ; preds = %324
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 9
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 0
  store i32 1, i32* %347, align 4
  br label %390

348:                                              ; preds = %312, %308
  %349 = load i8*, i8** %4, align 8
  %350 = call i64 @r_str_startswith(i8* %349, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 3
  store i32 1, i32* %355, align 4
  br label %390

356:                                              ; preds = %348
  %357 = load i8*, i8** %4, align 8
  %358 = call i64 @r_str_startswith(i8* %357, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %356
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 4
  store i32 1, i32* %363, align 8
  br label %390

364:                                              ; preds = %356
  %365 = load i8*, i8** %4, align 8
  %366 = call i64 @r_str_startswith(i8* %365, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 5
  store i32 1, i32* %371, align 4
  br label %390

372:                                              ; preds = %364
  %373 = load i8*, i8** %4, align 8
  %374 = call i64 @r_str_startswith(i8* %373, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 6
  store i32 1, i32* %379, align 8
  br label %390

380:                                              ; preds = %372
  %381 = load i8*, i8** %4, align 8
  %382 = call i64 @r_str_startswith(i8* %381, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %380
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 7
  store i32 1, i32* %387, align 4
  br label %390

388:                                              ; preds = %380
  br label %389

389:                                              ; preds = %388, %183
  br label %390

390:                                              ; preds = %389, %384, %376, %368, %360, %352, %343, %342, %323, %303, %302, %283, %254, %253, %240, %214, %213, %205, %176, %175, %167, %154, %153, %134
  %391 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %391, i8** %4, align 8
  br label %116

392:                                              ; preds = %116
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %396, 5
  br i1 %397, label %398, label %403

398:                                              ; preds = %392
  %399 = load i32, i32* @R_DEBUG_REASON_BREAKPOINT, align 4
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 8
  store i32 %399, i32* %402, align 8
  br label %403

403:                                              ; preds = %398, %392
  store i32 0, i32* %2, align 4
  br label %404

404:                                              ; preds = %403, %101, %69, %59, %56, %45, %44, %12
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @send_ack(%struct.TYPE_20__*) #1

declare dso_local i32 @unpack_hex(i8*, i32, i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @stop_reason_exit(%struct.TYPE_20__*) #1

declare dso_local i32 @stop_reason_terminated(%struct.TYPE_20__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @read_thread_id(i8*, i32*, i32*, i32) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
