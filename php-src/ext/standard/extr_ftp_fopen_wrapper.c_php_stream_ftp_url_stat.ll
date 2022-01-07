; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_url_stat.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_url_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.tm = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CWD %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"TYPE I\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SIZE %s\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"MDTM %s\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%4u%2u%2u%2u%2u%2u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, %struct.TYPE_9__*, i32*)* @php_stream_ftp_url_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_ftp_url_stat(i32* %0, i8* %1, i32 %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [512 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tm, align 8
  %19 = alloca %struct.tm, align 8
  %20 = alloca %struct.tm*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %271

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @php_ftp_fopen_connect(i32* %26, i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %28, i32* null, %struct.TYPE_8__** %13, i32* null, i32* null)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %258

33:                                               ; preds = %25
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 420, i32* %36, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @ZSTR_VAL(i32* %45)
  br label %48

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i8* [ %46, %42 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %47 ]
  %50 = call i32 @php_stream_printf(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @GET_FTP_RESULT(i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 200
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %56, 299
  br i1 %57, label %58, label %65

58:                                               ; preds = %55, %48
  %59 = load i32, i32* @S_IFREG, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 8
  br label %78

65:                                               ; preds = %55
  %66 = load i32, i32* @S_IFDIR, align 4
  %67 = load i32, i32* @S_IXUSR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_IXGRP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @S_IXOTH, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %65, %58
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @php_stream_write_string(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @GET_FTP_RESULT(i32* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 200
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %14, align 4
  %87 = icmp sgt i32 %86, 299
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %78
  br label %258

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i8* @ZSTR_VAL(i32* %98)
  br label %101

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %95
  %102 = phi i8* [ %99, %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %100 ]
  %103 = call i32 @php_stream_printf(i32* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @GET_FTP_RESULT(i32* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 200
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %109, 299
  br i1 %110, label %111, label %125

111:                                              ; preds = %108, %101
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @S_IFDIR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 8
  store i32 0, i32* %122, align 8
  br label %124

123:                                              ; preds = %111
  br label %258

124:                                              ; preds = %119
  br label %132

125:                                              ; preds = %108
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  %128 = call i32 @atoi(i8* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 8
  store i32 %128, i32* %131, align 8
  br label %132

132:                                              ; preds = %125, %124
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @ZSTR_VAL(i32* %141)
  br label %144

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %138
  %145 = phi i8* [ %142, %138 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %143 ]
  %146 = call i32 @php_stream_printf(i32* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %145)
  %147 = load i32*, i32** %12, align 8
  %148 = call i32 @GET_FTP_RESULT(i32* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 213
  br i1 %150, label %151, label %224

151:                                              ; preds = %144
  %152 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  store i8* %153, i8** %16, align 8
  br label %154

154:                                              ; preds = %169, %151
  %155 = load i8*, i8** %16, align 8
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = icmp ult i64 %159, 512
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i8*, i8** %16, align 8
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @isdigit(i8 signext %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %161, %154
  %168 = phi i1 [ false, %154 ], [ %166, %161 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i8*, i8** %16, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %16, align 8
  br label %154

172:                                              ; preds = %167
  %173 = load i8*, i8** %16, align 8
  %174 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = icmp ugt i64 %177, 512
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %225

180:                                              ; preds = %172
  %181 = load i8*, i8** %16, align 8
  %182 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %183 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 3
  %184 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 6
  %185 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 5
  %186 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 4
  %187 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 1
  %188 = call i32 @sscanf(i8* %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %182, i32* %183, i32* %184, i32* %185, i32* %186, i64* %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 6
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %225

192:                                              ; preds = %180
  %193 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sub nsw i32 %194, 1900
  store i32 %195, i32* %193, align 8
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 4
  %199 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 2
  store i32 -1, i32* %199, align 8
  %200 = call i32 @time(i32* null)
  store i32 %200, i32* %21, align 4
  %201 = call %struct.tm* @php_gmtime_r(i32* %21, %struct.tm* %19)
  store %struct.tm* %201, %struct.tm** %20, align 8
  %202 = load %struct.tm*, %struct.tm** %20, align 8
  %203 = icmp ne %struct.tm* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %192
  br label %225

205:                                              ; preds = %192
  %206 = load %struct.tm*, %struct.tm** %20, align 8
  %207 = getelementptr inbounds %struct.tm, %struct.tm* %206, i32 0, i32 2
  store i32 -1, i32* %207, align 8
  %208 = load i32, i32* %21, align 4
  %209 = load %struct.tm*, %struct.tm** %20, align 8
  %210 = call i32 @mktime(%struct.tm* %209)
  %211 = sub nsw i32 %208, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, %212
  store i64 %215, i64* %213, align 8
  %216 = load %struct.tm*, %struct.tm** %20, align 8
  %217 = getelementptr inbounds %struct.tm, %struct.tm* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 2
  store i32 %218, i32* %219, align 8
  %220 = call i32 @mktime(%struct.tm* %18)
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  br label %229

224:                                              ; preds = %144
  br label %225

225:                                              ; preds = %224, %204, %191, %179
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  store i32 -1, i32* %228, align 4
  br label %229

229:                                              ; preds = %225, %205
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 12
  store i64 0, i64* %232, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 11
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 10
  store i64 0, i64* %238, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 9
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 2
  store i32 -1, i32* %244, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 3
  store i32 -1, i32* %247, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 4
  store i32 1, i32* %250, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 5
  store i32 -1, i32* %253, align 4
  %254 = load i32*, i32** %12, align 8
  %255 = call i32 @php_stream_close(i32* %254)
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %257 = call i32 @php_url_free(%struct.TYPE_8__* %256)
  store i32 0, i32* %6, align 4
  br label %271

258:                                              ; preds = %123, %88, %32
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %260 = icmp ne %struct.TYPE_8__* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %263 = call i32 @php_url_free(%struct.TYPE_8__* %262)
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i32*, i32** %12, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32*, i32** %12, align 8
  %269 = call i32 @php_stream_close(i32* %268)
  br label %270

270:                                              ; preds = %267, %264
  store i32 -1, i32* %6, align 4
  br label %271

271:                                              ; preds = %270, %229, %24
  %272 = load i32, i32* %6, align 4
  ret i32 %272
}

declare dso_local i32* @php_ftp_fopen_connect(i32*, i8*, i8*, i32, i32*, i32*, i32*, %struct.TYPE_8__**, i32*, i32*) #1

declare dso_local i32 @php_stream_printf(i32*, i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @GET_FTP_RESULT(i32*) #1

declare dso_local i32 @php_stream_write_string(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @php_gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @php_stream_close(i32*) #1

declare dso_local i32 @php_url_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
