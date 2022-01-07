; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_mutate_ce.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_mutate_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i64, i8*, i8*, i32, i64, i32, i64, i8*, i32, i8*, %struct.TYPE_2__, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.connection_entry = type { i64, i32, i64, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i32, i32, i32, i64, i64, i64, i32, i32*, i32, i32, i32 }
%struct.buffer = type { i64 }

@PROTO_TCP_CLIENT = common dso_local global i64 0, align 8
@PROTO_UDP = common dso_local global i64 0, align 8
@CE_DISABLED = common dso_local global i32 0, align 4
@M_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"--mssfix must specify a parameter\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"WARNING: '--proto udp6' is not compatible with '--socks-proxy' today.  Forcing IPv4 mode.\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"NOTICE: dual-stack mode for '--proto udp' does not work correctly with '--socks-proxy' today.  Forcing IPv4.\00", align 1
@DEV_TYPE_TAP = common dso_local global i32 0, align 4
@TAP_MTU_EXTRA_DEFAULT = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot pre-load tls-auth keyfile (%s)\00", align 1
@INLINE_FILE_TAG = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Cannot pre-load tls-crypt keyfile (%s)\00", align 1
@PROTO_TCP = common dso_local global i64 0, align 8
@PROTO_TCP_SERVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, %struct.connection_entry*)* @options_postprocess_mutate_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_postprocess_mutate_ce(%struct.options* %0, %struct.connection_entry* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca %struct.connection_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.buffer, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store %struct.connection_entry* %1, %struct.connection_entry** %4, align 8
  %8 = load %struct.options*, %struct.options** %3, align 8
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 16
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.options*, %struct.options** %3, align 8
  %12 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 15
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_type_enum(i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %16 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PROTO_TCP_CLIENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %22 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %21, i32 0, i32 21
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %27 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %32 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %31, i32 0, i32 19
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %37 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %30, %25, %20, %2
  %39 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %40 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PROTO_UDP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %46 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %45, i32 0, i32 14
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %51 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %50, i32 0, i32 21
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %56 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %55, i32 0, i32 20
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %61 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %60, i32 0, i32 19
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %66 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59, %54, %49, %44, %38
  %68 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %69 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %74 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %73, i32 0, i32 18
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.options*, %struct.options** %3, align 8
  %77 = getelementptr inbounds %struct.options, %struct.options* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.options*, %struct.options** %3, align 8
  %82 = getelementptr inbounds %struct.options, %struct.options* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %85 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i32, i32* @CE_DISABLED, align 4
  %90 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %91 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %90, i32 0, i32 17
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %80, %75
  %95 = load %struct.options*, %struct.options** %3, align 8
  %96 = getelementptr inbounds %struct.options, %struct.options* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @M_USAGE, align 4
  %102 = call i32 (i32, i8*, ...) @msg(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %105 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %104, i32 0, i32 14
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %103
  %109 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %110 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @proto_is_udp(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %116 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @AF_INET, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %122 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AF_INET6, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* @M_INFO, align 4
  %128 = call i32 (i32, i8*, ...) @msg(i32 %127, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %132

129:                                              ; preds = %120
  %130 = load i32, i32* @M_INFO, align 4
  %131 = call i32 (i32, i8*, ...) @msg(i32 %130, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i64, i64* @AF_INET, align 8
  %134 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %135 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %114, %108, %103
  %137 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %138 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %143 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %148 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %147, i32 0, i32 3
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %141, %136
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @DEV_TYPE_TAP, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %155 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %160 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %159, i32 0, i32 4
  store i32 1, i32* %160, align 4
  %161 = load i32, i32* @TAP_MTU_EXTRA_DEFAULT, align 4
  %162 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %163 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %162, i32 0, i32 12
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %153, %149
  %165 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %166 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %165, i32 0, i32 8
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %215, label %169

169:                                              ; preds = %164
  %170 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %171 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %170, i32 0, i32 7
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %215, label %174

174:                                              ; preds = %169
  %175 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %176 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %215, label %179

179:                                              ; preds = %174
  %180 = load %struct.options*, %struct.options** %3, align 8
  %181 = getelementptr inbounds %struct.options, %struct.options* %180, i32 0, i32 9
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %184 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %183, i32 0, i32 8
  store i8* %182, i8** %184, align 8
  %185 = load %struct.options*, %struct.options** %3, align 8
  %186 = getelementptr inbounds %struct.options, %struct.options* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %189 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %188, i32 0, i32 5
  store i8* %187, i8** %189, align 8
  %190 = load %struct.options*, %struct.options** %3, align 8
  %191 = getelementptr inbounds %struct.options, %struct.options* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %194 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %193, i32 0, i32 11
  store i32 %192, i32* %194, align 8
  %195 = load %struct.options*, %struct.options** %3, align 8
  %196 = getelementptr inbounds %struct.options, %struct.options* %195, i32 0, i32 7
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %199 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %198, i32 0, i32 7
  store i8* %197, i8** %199, align 8
  %200 = load %struct.options*, %struct.options** %3, align 8
  %201 = getelementptr inbounds %struct.options, %struct.options* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %204 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %203, i32 0, i32 6
  store i8* %202, i8** %204, align 8
  %205 = load %struct.options*, %struct.options** %3, align 8
  %206 = getelementptr inbounds %struct.options, %struct.options* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %209 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %208, i32 0, i32 10
  store i64 %207, i64* %209, align 8
  %210 = load %struct.options*, %struct.options** %3, align 8
  %211 = getelementptr inbounds %struct.options, %struct.options* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %214 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %213, i32 0, i32 9
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %179, %174, %169, %164
  %216 = load %struct.options*, %struct.options** %3, align 8
  %217 = getelementptr inbounds %struct.options, %struct.options* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %291

220:                                              ; preds = %215
  %221 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %222 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %221, i32 0, i32 8
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %255

225:                                              ; preds = %220
  %226 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %227 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %226, i32 0, i32 5
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %255, label %230

230:                                              ; preds = %225
  %231 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %232 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %231, i32 0, i32 8
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.options*, %struct.options** %3, align 8
  %235 = getelementptr inbounds %struct.options, %struct.options* %234, i32 0, i32 3
  %236 = call i64 @buffer_read_from_file(i8* %233, i32* %235)
  %237 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  store i64 %236, i64* %237, align 8
  %238 = call i32 @buf_valid(%struct.buffer* %6)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %230
  %241 = load i32, i32* @M_FATAL, align 4
  %242 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %243 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %242, i32 0, i32 8
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i32, i8*, ...) @msg(i32 %241, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %244)
  br label %246

246:                                              ; preds = %240, %230
  %247 = load i8*, i8** @INLINE_FILE_TAG, align 8
  %248 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %249 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %248, i32 0, i32 8
  store i8* %247, i8** %249, align 8
  %250 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %254 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  br label %255

255:                                              ; preds = %246, %225, %220
  %256 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %257 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %256, i32 0, i32 7
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %290

260:                                              ; preds = %255
  %261 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %262 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %261, i32 0, i32 6
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %290, label %265

265:                                              ; preds = %260
  %266 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %267 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %266, i32 0, i32 7
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.options*, %struct.options** %3, align 8
  %270 = getelementptr inbounds %struct.options, %struct.options* %269, i32 0, i32 3
  %271 = call i64 @buffer_read_from_file(i8* %268, i32* %270)
  %272 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i64 %271, i64* %272, align 8
  %273 = call i32 @buf_valid(%struct.buffer* %7)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %265
  %276 = load i32, i32* @M_FATAL, align 4
  %277 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %278 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %277, i32 0, i32 7
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 (i32, i8*, ...) @msg(i32 %276, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %279)
  br label %281

281:                                              ; preds = %275, %265
  %282 = load i8*, i8** @INLINE_FILE_TAG, align 8
  %283 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %284 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %283, i32 0, i32 7
  store i8* %282, i8** %284, align 8
  %285 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to i8*
  %288 = load %struct.connection_entry*, %struct.connection_entry** %4, align 8
  %289 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %288, i32 0, i32 6
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %281, %260, %255
  br label %291

291:                                              ; preds = %290, %215
  ret void
}

declare dso_local i32 @dev_type_enum(i32, i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i64 @proto_is_udp(i64) #1

declare dso_local i64 @buffer_read_from_file(i8*, i32*) #1

declare dso_local i32 @buf_valid(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
