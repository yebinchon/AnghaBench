; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxdisk.c_XboxDiskPolledRead.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxdisk.c_XboxDiskPolledRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@IDE_MAX_BUSY_RETRIES = common dso_local global i32 0, align 4
@IDE_SR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"status=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"waited %d usecs for busy to clear\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Drive is BUSY for too long\0A\00", align 1
@IDE_DH_FIXED = common dso_local global i32 0, align 4
@IDE_DC_nIEN = common dso_local global i32 0, align 4
@IDE_DH_LBA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"READ:DRV=%d:LBA=1:BLK=%d:SC=0x%x:CM=0x%x\0A\00", align 1
@IDE_DH_DRV1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"READ:DRV=%d:LBA=0:CH=0x%x:CL=0x%x:HD=0x%x:SN=0x%x:SC=0x%x:CM=0x%x\0A\00", align 1
@IDE_MAX_POLL_RETRIES = common dso_local global i32 0, align 4
@IDE_SR_ERR = common dso_local global i32 0, align 4
@IDE_SR_DRQ = common dso_local global i32 0, align 4
@IDE_SECTOR_BUF_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Buffer size exceeded!\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Read %lu sectors of junk!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*)* @XboxDiskPolledRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XboxDiskPolledRead(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %24, align 8
  store i32 0, i32* %23, align 4
  br label %29

29:                                               ; preds = %43, %10
  %30 = load i32, i32* %23, align 4
  %31 = load i32, i32* @IDE_MAX_BUSY_RETRIES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @IDEReadStatus(i32 %34)
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %25, align 4
  %37 = load i32, i32* @IDE_SR_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33
  %42 = call i32 @StallExecutionProcessor(i32 10)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %23, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %23, align 4
  br label %29

46:                                               ; preds = %40, %29
  %47 = load i32, i32* %25, align 4
  %48 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %23, align 4
  %50 = mul nsw i32 %49, 10
  %51 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* @IDE_MAX_BUSY_RETRIES, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %11, align 8
  br label %271

58:                                               ; preds = %46
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @IDE_DH_FIXED, align 4
  %61 = load i32, i32* %19, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @IDEWriteDriveHead(i32 %59, i32 %62)
  %64 = call i32 @StallExecutionProcessor(i32 500)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @IDE_DC_nIEN, align 4
  %67 = call i32 @IDEWriteDriveControl(i32 %65, i32 %66)
  %68 = call i32 @StallExecutionProcessor(i32 500)
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @IDE_DH_LBA, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %58
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @IDE_DH_DRV1, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load i32, i32* %19, align 4
  %81 = and i32 %80, 15
  %82 = shl i32 %81, 24
  %83 = load i32, i32* %18, align 4
  %84 = shl i32 %83, 16
  %85 = add nsw i32 %82, %84
  %86 = load i32, i32* %17, align 4
  %87 = shl i32 %86, 8
  %88 = add nsw i32 %85, %87
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %90, i32 %91, i32 %92)
  br label %109

94:                                               ; preds = %58
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @IDE_DH_DRV1, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %19, align 4
  %104 = and i32 %103, 15
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %20, align 4
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %94, %73
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @IDEWritePrecomp(i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @IDEWriteSectorCount(i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @IDEWriteSectorNum(i32 %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @IDEWriteCylinderHigh(i32 %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @IDEWriteCylinderLow(i32 %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @IDE_DH_FIXED, align 4
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @IDEWriteDriveHead(i32 %125, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @IDEWriteCommand(i32 %130, i32 %131)
  %133 = call i32 @StallExecutionProcessor(i32 50)
  store i32 0, i32* %23, align 4
  br label %134

134:                                              ; preds = %172, %109
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* @IDE_MAX_POLL_RETRIES, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %175

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @IDEReadStatus(i32 %139)
  store i32 %140, i32* %25, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* @IDE_SR_BUSY, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %170, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* @IDE_SR_ERR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @IDEWriteDriveControl(i32 %151, i32 0)
  %153 = call i32 @StallExecutionProcessor(i32 50)
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @IDEReadStatus(i32 %154)
  %156 = load i64, i64* @FALSE, align 8
  store i64 %156, i64* %11, align 8
  br label %271

157:                                              ; preds = %145
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* @IDE_SR_DRQ, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %175

163:                                              ; preds = %157
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @IDEWriteDriveControl(i32 %164, i32 0)
  %166 = call i32 @StallExecutionProcessor(i32 50)
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @IDEReadStatus(i32 %167)
  %169 = load i64, i64* @FALSE, align 8
  store i64 %169, i64* %11, align 8
  br label %271

170:                                              ; preds = %138
  %171 = call i32 @StallExecutionProcessor(i32 10)
  br label %172

172:                                              ; preds = %170
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %23, align 4
  br label %134

175:                                              ; preds = %162, %134
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* @IDE_MAX_POLL_RETRIES, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @IDEWriteDriveControl(i32 %180, i32 0)
  %182 = call i32 @StallExecutionProcessor(i32 50)
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @IDEReadStatus(i32 %183)
  %185 = load i64, i64* @FALSE, align 8
  store i64 %185, i64* %11, align 8
  br label %271

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %270
  %188 = load i64, i64* %24, align 8
  %189 = load i64, i64* @FALSE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %187
  %192 = load i32, i32* %12, align 4
  %193 = load i32*, i32** %21, align 8
  %194 = load i32, i32* @IDE_SECTOR_BUF_SZ, align 4
  %195 = call i32 @IDEReadBlock(i32 %192, i32* %193, i32 %194)
  %196 = load i32*, i32** %21, align 8
  %197 = ptrtoint i32* %196 to i32
  %198 = load i32, i32* @IDE_SECTOR_BUF_SZ, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i32*
  store i32* %201, i32** %21, align 8
  br label %211

202:                                              ; preds = %187
  %203 = load i32, i32* @IDE_SECTOR_BUF_SZ, align 4
  %204 = zext i32 %203 to i64
  %205 = call i8* @llvm.stacksave()
  store i8* %205, i8** %26, align 8
  %206 = alloca i32, i64 %204, align 16
  store i64 %204, i64* %27, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @IDE_SECTOR_BUF_SZ, align 4
  %209 = call i32 @IDEReadBlock(i32 %207, i32* %206, i32 %208)
  %210 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %210)
  br label %211

211:                                              ; preds = %202, %191
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %214

214:                                              ; preds = %267, %211
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* @IDE_MAX_BUSY_RETRIES, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %270

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @IDEReadStatus(i32 %219)
  store i32 %220, i32* %25, align 4
  %221 = load i32, i32* %25, align 4
  %222 = load i32, i32* @IDE_SR_BUSY, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %266, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* %25, align 4
  %227 = load i32, i32* @IDE_SR_ERR, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @IDEWriteDriveControl(i32 %231, i32 0)
  %233 = call i32 @StallExecutionProcessor(i32 50)
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @IDEReadStatus(i32 %234)
  %236 = load i64, i64* @FALSE, align 8
  store i64 %236, i64* %11, align 8
  br label %271

237:                                              ; preds = %225
  %238 = load i32, i32* %25, align 4
  %239 = load i32, i32* @IDE_SR_DRQ, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %15, align 4
  %245 = icmp sge i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %248 = load i64, i64* @TRUE, align 8
  store i64 %248, i64* %24, align 8
  br label %249

249:                                              ; preds = %246, %242
  br label %270

250:                                              ; preds = %237
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i32, i32* %22, align 4
  %256 = load i32, i32* %15, align 4
  %257 = sub nsw i32 %255, %256
  %258 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %254, %250
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @IDEWriteDriveControl(i32 %260, i32 0)
  %262 = call i32 @StallExecutionProcessor(i32 50)
  %263 = load i32, i32* %12, align 4
  %264 = call i32 @IDEReadStatus(i32 %263)
  %265 = load i64, i64* @TRUE, align 8
  store i64 %265, i64* %11, align 8
  br label %271

266:                                              ; preds = %218
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %23, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %23, align 4
  br label %214

270:                                              ; preds = %249, %214
  br label %187

271:                                              ; preds = %259, %230, %179, %163, %150, %55
  %272 = load i64, i64* %11, align 8
  ret i64 %272
}

declare dso_local i32 @IDEReadStatus(i32) #1

declare dso_local i32 @StallExecutionProcessor(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IDEWriteDriveHead(i32, i32) #1

declare dso_local i32 @IDEWriteDriveControl(i32, i32) #1

declare dso_local i32 @IDEWritePrecomp(i32, i32) #1

declare dso_local i32 @IDEWriteSectorCount(i32, i32) #1

declare dso_local i32 @IDEWriteSectorNum(i32, i32) #1

declare dso_local i32 @IDEWriteCylinderHigh(i32, i32) #1

declare dso_local i32 @IDEWriteCylinderLow(i32, i32) #1

declare dso_local i32 @IDEWriteCommand(i32, i32) #1

declare dso_local i32 @IDEReadBlock(i32, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
