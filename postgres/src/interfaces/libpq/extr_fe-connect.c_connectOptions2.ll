; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_connectOptions2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_connectOptions2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i8* }

@CONNECTION_BAD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"could not match %d host names to %d hostaddr values\0A\00", align 1
@CHT_HOST_ADDRESS = common dso_local global i8* null, align 8
@CHT_HOST_NAME = common dso_local global i8* null, align 8
@DefaultHost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"could not match %d port numbers to %d hosts\0A\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PGPASSFILE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prefer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid channel_binding value: \22%s\22\0A\00", align 1
@DefaultChannelBinding = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"verify-ca\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"verify-full\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"invalid sslmode value: \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"sslmode value \22%s\22 invalid when SSL support is not compiled in\0A\00", align 1
@DefaultSSLMode = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"invalid gssencmode value: \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"gssencmode value \22%s\22 invalid when GSSAPI support is not compiled in\0A\00", align 1
@DefaultGSSMode = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"invalid target_session_attrs value: \22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@CHT_UNIX_SOCKET = common dso_local global i8* null, align 8
@DEFAULT_PGSOCKET_DIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @connectOptions2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connectOptions2(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 17
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @count_comma_separated_elems(i8* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %63

38:                                               ; preds = %22, %1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @count_comma_separated_elems(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %62

59:                                               ; preds = %43, %38
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %51
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @calloc(i32 %66, i32 40)
  %68 = inttoptr i64 %67 to %struct.TYPE_4__*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 16
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 16
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp eq %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %881

76:                                               ; preds = %63
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %140

81:                                               ; preds = %76
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %140

89:                                               ; preds = %81
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %124, %89
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %93
  %103 = phi i1 [ false, %93 ], [ %101, %99 ]
  br i1 %103, label %104, label %127

104:                                              ; preds = %102
  %105 = call i8* @parse_comma_separated_list(i8** %5, i32* %6)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 16
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %105, i8** %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 16
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %104
  br label %881

123:                                              ; preds = %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %93

127:                                              ; preds = %102
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @Assert(i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  br label %140

140:                                              ; preds = %127, %81, %76
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %216

145:                                              ; preds = %140
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %216

153:                                              ; preds = %145
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %188, %153
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br label %166

166:                                              ; preds = %163, %157
  %167 = phi i1 [ false, %157 ], [ %165, %163 ]
  br i1 %167, label %168, label %191

168:                                              ; preds = %166
  %169 = call i8* @parse_comma_separated_list(i8** %7, i32* %8)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 16
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i8* %169, i8** %176, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 16
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %168
  br label %881

187:                                              ; preds = %168
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %157

191:                                              ; preds = %166
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %195, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %194, %191
  %201 = load i8*, i8** @CONNECTION_BAD, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 15
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 14
  %206 = call i32 @libpq_gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @count_comma_separated_elems(i8* %209)
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %205, i32 %206, i8* %210, i32 %213)
  store i32 0, i32* %2, align 4
  br label %889

215:                                              ; preds = %194
  br label %216

216:                                              ; preds = %215, %145, %140
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %289, %216
  %218 = load i32, i32* %4, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %292

223:                                              ; preds = %217
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 16
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  store %struct.TYPE_4__* %229, %struct.TYPE_4__** %9, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %246

234:                                              ; preds = %223
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %234
  %243 = load i8*, i8** @CHT_HOST_ADDRESS, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 4
  store i8* %243, i8** %245, align 8
  br label %288

246:                                              ; preds = %234, %223
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %263

251:                                              ; preds = %246
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 0
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load i8*, i8** @CHT_HOST_NAME, align 8
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 4
  store i8* %260, i8** %262, align 8
  br label %287

263:                                              ; preds = %251, %246
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @free(i8* %271)
  br label %273

273:                                              ; preds = %268, %263
  %274 = load i8*, i8** @DefaultHost, align 8
  %275 = call i8* @strdup(i8* %274)
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load i8*, i8** @CHT_HOST_NAME, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 4
  store i8* %278, i8** %280, align 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = icmp eq i8* %283, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %273
  br label %881

286:                                              ; preds = %273
  br label %287

287:                                              ; preds = %286, %259
  br label %288

288:                                              ; preds = %287, %242
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %4, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %4, align 4
  br label %217

292:                                              ; preds = %217
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %412

297:                                              ; preds = %292
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 3
  %300 = load i8*, i8** %299, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 0
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %412

305:                                              ; preds = %297
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 3
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %309

309:                                              ; preds = %340, %305
  %310 = load i32, i32* %4, align 4
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = icmp slt i32 %310, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load i32, i32* %11, align 4
  %317 = icmp ne i32 %316, 0
  br label %318

318:                                              ; preds = %315, %309
  %319 = phi i1 [ false, %309 ], [ %317, %315 ]
  br i1 %319, label %320, label %343

320:                                              ; preds = %318
  %321 = call i8* @parse_comma_separated_list(i8** %10, i32* %11)
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 16
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  store i8* %321, i8** %328, align 8
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 16
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %330, align 8
  %332 = load i32, i32* %4, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 2
  %336 = load i8*, i8** %335, align 8
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %320
  br label %881

339:                                              ; preds = %320
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %4, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %4, align 4
  br label %309

343:                                              ; preds = %318
  %344 = load i32, i32* %4, align 4
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %386

346:                                              ; preds = %343
  %347 = load i32, i32* %11, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %386, label %349

349:                                              ; preds = %346
  store i32 1, i32* %4, align 4
  br label %350

350:                                              ; preds = %382, %349
  %351 = load i32, i32* %4, align 4
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %385

356:                                              ; preds = %350
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 16
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i64 0
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = call i8* @strdup(i8* %362)
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 16
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = load i32, i32* %4, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  store i8* %363, i8** %370, align 8
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 16
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load i8*, i8** %377, align 8
  %379 = icmp eq i8* %378, null
  br i1 %379, label %380, label %381

380:                                              ; preds = %356
  br label %881

381:                                              ; preds = %356
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %4, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %4, align 4
  br label %350

385:                                              ; preds = %350
  br label %411

386:                                              ; preds = %346, %343
  %387 = load i32, i32* %11, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %4, align 4
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = icmp ne i32 %390, %393
  br i1 %394, label %395, label %410

395:                                              ; preds = %389, %386
  %396 = load i8*, i8** @CONNECTION_BAD, align 8
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 15
  store i8* %396, i8** %398, align 8
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 14
  %401 = call i32 @libpq_gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 3
  %404 = load i8*, i8** %403, align 8
  %405 = call i8* @count_comma_separated_elems(i8* %404)
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %400, i32 %401, i8* %405, i32 %408)
  store i32 0, i32* %2, align 4
  br label %889

410:                                              ; preds = %389
  br label %411

411:                                              ; preds = %410, %385
  br label %412

412:                                              ; preds = %411, %297, %292
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 4
  %415 = load i8*, i8** %414, align 8
  %416 = icmp eq i8* %415, null
  br i1 %416, label %425, label %417

417:                                              ; preds = %412
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 4
  %420 = load i8*, i8** %419, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 0
  %422 = load i8, i8* %421, align 1
  %423 = sext i8 %422 to i32
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %450

425:                                              ; preds = %417, %412
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 4
  %428 = load i8*, i8** %427, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 4
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @free(i8* %433)
  br label %435

435:                                              ; preds = %430, %425
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 14
  %438 = call i8* @pg_fe_getauthname(i32* %437)
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 4
  store i8* %438, i8** %440, align 8
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 4
  %443 = load i8*, i8** %442, align 8
  %444 = icmp ne i8* %443, null
  br i1 %444, label %449, label %445

445:                                              ; preds = %435
  %446 = load i8*, i8** @CONNECTION_BAD, align 8
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 15
  store i8* %446, i8** %448, align 8
  store i32 0, i32* %2, align 4
  br label %889

449:                                              ; preds = %435
  br label %450

450:                                              ; preds = %449, %417
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 5
  %453 = load i8*, i8** %452, align 8
  %454 = icmp eq i8* %453, null
  br i1 %454, label %463, label %455

455:                                              ; preds = %450
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 5
  %458 = load i8*, i8** %457, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 0
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %486

463:                                              ; preds = %455, %450
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 5
  %466 = load i8*, i8** %465, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %468, label %473

468:                                              ; preds = %463
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 5
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @free(i8* %471)
  br label %473

473:                                              ; preds = %468, %463
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 4
  %476 = load i8*, i8** %475, align 8
  %477 = call i8* @strdup(i8* %476)
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 5
  store i8* %477, i8** %479, align 8
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 5
  %482 = load i8*, i8** %481, align 8
  %483 = icmp ne i8* %482, null
  br i1 %483, label %485, label %484

484:                                              ; preds = %473
  br label %881

485:                                              ; preds = %473
  br label %486

486:                                              ; preds = %485, %455
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i32 0, i32 6
  %489 = load i8*, i8** %488, align 8
  %490 = icmp eq i8* %489, null
  br i1 %490, label %499, label %491

491:                                              ; preds = %486
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 6
  %494 = load i8*, i8** %493, align 8
  %495 = getelementptr inbounds i8, i8* %494, i64 0
  %496 = load i8, i8* %495, align 1
  %497 = sext i8 %496 to i32
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %630

499:                                              ; preds = %491, %486
  %500 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 7
  %502 = load i8*, i8** %501, align 8
  %503 = icmp eq i8* %502, null
  br i1 %503, label %512, label %504

504:                                              ; preds = %499
  %505 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 7
  %507 = load i8*, i8** %506, align 8
  %508 = getelementptr inbounds i8, i8* %507, i64 0
  %509 = load i8, i8* %508, align 1
  %510 = sext i8 %509 to i32
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %552

512:                                              ; preds = %504, %499
  %513 = load i32, i32* @MAXPGPATH, align 4
  %514 = zext i32 %513 to i64
  %515 = call i8* @llvm.stacksave()
  store i8* %515, i8** %12, align 8
  %516 = alloca i8, i64 %514, align 16
  store i64 %514, i64* %13, align 8
  %517 = trunc i64 %514 to i32
  %518 = call i64 @pqGetHomeDirectory(i8* %516, i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %547

520:                                              ; preds = %512
  %521 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %521, i32 0, i32 7
  %523 = load i8*, i8** %522, align 8
  %524 = icmp ne i8* %523, null
  br i1 %524, label %525, label %530

525:                                              ; preds = %520
  %526 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 7
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 @free(i8* %528)
  br label %530

530:                                              ; preds = %525, %520
  %531 = load i32, i32* @MAXPGPATH, align 4
  %532 = call i8* @malloc(i32 %531)
  %533 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 7
  store i8* %532, i8** %534, align 8
  %535 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 7
  %537 = load i8*, i8** %536, align 8
  %538 = icmp ne i8* %537, null
  br i1 %538, label %540, label %539

539:                                              ; preds = %530
  store i32 2, i32* %14, align 4
  br label %548

540:                                              ; preds = %530
  %541 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %542 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %541, i32 0, i32 7
  %543 = load i8*, i8** %542, align 8
  %544 = load i32, i32* @MAXPGPATH, align 4
  %545 = load i8*, i8** @PGPASSFILE, align 8
  %546 = call i32 @snprintf(i8* %543, i32 %544, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %516, i8* %545)
  br label %547

547:                                              ; preds = %540, %512
  store i32 0, i32* %14, align 4
  br label %548

548:                                              ; preds = %539, %547
  %549 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %549)
  %550 = load i32, i32* %14, align 4
  switch i32 %550, label %891 [
    i32 0, label %551
    i32 2, label %881
  ]

551:                                              ; preds = %548
  br label %552

552:                                              ; preds = %551, %504
  %553 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %553, i32 0, i32 7
  %555 = load i8*, i8** %554, align 8
  %556 = icmp ne i8* %555, null
  br i1 %556, label %557, label %629

557:                                              ; preds = %552
  %558 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i32 0, i32 7
  %560 = load i8*, i8** %559, align 8
  %561 = getelementptr inbounds i8, i8* %560, i64 0
  %562 = load i8, i8* %561, align 1
  %563 = sext i8 %562 to i32
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %629

565:                                              ; preds = %557
  store i32 0, i32* %4, align 4
  br label %566

566:                                              ; preds = %625, %565
  %567 = load i32, i32* %4, align 4
  %568 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %569 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 8
  %571 = icmp slt i32 %567, %570
  br i1 %571, label %572, label %628

572:                                              ; preds = %566
  %573 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %574 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %573, i32 0, i32 16
  %575 = load %struct.TYPE_4__*, %struct.TYPE_4__** %574, align 8
  %576 = load i32, i32* %4, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %575, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i32 0, i32 1
  %580 = load i8*, i8** %579, align 8
  store i8* %580, i8** %15, align 8
  %581 = load i8*, i8** %15, align 8
  %582 = icmp eq i8* %581, null
  br i1 %582, label %589, label %583

583:                                              ; preds = %572
  %584 = load i8*, i8** %15, align 8
  %585 = getelementptr inbounds i8, i8* %584, i64 0
  %586 = load i8, i8* %585, align 1
  %587 = sext i8 %586 to i32
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %598

589:                                              ; preds = %583, %572
  %590 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %591 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %590, i32 0, i32 16
  %592 = load %struct.TYPE_4__*, %struct.TYPE_4__** %591, align 8
  %593 = load i32, i32* %4, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %595, i32 0, i32 0
  %597 = load i8*, i8** %596, align 8
  store i8* %597, i8** %15, align 8
  br label %598

598:                                              ; preds = %589, %583
  %599 = load i8*, i8** %15, align 8
  %600 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %600, i32 0, i32 16
  %602 = load %struct.TYPE_4__*, %struct.TYPE_4__** %601, align 8
  %603 = load i32, i32* %4, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %602, i64 %604
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 2
  %607 = load i8*, i8** %606, align 8
  %608 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %609 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %608, i32 0, i32 5
  %610 = load i8*, i8** %609, align 8
  %611 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %612 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %611, i32 0, i32 4
  %613 = load i8*, i8** %612, align 8
  %614 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %615 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %614, i32 0, i32 7
  %616 = load i8*, i8** %615, align 8
  %617 = call i32 @passwordFromFile(i8* %599, i8* %607, i8* %610, i8* %613, i8* %616)
  %618 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %619 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %618, i32 0, i32 16
  %620 = load %struct.TYPE_4__*, %struct.TYPE_4__** %619, align 8
  %621 = load i32, i32* %4, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i32 0, i32 3
  store i32 %617, i32* %624, align 8
  br label %625

625:                                              ; preds = %598
  %626 = load i32, i32* %4, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %4, align 4
  br label %566

628:                                              ; preds = %566
  br label %629

629:                                              ; preds = %628, %557, %552
  br label %630

630:                                              ; preds = %629, %491
  %631 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %632 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %631, i32 0, i32 8
  %633 = load i8*, i8** %632, align 8
  %634 = icmp ne i8* %633, null
  br i1 %634, label %635, label %665

635:                                              ; preds = %630
  %636 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %637 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %636, i32 0, i32 8
  %638 = load i8*, i8** %637, align 8
  %639 = call i64 @strcmp(i8* %638, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %641, label %664

641:                                              ; preds = %635
  %642 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %643 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %642, i32 0, i32 8
  %644 = load i8*, i8** %643, align 8
  %645 = call i64 @strcmp(i8* %644, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %664

647:                                              ; preds = %641
  %648 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %649 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %648, i32 0, i32 8
  %650 = load i8*, i8** %649, align 8
  %651 = call i64 @strcmp(i8* %650, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %664

653:                                              ; preds = %647
  %654 = load i8*, i8** @CONNECTION_BAD, align 8
  %655 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %656 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %655, i32 0, i32 15
  store i8* %654, i8** %656, align 8
  %657 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %658 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %657, i32 0, i32 14
  %659 = call i32 @libpq_gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %660 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %661 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %660, i32 0, i32 8
  %662 = load i8*, i8** %661, align 8
  %663 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %658, i32 %659, i8* %662)
  store i32 0, i32* %2, align 4
  br label %889

664:                                              ; preds = %647, %641, %635
  br label %676

665:                                              ; preds = %630
  %666 = load i8*, i8** @DefaultChannelBinding, align 8
  %667 = call i8* @strdup(i8* %666)
  %668 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %669 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %668, i32 0, i32 8
  store i8* %667, i8** %669, align 8
  %670 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %671 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %670, i32 0, i32 8
  %672 = load i8*, i8** %671, align 8
  %673 = icmp ne i8* %672, null
  br i1 %673, label %675, label %674

674:                                              ; preds = %665
  br label %881

675:                                              ; preds = %665
  br label %676

676:                                              ; preds = %675, %664
  %677 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %678 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %677, i32 0, i32 9
  %679 = load i8*, i8** %678, align 8
  %680 = icmp ne i8* %679, null
  br i1 %680, label %681, label %748

681:                                              ; preds = %676
  %682 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %683 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %682, i32 0, i32 9
  %684 = load i8*, i8** %683, align 8
  %685 = call i64 @strcmp(i8* %684, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %728

687:                                              ; preds = %681
  %688 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %689 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %688, i32 0, i32 9
  %690 = load i8*, i8** %689, align 8
  %691 = call i64 @strcmp(i8* %690, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %728

693:                                              ; preds = %687
  %694 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %695 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %694, i32 0, i32 9
  %696 = load i8*, i8** %695, align 8
  %697 = call i64 @strcmp(i8* %696, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %698 = icmp ne i64 %697, 0
  br i1 %698, label %699, label %728

699:                                              ; preds = %693
  %700 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %701 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %700, i32 0, i32 9
  %702 = load i8*, i8** %701, align 8
  %703 = call i64 @strcmp(i8* %702, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %704 = icmp ne i64 %703, 0
  br i1 %704, label %705, label %728

705:                                              ; preds = %699
  %706 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %707 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %706, i32 0, i32 9
  %708 = load i8*, i8** %707, align 8
  %709 = call i64 @strcmp(i8* %708, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %728

711:                                              ; preds = %705
  %712 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %713 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %712, i32 0, i32 9
  %714 = load i8*, i8** %713, align 8
  %715 = call i64 @strcmp(i8* %714, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %717, label %728

717:                                              ; preds = %711
  %718 = load i8*, i8** @CONNECTION_BAD, align 8
  %719 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %720 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %719, i32 0, i32 15
  store i8* %718, i8** %720, align 8
  %721 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %722 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %721, i32 0, i32 14
  %723 = call i32 @libpq_gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %724 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %725 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %724, i32 0, i32 9
  %726 = load i8*, i8** %725, align 8
  %727 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %722, i32 %723, i8* %726)
  store i32 0, i32* %2, align 4
  br label %889

728:                                              ; preds = %711, %705, %699, %693, %687, %681
  %729 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %730 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %729, i32 0, i32 9
  %731 = load i8*, i8** %730, align 8
  %732 = getelementptr inbounds i8, i8* %731, i64 0
  %733 = load i8, i8* %732, align 1
  %734 = sext i8 %733 to i32
  switch i32 %734, label %747 [
    i32 97, label %735
    i32 112, label %735
    i32 114, label %736
    i32 118, label %736
  ]

735:                                              ; preds = %728, %728
  br label %747

736:                                              ; preds = %728, %728
  %737 = load i8*, i8** @CONNECTION_BAD, align 8
  %738 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %739 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %738, i32 0, i32 15
  store i8* %737, i8** %739, align 8
  %740 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %741 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %740, i32 0, i32 14
  %742 = call i32 @libpq_gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  %743 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %744 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %743, i32 0, i32 9
  %745 = load i8*, i8** %744, align 8
  %746 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %741, i32 %742, i8* %745)
  store i32 0, i32* %2, align 4
  br label %889

747:                                              ; preds = %728, %735
  br label %759

748:                                              ; preds = %676
  %749 = load i8*, i8** @DefaultSSLMode, align 8
  %750 = call i8* @strdup(i8* %749)
  %751 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %752 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %751, i32 0, i32 9
  store i8* %750, i8** %752, align 8
  %753 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %754 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %753, i32 0, i32 9
  %755 = load i8*, i8** %754, align 8
  %756 = icmp ne i8* %755, null
  br i1 %756, label %758, label %757

757:                                              ; preds = %748
  br label %881

758:                                              ; preds = %748
  br label %759

759:                                              ; preds = %758, %747
  %760 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %761 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %760, i32 0, i32 10
  %762 = load i8*, i8** %761, align 8
  %763 = icmp ne i8* %762, null
  br i1 %763, label %764, label %811

764:                                              ; preds = %759
  %765 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %766 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %765, i32 0, i32 10
  %767 = load i8*, i8** %766, align 8
  %768 = call i64 @strcmp(i8* %767, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %769 = icmp ne i64 %768, 0
  br i1 %769, label %770, label %793

770:                                              ; preds = %764
  %771 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %772 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %771, i32 0, i32 10
  %773 = load i8*, i8** %772, align 8
  %774 = call i64 @strcmp(i8* %773, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %776, label %793

776:                                              ; preds = %770
  %777 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %778 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %777, i32 0, i32 10
  %779 = load i8*, i8** %778, align 8
  %780 = call i64 @strcmp(i8* %779, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %782, label %793

782:                                              ; preds = %776
  %783 = load i8*, i8** @CONNECTION_BAD, align 8
  %784 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %785 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %784, i32 0, i32 15
  store i8* %783, i8** %785, align 8
  %786 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %787 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %786, i32 0, i32 14
  %788 = call i32 @libpq_gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %789 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %790 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %789, i32 0, i32 10
  %791 = load i8*, i8** %790, align 8
  %792 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %787, i32 %788, i8* %791)
  store i32 0, i32* %2, align 4
  br label %889

793:                                              ; preds = %776, %770, %764
  %794 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %795 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %794, i32 0, i32 10
  %796 = load i8*, i8** %795, align 8
  %797 = call i64 @strcmp(i8* %796, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %798 = icmp eq i64 %797, 0
  br i1 %798, label %799, label %810

799:                                              ; preds = %793
  %800 = load i8*, i8** @CONNECTION_BAD, align 8
  %801 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %802 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %801, i32 0, i32 15
  store i8* %800, i8** %802, align 8
  %803 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %804 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %803, i32 0, i32 14
  %805 = call i32 @libpq_gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0))
  %806 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %807 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %806, i32 0, i32 10
  %808 = load i8*, i8** %807, align 8
  %809 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %804, i32 %805, i8* %808)
  store i32 0, i32* %2, align 4
  br label %889

810:                                              ; preds = %793
  br label %822

811:                                              ; preds = %759
  %812 = load i8*, i8** @DefaultGSSMode, align 8
  %813 = call i8* @strdup(i8* %812)
  %814 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %815 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %814, i32 0, i32 10
  store i8* %813, i8** %815, align 8
  %816 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %817 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %816, i32 0, i32 10
  %818 = load i8*, i8** %817, align 8
  %819 = icmp ne i8* %818, null
  br i1 %819, label %821, label %820

820:                                              ; preds = %811
  br label %881

821:                                              ; preds = %811
  br label %822

822:                                              ; preds = %821, %810
  %823 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %824 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %823, i32 0, i32 11
  %825 = load i8*, i8** %824, align 8
  %826 = icmp ne i8* %825, null
  br i1 %826, label %827, label %849

827:                                              ; preds = %822
  %828 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %829 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %828, i32 0, i32 11
  %830 = load i8*, i8** %829, align 8
  %831 = call i64 @strcmp(i8* %830, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %832 = icmp eq i64 %831, 0
  br i1 %832, label %833, label %849

833:                                              ; preds = %827
  %834 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %835 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %834, i32 0, i32 11
  %836 = load i8*, i8** %835, align 8
  %837 = call i32 @free(i8* %836)
  %838 = call i32 @pg_get_encoding_from_locale(i32* null, i32 1)
  %839 = call i8* @pg_encoding_to_char(i32 %838)
  %840 = call i8* @strdup(i8* %839)
  %841 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %842 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %841, i32 0, i32 11
  store i8* %840, i8** %842, align 8
  %843 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %844 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %843, i32 0, i32 11
  %845 = load i8*, i8** %844, align 8
  %846 = icmp ne i8* %845, null
  br i1 %846, label %848, label %847

847:                                              ; preds = %833
  br label %881

848:                                              ; preds = %833
  br label %849

849:                                              ; preds = %848, %827, %822
  %850 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %851 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %850, i32 0, i32 12
  %852 = load i8*, i8** %851, align 8
  %853 = icmp ne i8* %852, null
  br i1 %853, label %854, label %878

854:                                              ; preds = %849
  %855 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %856 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %855, i32 0, i32 12
  %857 = load i8*, i8** %856, align 8
  %858 = call i64 @strcmp(i8* %857, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %859 = icmp ne i64 %858, 0
  br i1 %859, label %860, label %877

860:                                              ; preds = %854
  %861 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %862 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %861, i32 0, i32 12
  %863 = load i8*, i8** %862, align 8
  %864 = call i64 @strcmp(i8* %863, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %865 = icmp ne i64 %864, 0
  br i1 %865, label %866, label %877

866:                                              ; preds = %860
  %867 = load i8*, i8** @CONNECTION_BAD, align 8
  %868 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %869 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %868, i32 0, i32 15
  store i8* %867, i8** %869, align 8
  %870 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %871 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %870, i32 0, i32 14
  %872 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  %873 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %874 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %873, i32 0, i32 12
  %875 = load i8*, i8** %874, align 8
  %876 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %871, i32 %872, i8* %875)
  store i32 0, i32* %2, align 4
  br label %889

877:                                              ; preds = %860, %854
  br label %878

878:                                              ; preds = %877, %849
  %879 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %880 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %879, i32 0, i32 13
  store i32 1, i32* %880, align 8
  store i32 1, i32* %2, align 4
  br label %889

881:                                              ; preds = %847, %820, %757, %674, %548, %484, %380, %338, %285, %186, %122, %75
  %882 = load i8*, i8** @CONNECTION_BAD, align 8
  %883 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %884 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %883, i32 0, i32 15
  store i8* %882, i8** %884, align 8
  %885 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %886 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %885, i32 0, i32 14
  %887 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %888 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %886, i32 %887)
  store i32 0, i32* %2, align 4
  br label %889

889:                                              ; preds = %881, %878, %866, %799, %782, %736, %717, %653, %445, %395, %200
  %890 = load i32, i32* %2, align 4
  ret i32 %890

891:                                              ; preds = %548
  unreachable
}

declare dso_local i8* @count_comma_separated_elems(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @parse_comma_separated_list(i8**, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @pg_fe_getauthname(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @pqGetHomeDirectory(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @passwordFromFile(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @pg_encoding_to_char(i32) #1

declare dso_local i32 @pg_get_encoding_from_locale(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
