; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_connect.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_16__, i32, i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [55 x i8] c"qSupported:multiprocess+;qRelocInsn+;xmlRegisters=i386\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"R2_GDB_PKTSZ\00", align 1
@GDB_MAX_PKTSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@QSUPPORTED_MAX_RETRIES = common dso_local global i32 0, align 4
@_isbreaked = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"QStartNoAckMode\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@GDB_REMOTE_TYPE_LLDB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"qC\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Hc-1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_connect(%struct.TYPE_17__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %240

20:                                               ; preds = %16
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = call i32 @gdbr_lock_enter(%struct.TYPE_17__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %236

25:                                               ; preds = %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 64, i32* %28, align 8
  store i64 0, i64* %12, align 8
  %29 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strtoul(i8* %32, i32* null, i32 10)
  store i64 %33, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @GDB_MAX_PKTSZ, align 4
  %38 = call i8* @R_MAX(i64 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @r_socket_connect_serial(i32 %52, i8* %53, i32 %54, i32 1)
  store i32 %55, i32* %9, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @sdb_fmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = call i32 @r_socket_connect_tcp(i32 %59, i8* %60, i32 %62, i32 400)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %56, %49
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 -1, i32* %9, align 4
  br label %236

68:                                               ; preds = %64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = call i32 @send_ack(%struct.TYPE_17__* %69)
  store i32 %70, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %236

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = call i32 @read_packet(%struct.TYPE_17__* %74, i32 1)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = call i8* (...) @r_cons_sleep_begin()
  store i8* %78, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %109, %73
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @QSUPPORTED_MAX_RETRIES, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @_isbreaked, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ]
  br i1 %88, label %89, label %112

89:                                               ; preds = %87
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @send_msg(%struct.TYPE_17__* %90, i8* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %109

96:                                               ; preds = %89
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = call i32 @read_packet(%struct.TYPE_17__* %97, i32 0)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %109

102:                                              ; preds = %96
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = call i32 @handle_qSupported(%struct.TYPE_17__* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %102
  br label %112

109:                                              ; preds = %107, %101, %95
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %79

112:                                              ; preds = %108, %87
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @r_cons_sleep_end(i8* %113)
  %115 = load i32, i32* @_isbreaked, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* @_isbreaked, align 4
  store i32 -1, i32* %9, align 4
  br label %236

118:                                              ; preds = %112
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %236

122:                                              ; preds = %118
  %123 = load i64, i64* %12, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @R_MIN(i64 %126, i32 %130)
  %132 = load i32, i32* @GDB_MAX_PKTSZ, align 4
  %133 = call i8* @R_MAX(i64 %131, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %125, %122
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = call i32 @send_msg(%struct.TYPE_17__* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %146, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %236

149:                                              ; preds = %144
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = call i32 @read_packet(%struct.TYPE_17__* %150, i32 0)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @strncmp(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %149
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = call i32 @send_ack(%struct.TYPE_17__* %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %149
  br label %163

163:                                              ; preds = %162, %138
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @GDB_REMOTE_TYPE_LLDB, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = call i32 @gdbr_connect_lldb(%struct.TYPE_17__* %170)
  store i32 %171, i32* %9, align 4
  br label %236

172:                                              ; preds = %163
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 6
  store i64 0, i64* %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 5
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %181 = call i32 @send_msg(%struct.TYPE_17__* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %181, i32* %9, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %236

184:                                              ; preds = %172
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = call i32 @read_packet(%struct.TYPE_17__* %185, i32 0)
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = call i32 @handle_qC(%struct.TYPE_17__* %187)
  store i32 %188, i32* %9, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %184
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %196 = call i32 @gdbr_check_vcont(%struct.TYPE_17__* %195)
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @gdbr_select(%struct.TYPE_17__* %197, i64 %200, i32 0)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %204

204:                                              ; preds = %203, %194
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = call i32 @send_msg(%struct.TYPE_17__* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %206, i32* %9, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %236

209:                                              ; preds = %204
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %211 = call i32 @read_packet(%struct.TYPE_17__* %210, i32 0)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = call i32 @send_ack(%struct.TYPE_17__* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %236

217:                                              ; preds = %209
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @strcmp(i32 %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223, %217
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %232 = call i32 @gdbr_read_target_xml(%struct.TYPE_17__* %231)
  br label %233

233:                                              ; preds = %230, %224
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %235 = call i32 @reg_cache_init(%struct.TYPE_17__* %234)
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %233, %216, %208, %183, %169, %148, %121, %117, %72, %67, %24
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %238 = call i32 @gdbr_lock_leave(%struct.TYPE_17__* %237)
  %239 = load i32, i32* %9, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %19
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_17__*) #1

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i8* @R_MAX(i64, i32) #1

declare dso_local i32 @r_socket_connect_serial(i32, i8*, i32, i32) #1

declare dso_local i32 @r_socket_connect_tcp(i32, i8*, i32, i32) #1

declare dso_local i32 @sdb_fmt(i8*, i32) #1

declare dso_local i32 @send_ack(%struct.TYPE_17__*) #1

declare dso_local i32 @read_packet(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @r_cons_sleep_begin(...) #1

declare dso_local i32 @send_msg(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @handle_qSupported(%struct.TYPE_17__*) #1

declare dso_local i32 @r_cons_sleep_end(i8*) #1

declare dso_local i64 @R_MIN(i64, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @gdbr_connect_lldb(%struct.TYPE_17__*) #1

declare dso_local i32 @handle_qC(%struct.TYPE_17__*) #1

declare dso_local i32 @gdbr_check_vcont(%struct.TYPE_17__*) #1

declare dso_local i64 @gdbr_select(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @gdbr_read_target_xml(%struct.TYPE_17__*) #1

declare dso_local i32 @reg_cache_init(%struct.TYPE_17__*) #1

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
