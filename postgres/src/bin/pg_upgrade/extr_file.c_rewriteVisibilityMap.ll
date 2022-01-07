; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_file.c_rewriteVisibilityMap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_file.c_rewriteVisibilityMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i8* }
%struct.stat = type { i64 }
%struct.TYPE_6__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@SizeOfPageHeaderData = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"error while copying relation \22%s.%s\22: could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"error while copying relation \22%s.%s\22: could not stat file \22%s\22: %s\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@pg_file_create_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"error while copying relation \22%s.%s\22: could not create file \22%s\22: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"error while copying relation \22%s.%s\22: could not read file \22%s\22: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"error while copying relation \22%s.%s\22: partial page found in file \22%s\22\0A\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@VISIBILITYMAP_ALL_VISIBLE = common dso_local global i32 0, align 4
@BITS_PER_HEAPBLOCK = common dso_local global i32 0, align 4
@new_cluster = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"error while copying relation \22%s.%s\22: could not write file \22%s\22: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteVisibilityMap(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  %30 = load i32, i32* @BLCKSZ, align 4
  %31 = load i32, i32* @SizeOfPageHeaderData, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %15, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = load i32, i32* @PG_BINARY, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @open(i8* %34, i32 %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 @strerror(i64 %44)
  %46 = call i32 (i8*, i8*, i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %40, %4
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @fstat(i32 %48, %struct.stat* %17)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 (i8*, i8*, i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53, i8* %54, i32 %56)
  br label %58

58:                                               ; preds = %51, %47
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @O_RDWR, align 4
  %61 = load i32, i32* @O_CREAT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @O_EXCL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PG_BINARY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @pg_file_create_mode, align 4
  %68 = call i32 @open(i8* %59, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* @errno, align 8
  %75 = call i32 @strerror(i64 %74)
  %76 = call i32 (i8*, i8*, i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %72, i8* %73, i32 %75)
  br label %77

77:                                               ; preds = %70, %58
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  br label %80

80:                                               ; preds = %251, %77
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %252

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @BLCKSZ, align 4
  %89 = call i64 @read(i32 %85, i8* %87, i32 %88)
  store i64 %89, i64* %18, align 8
  %90 = load i32, i32* @BLCKSZ, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load i64, i64* %18, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* @errno, align 8
  %101 = call i32 @strerror(i64 %100)
  %102 = call i32 (i8*, i8*, i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %98, i8* %99, i32 %101)
  br label %108

103:                                              ; preds = %93
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 (i8*, i8*, i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* %104, i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %103, %96
  br label %109

109:                                              ; preds = %108, %84
  %110 = load i32, i32* @BLCKSZ, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %23, align 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* @SizeOfPageHeaderData, align 4
  %121 = call i32 @memcpy(i8* %22, i8* %119, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @SizeOfPageHeaderData, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %18, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %21, align 8
  %131 = load i8*, i8** %19, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8* %134, i8** %20, align 8
  br label %135

135:                                              ; preds = %244, %109
  %136 = load i8*, i8** %20, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = icmp ule i8* %136, %137
  br i1 %138, label %139, label %251

139:                                              ; preds = %135
  store i32 1, i32* %25, align 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @SizeOfPageHeaderData, align 4
  %143 = call i32 @memcpy(i8* %141, i8* %22, i32 %142)
  %144 = load i32, i32* %23, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i8*, i8** %20, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = icmp eq i8* %147, %148
  br label %150

150:                                              ; preds = %146, %139
  %151 = phi i1 [ false, %139 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %26, align 4
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* @SizeOfPageHeaderData, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8* %157, i8** %24, align 8
  br label %158

158:                                              ; preds = %188, %150
  %159 = load i8*, i8** %19, align 8
  %160 = load i8*, i8** %20, align 8
  %161 = icmp ult i8* %159, %160
  br i1 %161, label %162, label %205

162:                                              ; preds = %158
  %163 = load i8*, i8** %19, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  br label %166

166:                                              ; preds = %185, %162
  %167 = load i32, i32* %29, align 4
  %168 = load i32, i32* @BITS_PER_BYTE, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %166
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %29, align 4
  %173 = shl i32 1, %172
  %174 = and i32 %171, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  store i32 0, i32* %25, align 4
  %177 = load i32, i32* @VISIBILITYMAP_ALL_VISIBLE, align 4
  %178 = load i32, i32* @BITS_PER_HEAPBLOCK, align 4
  %179 = load i32, i32* %29, align 4
  %180 = mul nsw i32 %178, %179
  %181 = shl i32 %177, %180
  %182 = load i32, i32* %28, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %28, align 4
  br label %184

184:                                              ; preds = %176, %170
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %29, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %29, align 4
  br label %166

188:                                              ; preds = %166
  %189 = load i32, i32* %28, align 4
  %190 = and i32 %189, 255
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %24, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  store i8 %191, i8* %193, align 1
  %194 = load i32, i32* %28, align 4
  %195 = ashr i32 %194, 8
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %24, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 %196, i8* %198, align 1
  %199 = load i8*, i8** %19, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %19, align 8
  %201 = load i32, i32* @BITS_PER_HEAPBLOCK, align 4
  %202 = load i8*, i8** %24, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %24, align 8
  br label %158

205:                                              ; preds = %158
  %206 = load i32, i32* %26, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* %25, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %251

212:                                              ; preds = %208, %205
  %213 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0, i32 0), align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i64, i64* %16, align 8
  %219 = call i32 @pg_checksum_page(i8* %217, i64 %218)
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = bitcast i8* %221 to %struct.TYPE_6__*
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32 %219, i32* %223, align 4
  br label %224

224:                                              ; preds = %215, %212
  store i64 0, i64* @errno, align 8
  %225 = load i32, i32* %10, align 4
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load i32, i32* @BLCKSZ, align 4
  %229 = call i32 @write(i32 %225, i8* %227, i32 %228)
  %230 = load i32, i32* @BLCKSZ, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %224
  %233 = load i64, i64* @errno, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i64, i64* @ENOSPC, align 8
  store i64 %236, i64* @errno, align 8
  br label %237

237:                                              ; preds = %235, %232
  %238 = load i8*, i8** %7, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load i8*, i8** %6, align 8
  %241 = load i64, i64* @errno, align 8
  %242 = call i32 @strerror(i64 %241)
  %243 = call i32 (i8*, i8*, i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %238, i8* %239, i8* %240, i32 %242)
  br label %244

244:                                              ; preds = %237, %224
  %245 = load i32, i32* %15, align 4
  %246 = load i8*, i8** %20, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %20, align 8
  %249 = load i64, i64* %16, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %16, align 8
  br label %135

251:                                              ; preds = %211, %135
  br label %80

252:                                              ; preds = %80
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @close(i32 %253)
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @close(i32 %255)
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @pg_fatal(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pg_checksum_page(i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
