; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_run.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ftp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FTP_CMD_PORT = common dso_local global i32 0, align 4
@FTP_CMD_CLIENTS_MAX = common dso_local global i32 0, align 4
@E_FTP_RESULT_OK = common dso_local global i32 0, align 4
@ftp_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MicroPython FTP Server\00", align 1
@FTP_BUFFER_SIZE = common dso_local global i32 0, align 4
@E_FTP_RESULT_FAILED = common dso_local global i32 0, align 4
@E_FTP_RESULT_CONTINUE = common dso_local global i32 0, align 4
@FTP_DATA_TIMEOUT_MS = common dso_local global i32 0, align 4
@FTP_CYCLE_TIME_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftp_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  switch i32 %6, label %156 [
    i32 134, label %7
    i32 131, label %9
    i32 132, label %20
    i32 133, label %53
    i32 135, label %54
    i32 136, label %71
    i32 137, label %99
  ]

7:                                                ; preds = %0
  %8 = call i32 (...) @ftp_wait_for_enabled()
  br label %157

9:                                                ; preds = %0
  %10 = call i32 (...) @wlan_is_connected()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* @FTP_CMD_PORT, align 4
  %14 = load i32, i32* @FTP_CMD_CLIENTS_MAX, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @ftp_create_listening_socket(i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 1), i32 %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %18, %12, %9
  br label %157

20:                                               ; preds = %0
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 2), align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* @E_FTP_RESULT_OK, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 1), align 8
  %29 = call i32 @ftp_wait_for_connection(i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 2))
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 12), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 11), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 9), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 10, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 10, i32 1), align 4
  %32 = load i32, i32* @ftp_path, align 4
  %33 = call i32 @strcpy(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ftp_send_reply(i32 220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %157

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %23, %20
  %37 = call i32 (...) @SOCKETFIFO_IsEmpty()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 2), align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  %44 = icmp ne i32 %43, 128
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = call i32 (...) @ftp_process_cmd()
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  %48 = icmp ne i32 %47, 132
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %157

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %42, %39
  br label %52

52:                                               ; preds = %51, %36
  br label %157

53:                                               ; preds = %0
  br label %157

54:                                               ; preds = %0
  %55 = call i32 (...) @SOCKETFIFO_IsEmpty()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 8), align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* @FTP_BUFFER_SIZE, align 4
  %61 = call i32 @ftp_list_dir(i8* %59, i32 %60, i32* %1)
  %62 = load i32, i32* %1, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @ftp_send_data(i32 %65)
  br label %69

67:                                               ; preds = %57
  %68 = call i32 @ftp_send_reply(i32 226, i8* null)
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %69

69:                                               ; preds = %67, %64
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 9), align 8
  br label %70

70:                                               ; preds = %69, %54
  br label %157

71:                                               ; preds = %0
  %72 = call i32 (...) @SOCKETFIFO_IsEmpty()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 9), align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 8), align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32, i32* @FTP_BUFFER_SIZE, align 4
  %78 = call i32 @ftp_read_file(i8* %76, i32 %77, i32* %2)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @E_FTP_RESULT_FAILED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @ftp_send_reply(i32 451, i8* null)
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %97

84:                                               ; preds = %74
  %85 = load i32, i32* %2, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @ftp_send_data(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @E_FTP_RESULT_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @ftp_send_reply(i32 226, i8* null)
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %71
  br label %157

99:                                               ; preds = %0
  %100 = call i32 (...) @SOCKETFIFO_IsEmpty()
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %155

102:                                              ; preds = %99
  %103 = load i32, i32* @E_FTP_RESULT_OK, align 4
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 4), align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 8), align 8
  %106 = load i32, i32* @FTP_BUFFER_SIZE, align 4
  %107 = call i32 @ftp_recv_non_blocking(i64 %104, i64 %105, i32 %106, i32* %4)
  store i32 %107, i32* %5, align 4
  %108 = icmp eq i32 %103, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 9), align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 5), align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 8), align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @updater_write(i64 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %157

118:                                              ; preds = %112
  br label %128

119:                                              ; preds = %109
  %120 = load i32, i32* @E_FTP_RESULT_OK, align 4
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 8), align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @ftp_write_file(i8* %122, i32 %123)
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %157

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %118
  %129 = call i32 @ftp_send_reply(i32 451, i8* null)
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %154

130:                                              ; preds = %102
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @E_FTP_RESULT_CONTINUE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %137 = load i32, i32* @FTP_DATA_TIMEOUT_MS, align 4
  %138 = load i32, i32* @FTP_CYCLE_TIME_MS, align 4
  %139 = sdiv i32 %137, %138
  %140 = icmp sgt i32 %135, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = call i32 (...) @ftp_close_files()
  %143 = call i32 @ftp_send_reply(i32 426, i8* null)
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %144

144:                                              ; preds = %141, %134
  br label %153

145:                                              ; preds = %130
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 5), align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 5), align 8
  %149 = call i32 (...) @updater_finnish()
  br label %150

150:                                              ; preds = %148, %145
  %151 = call i32 (...) @ftp_close_files()
  %152 = call i32 @ftp_send_reply(i32 226, i8* null)
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %153

153:                                              ; preds = %150, %144
  br label %154

154:                                              ; preds = %153, %128
  br label %155

155:                                              ; preds = %154, %99
  br label %157

156:                                              ; preds = %0
  br label %157

157:                                              ; preds = %156, %155, %126, %117, %98, %70, %53, %52, %49, %31, %19, %7
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  switch i32 %158, label %192 [
    i32 129, label %159
    i32 128, label %160
    i32 130, label %177
  ]

159:                                              ; preds = %157
  br label %193

160:                                              ; preds = %157
  %161 = load i32, i32* @E_FTP_RESULT_OK, align 4
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 6), align 8
  %163 = call i32 @ftp_wait_for_connection(i64 %162, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 4))
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  br label %176

166:                                              ; preds = %160
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %169 = load i32, i32* @FTP_DATA_TIMEOUT_MS, align 4
  %170 = load i32, i32* @FTP_CYCLE_TIME_MS, align 4
  %171 = sdiv i32 %169, %170
  %172 = icmp sgt i32 %167, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %174 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 6))
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  br label %175

175:                                              ; preds = %173, %166
  br label %176

176:                                              ; preds = %175, %165
  br label %193

177:                                              ; preds = %157
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  %179 = icmp eq i32 %178, 132
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 7), align 8
  %183 = load i32, i32* @FTP_DATA_TIMEOUT_MS, align 4
  %184 = load i32, i32* @FTP_CYCLE_TIME_MS, align 4
  %185 = sdiv i32 %183, %184
  %186 = icmp sgt i32 %181, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 6))
  %189 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 4))
  %190 = call i32 (...) @ftp_close_filesystem_on_error()
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  br label %191

191:                                              ; preds = %187, %180, %177
  br label %193

192:                                              ; preds = %157
  br label %193

193:                                              ; preds = %192, %191, %176, %159
  %194 = call i32 (...) @ftp_send_from_fifo()
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 4), align 8
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  %199 = icmp sgt i32 %198, 132
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 3), align 8
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ftp_data, i32 0, i32 0), align 8
  br label %201

201:                                              ; preds = %200, %197, %193
  ret void
}

declare dso_local i32 @ftp_wait_for_enabled(...) #1

declare dso_local i32 @wlan_is_connected(...) #1

declare dso_local i32 @ftp_create_listening_socket(i64*, i32, i32) #1

declare dso_local i32 @ftp_wait_for_connection(i64, i64*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ftp_send_reply(i32, i8*) #1

declare dso_local i32 @SOCKETFIFO_IsEmpty(...) #1

declare dso_local i32 @ftp_process_cmd(...) #1

declare dso_local i32 @ftp_list_dir(i8*, i32, i32*) #1

declare dso_local i32 @ftp_send_data(i32) #1

declare dso_local i32 @ftp_read_file(i8*, i32, i32*) #1

declare dso_local i32 @ftp_recv_non_blocking(i64, i64, i32, i32*) #1

declare dso_local i32 @updater_write(i64, i32) #1

declare dso_local i32 @ftp_write_file(i8*, i32) #1

declare dso_local i32 @ftp_close_files(...) #1

declare dso_local i32 @updater_finnish(...) #1

declare dso_local i32 @servers_close_socket(i64*) #1

declare dso_local i32 @ftp_close_filesystem_on_error(...) #1

declare dso_local i32 @ftp_send_from_fifo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
