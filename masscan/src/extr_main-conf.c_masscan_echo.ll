; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_echo.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.Masscan*, i32, i32)*, i64 }
%struct.Masscan = type { i32, i32, i32, i8*, %struct.TYPE_5__*, %struct.TYPE_7__, %struct.TYPE_6__, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.Range* }
%struct.Range = type { i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.Range* }

@config_parameters = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"# TARGET SELECTION (IP, PORTS, EXCLUDES)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ports = \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@Templ_ICMP_echo = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"I:\00", align 1
@Templ_SCTP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"S:\00", align 1
@Templ_UDP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"U:\00", align 1
@Templ_Oproto_first = common dso_local global i64 0, align 8
@Templ_Oproto_last = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"O:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%u-%u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"range = \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"-%u.%u.%u.%u\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"http-user-agent = %.*s\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"http-header[%s] = %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Masscan*, i32*, i32)* @masscan_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @masscan_echo(%struct.Masscan* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.Masscan*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Range, align 8
  %10 = alloca %struct.Range, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Range, align 8
  %13 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 7
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %19 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %37, %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config_parameters, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config_parameters, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.Masscan*, i32, i32)*, i32 (%struct.Masscan*, i32, i32)** %33, align 8
  %35 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %36 = call i32 %34(%struct.Masscan* %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %42 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %44 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %46 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @masscan_echo_nic(%struct.Masscan* %50, i32* %51, i32 0)
  br label %69

53:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %57 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @masscan_echo_nic(%struct.Masscan* %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %54

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %214, %69
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %77 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %217

81:                                               ; preds = %74
  %82 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %83 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.Range*, %struct.Range** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Range, %struct.Range* %85, i64 %87
  %89 = bitcast %struct.Range* %9 to i8*
  %90 = bitcast %struct.Range* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %207, %81
  %92 = bitcast %struct.Range* %10 to i8*
  %93 = bitcast %struct.Range* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  store i32 1, i32* %8, align 4
  %100 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @Templ_ICMP_echo, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i64, i64* @Templ_ICMP_echo, align 8
  %106 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, %105
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* @Templ_ICMP_echo, align 8
  %110 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %180

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @Templ_SCTP, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load i64, i64* @Templ_SCTP, align 8
  %122 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, %121
  store i64 %124, i64* %122, align 8
  %125 = load i64, i64* @Templ_SCTP, align 8
  %126 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, %125
  store i64 %128, i64* %126, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i64, i64* @Templ_ICMP_echo, align 8
  %132 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  br label %179

133:                                              ; preds = %115
  %134 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @Templ_UDP, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load i64, i64* @Templ_UDP, align 8
  %140 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, %139
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* @Templ_UDP, align 8
  %144 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %145, %143
  store i64 %146, i64* %144, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i64, i64* @Templ_SCTP, align 8
  %150 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  store i64 %149, i64* %150, align 8
  br label %178

151:                                              ; preds = %133
  %152 = load i64, i64* @Templ_Oproto_first, align 8
  %153 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %152, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @Templ_Oproto_last, align 8
  %160 = icmp sle i64 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load i64, i64* @Templ_Oproto_first, align 8
  %163 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, %162
  store i64 %165, i64* %163, align 8
  %166 = load i64, i64* @Templ_Oproto_first, align 8
  %167 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %168, %166
  store i64 %169, i64* %167, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i64, i64* @Templ_Oproto_first, align 8
  %173 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  br label %177

174:                                              ; preds = %156, %151
  %175 = load i64, i64* @Templ_UDP, align 8
  %176 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  store i64 %175, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %161
  br label %178

178:                                              ; preds = %177, %138
  br label %179

179:                                              ; preds = %178, %120
  br label %180

180:                                              ; preds = %179, %104
  %181 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @min(i64 %182, i32 65535)
  %184 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  store i64 %183, i64* %184, align 8
  %185 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %186, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %180
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 %193)
  br label %202

195:                                              ; preds = %180
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 %198, i64 %200)
  br label %202

202:                                              ; preds = %195, %190
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %213

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp sle i64 %209, %211
  br i1 %212, label %91, label %213

213:                                              ; preds = %207, %205
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %74

217:                                              ; preds = %74
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %298, %217
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %223 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ult i32 %221, %225
  br i1 %226, label %227, label %301

227:                                              ; preds = %220
  %228 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %229 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load %struct.Range*, %struct.Range** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.Range, %struct.Range* %231, i64 %233
  %235 = bitcast %struct.Range* %12 to i8*
  %236 = bitcast %struct.Range* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 %236, i64 16, i1 false)
  %237 = load i32*, i32** %5, align 8
  %238 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %239 = load i32*, i32** %5, align 8
  %240 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = ashr i64 %241, 24
  %243 = and i64 %242, 255
  %244 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = ashr i64 %245, 16
  %247 = and i64 %246, 255
  %248 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = ashr i64 %249, 8
  %251 = and i64 %250, 255
  %252 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = ashr i64 %253, 0
  %255 = and i64 %254, 255
  %256 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %243, i64 %247, i64 %251, i64 %255)
  %257 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %258, %260
  br i1 %261, label %262, label %295

262:                                              ; preds = %227
  %263 = bitcast %struct.Range* %12 to { i64, i64 }*
  %264 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @count_cidr_bits(i64 %265, i64 %267)
  store i32 %268, i32* %13, align 4
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %262
  %272 = load i32*, i32** %5, align 8
  %273 = load i32, i32* %13, align 4
  %274 = call i32 (i32*, i8*, ...) @fprintf(i32* %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %273)
  br label %294

275:                                              ; preds = %262
  %276 = load i32*, i32** %5, align 8
  %277 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = ashr i64 %278, 24
  %280 = and i64 %279, 255
  %281 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = ashr i64 %282, 16
  %284 = and i64 %283, 255
  %285 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = ashr i64 %286, 8
  %288 = and i64 %287, 255
  %289 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = ashr i64 %290, 0
  %292 = and i64 %291, 255
  %293 = call i32 (i32*, i8*, ...) @fprintf(i32* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i64 %280, i64 %284, i64 %288, i64 %292)
  br label %294

294:                                              ; preds = %275, %271
  br label %295

295:                                              ; preds = %294, %227
  %296 = load i32*, i32** %5, align 8
  %297 = call i32 (i32*, i8*, ...) @fprintf(i32* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %7, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %220

301:                                              ; preds = %220
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 (i32*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %304 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %305 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %301
  %309 = load i32*, i32** %5, align 8
  %310 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %311 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %310, i32 0, i32 3
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %314 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 (i32*, i8*, ...) @fprintf(i32* %309, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %312, i32 %315)
  br label %317

317:                                              ; preds = %308, %301
  store i32 0, i32* %7, align 4
  br label %318

318:                                              ; preds = %360, %317
  %319 = load i32, i32* %7, align 4
  %320 = zext i32 %319 to i64
  %321 = icmp ult i64 %320, 0
  br i1 %321, label %322, label %363

322:                                              ; preds = %318
  %323 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %324 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %323, i32 0, i32 4
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = icmp eq i8* %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %322
  br label %360

333:                                              ; preds = %322
  %334 = load i32*, i32** %5, align 8
  %335 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %336 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %335, i32 0, i32 4
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %344 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %343, i32 0, i32 4
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.Masscan*, %struct.Masscan** %4, align 8
  %352 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %351, i32 0, i32 4
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %352, align 8
  %354 = load i32, i32* %7, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = call i32 (i32*, i8*, ...) @fprintf(i32* %334, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %342, i8* %350, i32 %358)
  br label %360

360:                                              ; preds = %333, %332
  %361 = load i32, i32* %7, align 4
  %362 = add i32 %361, 1
  store i32 %362, i32* %7, align 4
  br label %318

363:                                              ; preds = %318
  ret void
}

declare dso_local i32 @masscan_echo_nic(%struct.Masscan*, i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @count_cidr_bits(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
