; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruPhysicalWritePage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruPhysicalWritePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64*, i32, i32* }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@SLRU_OPEN_FAILED = common dso_local global i32 0, align 4
@slru_errcause = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@slru_errno = common dso_local global i64 0, align 8
@MAX_FLUSH_BUFFERS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SLRU_SEEK_FAILED = common dso_local global i32 0, align 4
@WAIT_EVENT_SLRU_WRITE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8
@SLRU_WRITE_FAILED = common dso_local global i32 0, align 4
@WAIT_EVENT_SLRU_SYNC = common dso_local global i32 0, align 4
@SLRU_FSYNC_FAILED = common dso_local global i32 0, align 4
@SLRU_CLOSE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*)* @SlruPhysicalWritePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SlruPhysicalWritePage(%struct.TYPE_9__* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @BLCKSZ, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @MAXPGPATH, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %14, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  store i32 -1, i32* %16, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %91

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  store i32 %48, i32* %18, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  store i32 1, i32* %19, align 4
  br label %57

57:                                               ; preds = %78, %43
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %20, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %20, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i64, i64* %20, align 8
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %75, %63
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %19, align 4
  br label %57

81:                                               ; preds = %57
  %82 = load i64, i64* %17, align 8
  %83 = call i32 @XLogRecPtrIsInvalid(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = call i32 (...) @START_CRIT_SECTION()
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @XLogFlush(i64 %87)
  %89 = call i32 (...) @END_CRIT_SECTION()
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = icmp ne %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  store i32 0, i32* %21, align 4
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %16, align 4
  br label %123

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %21, align 4
  br label %95

123:                                              ; preds = %111, %95
  br label %124

124:                                              ; preds = %123, %91
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %177

127:                                              ; preds = %124
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @SlruFileName(%struct.TYPE_9__* %128, i8* %38, i32 %129)
  %131 = load i32, i32* @O_RDWR, align 4
  %132 = load i32, i32* @O_CREAT, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @PG_BINARY, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @OpenTransientFile(i8* %38, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, i32* @SLRU_OPEN_FAILED, align 4
  store i32 %140, i32* @slru_errcause, align 4
  %141 = load i64, i64* @errno, align 8
  store i64 %141, i64* @slru_errno, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %253

142:                                              ; preds = %127
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = icmp ne %struct.TYPE_8__* %143, null
  br i1 %144, label %145, label %176

145:                                              ; preds = %142
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MAX_FLUSH_BUFFERS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %145
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32 %152, i32* %160, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  store i32 %161, i32* %169, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  br label %175

174:                                              ; preds = %145
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  br label %175

175:                                              ; preds = %174, %151
  br label %176

176:                                              ; preds = %175, %142
  br label %177

177:                                              ; preds = %176, %124
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @SEEK_SET, align 4
  %181 = call i64 @lseek(i32 %178, i32 %179, i32 %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i32, i32* @SLRU_SEEK_FAILED, align 4
  store i32 %184, i32* @slru_errcause, align 4
  %185 = load i64, i64* @errno, align 8
  store i64 %185, i64* @slru_errno, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %187 = icmp ne %struct.TYPE_8__* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %16, align 4
  %190 = call i64 @CloseTransientFile(i32 %189)
  br label %191

191:                                              ; preds = %188, %183
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %253

192:                                              ; preds = %177
  store i64 0, i64* @errno, align 8
  %193 = load i32, i32* @WAIT_EVENT_SLRU_WRITE, align 4
  %194 = call i32 @pgstat_report_wait_start(i32 %193)
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @BLCKSZ, align 4
  %204 = call i32 @write(i32 %195, i32 %202, i32 %203)
  %205 = load i32, i32* @BLCKSZ, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %222

207:                                              ; preds = %192
  %208 = call i32 (...) @pgstat_report_wait_end()
  %209 = load i64, i64* @errno, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i64, i64* @ENOSPC, align 8
  store i64 %212, i64* @errno, align 8
  br label %213

213:                                              ; preds = %211, %207
  %214 = load i32, i32* @SLRU_WRITE_FAILED, align 4
  store i32 %214, i32* @slru_errcause, align 4
  %215 = load i64, i64* @errno, align 8
  store i64 %215, i64* @slru_errno, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %217 = icmp ne %struct.TYPE_8__* %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %16, align 4
  %220 = call i64 @CloseTransientFile(i32 %219)
  br label %221

221:                                              ; preds = %218, %213
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %253

222:                                              ; preds = %192
  %223 = call i32 (...) @pgstat_report_wait_end()
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %225 = icmp ne %struct.TYPE_8__* %224, null
  br i1 %225, label %252, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* @WAIT_EVENT_SLRU_SYNC, align 4
  %228 = call i32 @pgstat_report_wait_start(i32 %227)
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %226
  %234 = load i32, i32* %16, align 4
  %235 = call i64 @pg_fsync(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = call i32 (...) @pgstat_report_wait_end()
  %239 = load i32, i32* @SLRU_FSYNC_FAILED, align 4
  store i32 %239, i32* @slru_errcause, align 4
  %240 = load i64, i64* @errno, align 8
  store i64 %240, i64* @slru_errno, align 8
  %241 = load i32, i32* %16, align 4
  %242 = call i64 @CloseTransientFile(i32 %241)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %253

243:                                              ; preds = %233, %226
  %244 = call i32 (...) @pgstat_report_wait_end()
  %245 = load i32, i32* %16, align 4
  %246 = call i64 @CloseTransientFile(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i32, i32* @SLRU_CLOSE_FAILED, align 4
  store i32 %249, i32* @slru_errcause, align 4
  %250 = load i64, i64* @errno, align 8
  store i64 %250, i64* @slru_errno, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %253

251:                                              ; preds = %243
  br label %252

252:                                              ; preds = %251, %222
  store i32 1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %253

253:                                              ; preds = %252, %248, %237, %221, %191, %139
  %254 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @XLogRecPtrIsInvalid(i64) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @XLogFlush(i64) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

declare dso_local i32 @SlruFileName(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i64 @CloseTransientFile(i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @write(i32, i32, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i64 @pg_fsync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
