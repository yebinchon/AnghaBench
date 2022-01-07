; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c_gdbr_server_serve.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c_gdbr_server_serve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i8*, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vKill\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"qSupported\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"qTStatus\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"qC\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"qAttached\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vMustReplyEmpty\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"qTfV\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"qfThreadInfo\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"qsThreadInfo\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Hg\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Hc\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"vCont\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"qOffsets\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"qXfer:exec-file:read:\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"QStartNoAckMode\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"[noack mode enabled]\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Unknown packet: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_server_serve(%struct.TYPE_30__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %10 = icmp ne %struct.TYPE_30__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %442

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %17, %23, %58, %71, %91, %106, %119, %134, %149, %164, %179, %194, %209, %229, %244, %259, %284, %301, %318, %333, %348, %363, %378, %393, %419, %441
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %15 = call i64 @read_packet(%struct.TYPE_30__* %14, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %13

18:                                               ; preds = %13
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %13

24:                                               ; preds = %18
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @r_str_startswith(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @_server_handle_k(%struct.TYPE_30__* %31, i32 %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %442

35:                                               ; preds = %24
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @r_str_startswith(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @_server_handle_vKill(%struct.TYPE_30__* %42, i32 %43, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %442

46:                                               ; preds = %35
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @r_str_startswith(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %54 = call i32 @_server_handle_qSupported(%struct.TYPE_30__* %53)
  store i32 %54, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %442

58:                                               ; preds = %52
  br label %13

59:                                               ; preds = %46
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @r_str_startswith(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %67 = call i32 @_server_handle_qTStatus(%struct.TYPE_30__* %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %442

71:                                               ; preds = %65
  br label %13

72:                                               ; preds = %59
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @r_str_startswith(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @_server_handle_qC(%struct.TYPE_30__* %84, i32 %85, i8* %86)
  store i32 %87, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %442

91:                                               ; preds = %83
  br label %13

92:                                               ; preds = %78, %72
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @r_str_startswith(i8* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @_server_handle_qAttached(%struct.TYPE_30__* %99, i32 %100, i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %442

106:                                              ; preds = %98
  br label %13

107:                                              ; preds = %92
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @r_str_startswith(i8* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %115 = call i32 @_server_handle_vMustReplyEmpty(%struct.TYPE_30__* %114)
  store i32 %115, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %442

119:                                              ; preds = %113
  br label %13

120:                                              ; preds = %107
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @r_str_startswith(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @_server_handle_qTfV(%struct.TYPE_30__* %127, i32 %128, i8* %129)
  store i32 %130, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %442

134:                                              ; preds = %126
  br label %13

135:                                              ; preds = %120
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @r_str_startswith(i8* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @_server_handle_qfThreadInfo(%struct.TYPE_30__* %142, i32 %143, i8* %144)
  store i32 %145, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %442

149:                                              ; preds = %141
  br label %13

150:                                              ; preds = %135
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @r_str_startswith(i8* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @_server_handle_qsThreadInfo(%struct.TYPE_30__* %157, i32 %158, i8* %159)
  store i32 %160, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %4, align 4
  br label %442

164:                                              ; preds = %156
  br label %13

165:                                              ; preds = %150
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @r_str_startswith(i8* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @_server_handle_Hg(%struct.TYPE_30__* %172, i32 %173, i8* %174)
  store i32 %175, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  br label %442

179:                                              ; preds = %171
  br label %13

180:                                              ; preds = %165
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @r_str_startswith(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @_server_handle_Hc(%struct.TYPE_30__* %187, i32 %188, i8* %189)
  store i32 %190, i32* %8, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %4, align 4
  br label %442

194:                                              ; preds = %186
  br label %13

195:                                              ; preds = %180
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @r_str_startswith(i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @_server_handle_ques(%struct.TYPE_30__* %202, i32 %203, i8* %204)
  store i32 %205, i32* %8, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %4, align 4
  br label %442

209:                                              ; preds = %201
  br label %13

210:                                              ; preds = %195
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @r_str_startswith(i8* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %210
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i8*, i8** %7, align 8
  %225 = call i32 @_server_handle_g(%struct.TYPE_30__* %222, i32 %223, i8* %224)
  store i32 %225, i32* %8, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %4, align 4
  br label %442

229:                                              ; preds = %221
  br label %13

230:                                              ; preds = %216, %210
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @r_str_startswith(i8* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %230
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @_server_handle_vCont(%struct.TYPE_30__* %237, i32 %238, i8* %239)
  store i32 %240, i32* %8, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %4, align 4
  br label %442

244:                                              ; preds = %236
  br label %13

245:                                              ; preds = %230
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @r_str_startswith(i8* %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %245
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = load i8*, i8** %7, align 8
  %255 = call i32 @_server_handle_qOffsets(%struct.TYPE_30__* %252, i32 %253, i8* %254)
  store i32 %255, i32* %8, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %4, align 4
  br label %442

259:                                              ; preds = %251
  br label %13

260:                                              ; preds = %245
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 0
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 122
  br i1 %267, label %276, label %268

268:                                              ; preds = %260
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 0
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 90
  br i1 %275, label %276, label %285

276:                                              ; preds = %268, %260
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load i8*, i8** %7, align 8
  %280 = call i32 @_server_handle_z(%struct.TYPE_30__* %277, i32 %278, i8* %279)
  store i32 %280, i32* %8, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* %8, align 4
  store i32 %283, i32* %4, align 4
  br label %442

284:                                              ; preds = %276
  br label %13

285:                                              ; preds = %268
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 115
  br i1 %292, label %293, label %302

293:                                              ; preds = %285
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %295 = load i32, i32* %6, align 4
  %296 = load i8*, i8** %7, align 8
  %297 = call i32 @_server_handle_s(%struct.TYPE_30__* %294, i32 %295, i8* %296)
  store i32 %297, i32* %8, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %293
  %300 = load i32, i32* %8, align 4
  store i32 %300, i32* %4, align 4
  br label %442

301:                                              ; preds = %293
  br label %13

302:                                              ; preds = %285
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 0
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 99
  br i1 %309, label %310, label %319

310:                                              ; preds = %302
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %312 = load i32, i32* %6, align 4
  %313 = load i8*, i8** %7, align 8
  %314 = call i32 @_server_handle_c(%struct.TYPE_30__* %311, i32 %312, i8* %313)
  store i32 %314, i32* %8, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load i32, i32* %8, align 4
  store i32 %317, i32* %4, align 4
  br label %442

318:                                              ; preds = %310
  br label %13

319:                                              ; preds = %302
  %320 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = call i64 @r_str_startswith(i8* %322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %319
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %327 = load i32, i32* %6, align 4
  %328 = load i8*, i8** %7, align 8
  %329 = call i32 @_server_handle_m(%struct.TYPE_30__* %326, i32 %327, i8* %328)
  store i32 %329, i32* %8, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %325
  %332 = load i32, i32* %8, align 4
  store i32 %332, i32* %4, align 4
  br label %442

333:                                              ; preds = %325
  br label %13

334:                                              ; preds = %319
  %335 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %335, i32 0, i32 1
  %337 = load i8*, i8** %336, align 8
  %338 = call i64 @r_str_startswith(i8* %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %334
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %342 = load i32, i32* %6, align 4
  %343 = load i8*, i8** %7, align 8
  %344 = call i32 @_server_handle_M(%struct.TYPE_30__* %341, i32 %342, i8* %343)
  store i32 %344, i32* %8, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %340
  %347 = load i32, i32* %8, align 4
  store i32 %347, i32* %4, align 4
  br label %442

348:                                              ; preds = %340
  br label %13

349:                                              ; preds = %334
  %350 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %350, i32 0, i32 1
  %352 = load i8*, i8** %351, align 8
  %353 = call i64 @r_str_startswith(i8* %352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %349
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %357 = load i32, i32* %6, align 4
  %358 = load i8*, i8** %7, align 8
  %359 = call i32 @_server_handle_P(%struct.TYPE_30__* %356, i32 %357, i8* %358)
  store i32 %359, i32* %8, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %355
  %362 = load i32, i32* %8, align 4
  store i32 %362, i32* %4, align 4
  br label %442

363:                                              ; preds = %355
  br label %13

364:                                              ; preds = %349
  %365 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %365, i32 0, i32 1
  %367 = load i8*, i8** %366, align 8
  %368 = call i64 @r_str_startswith(i8* %367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %372 = load i32, i32* %6, align 4
  %373 = load i8*, i8** %7, align 8
  %374 = call i32 @_server_handle_p(%struct.TYPE_30__* %371, i32 %372, i8* %373)
  store i32 %374, i32* %8, align 4
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = load i32, i32* %8, align 4
  store i32 %377, i32* %4, align 4
  br label %442

378:                                              ; preds = %370
  br label %13

379:                                              ; preds = %364
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = call i64 @r_str_startswith(i8* %382, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %394

385:                                              ; preds = %379
  %386 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %387 = load i32, i32* %6, align 4
  %388 = load i8*, i8** %7, align 8
  %389 = call i32 @_server_handle_exec_file_read(%struct.TYPE_30__* %386, i32 %387, i8* %388)
  store i32 %389, i32* %8, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %385
  %392 = load i32, i32* %8, align 4
  store i32 %392, i32* %4, align 4
  br label %442

393:                                              ; preds = %385
  br label %13

394:                                              ; preds = %379
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 1
  %397 = load i8*, i8** %396, align 8
  %398 = call i64 @r_str_startswith(i8* %397, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %420

400:                                              ; preds = %394
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %402 = call i64 @send_ack(%struct.TYPE_30__* %401)
  %403 = icmp slt i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i32 -1, i32* %4, align 4
  br label %442

405:                                              ; preds = %400
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %406, i32 0, i32 2
  store i32 1, i32* %407, align 8
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %405
  %413 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  br label %414

414:                                              ; preds = %412, %405
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %416 = call i64 @send_msg(%struct.TYPE_30__* %415, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %417 = icmp slt i64 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  store i32 -1, i32* %4, align 4
  br label %442

419:                                              ; preds = %414
  br label %13

420:                                              ; preds = %394
  %421 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %422 = call i64 @send_ack(%struct.TYPE_30__* %421)
  %423 = icmp slt i64 %422, 0
  br i1 %423, label %428, label %424

424:                                              ; preds = %420
  %425 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %426 = call i64 @send_msg(%struct.TYPE_30__* %425, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0))
  %427 = icmp slt i64 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %424, %420
  %429 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %429, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %431, i64 %435
  store i8 0, i8* %436, align 1
  %437 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %437, i32 0, i32 1
  %439 = load i8*, i8** %438, align 8
  %440 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* %439)
  store i32 -1, i32* %4, align 4
  br label %442

441:                                              ; preds = %424
  br label %13

442:                                              ; preds = %428, %418, %404, %391, %376, %361, %346, %331, %316, %299, %282, %257, %242, %227, %207, %192, %177, %162, %147, %132, %117, %104, %89, %69, %56, %41, %30, %11
  %443 = load i32, i32* %4, align 4
  ret i32 %443
}

declare dso_local i64 @read_packet(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @_server_handle_k(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_vKill(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_qSupported(%struct.TYPE_30__*) #1

declare dso_local i32 @_server_handle_qTStatus(%struct.TYPE_30__*) #1

declare dso_local i32 @_server_handle_qC(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_qAttached(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_vMustReplyEmpty(%struct.TYPE_30__*) #1

declare dso_local i32 @_server_handle_qTfV(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_qfThreadInfo(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_qsThreadInfo(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_Hg(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_Hc(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_ques(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_g(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_vCont(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_qOffsets(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_z(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_s(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_c(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_m(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_M(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_P(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_p(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @_server_handle_exec_file_read(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i64 @send_ack(%struct.TYPE_30__*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @send_msg(%struct.TYPE_30__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
