; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_logger.c_logger_open.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_logger.c_logger_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i8*, i8*, i8*, i32*, i32*, i32, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i32, i64, %struct.TYPE_7__* }

@LOGGER_MAX_HANDLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/%s--%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/%s.bz2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/qlog.bz2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s.lock\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@BZ_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"logger failed to open files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i8*)* @logger_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @logger_open(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @LOGGER_MAX_HANDLES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  br label %36

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %11

36:                                               ; preds = %25, %11
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = call i32 @assert(%struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %41, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %45, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %52, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %62, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %69, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @mkpath(i8* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %36
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %225

81:                                               ; preds = %36
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @fopen(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %9, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %225

90:                                               ; preds = %81
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @fclose(i32* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @fopen(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  br label %203

105:                                              ; preds = %90
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @fopen(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 6
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %203

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %105
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = call i8* @BZ2_bzWriteOpen(i32* %10, i32* %127, i32 9, i32 0, i32 30)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @BZ_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %203

135:                                              ; preds = %124
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = call i8* @BZ2_bzWriteOpen(i32* %10, i32* %143, i32 9, i32 0, i32 30)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 8
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @BZ_OK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %203

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %135
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %194

157:                                              ; preds = %152
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 9
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @BZ2_bzWrite(i32* %10, i8* %160, i32 %163, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @BZ_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %203

172:                                              ; preds = %157
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 8
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @BZ2_bzWrite(i32* %10, i8* %180, i32 %183, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @BZ_OK, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  br label %203

192:                                              ; preds = %177
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193, %152
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 7
  %197 = call i32 @pthread_mutex_init(i32* %196, i32* null)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %202, %struct.TYPE_7__** %3, align 8
  br label %225

203:                                              ; preds = %191, %171, %150, %134, %122, %104
  %204 = call i32 @LOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @fclose(i32* %212)
  br label %214

214:                                              ; preds = %209, %203
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @fclose(i32* %222)
  br label %224

224:                                              ; preds = %219, %214
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %225

225:                                              ; preds = %224, %194, %89, %80
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %226
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @mkpath(i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @BZ2_bzWriteOpen(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @BZ2_bzWrite(i32*, i8*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @LOGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
