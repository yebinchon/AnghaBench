; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_setlabel.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_setlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@f_setlabel.badchr = internal constant [18 x i8] c"+.,;=[]/\\\22*:<>?|\7F\00", align 16
@FA_WRITE = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@ExCvt = common dso_local global i32* null, align 8
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@DDEM = common dso_local global i32 0, align 4
@FF_FS_EXFAT = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@XDIR_NumLabel = common dso_local global i64 0, align 8
@XDIR_Label = common dso_local global i32 0, align 4
@DIR_Name = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@SZDIRE = common dso_local global i32 0, align 4
@ET_VLABEL = common dso_local global i32 0, align 4
@XDIR_Type = common dso_local global i64 0, align 8
@AM_VOL = common dso_local global i32 0, align 4
@DIR_Attr = common dso_local global i64 0, align 8
@CODEPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_setlabel(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca [22 x i32], align 16
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = load i32, i32* @FA_WRITE, align 4
  %11 = call i64 @find_volume(i64** %3, %struct.TYPE_11__** %6, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @FR_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @LEAVE_FF(%struct.TYPE_11__* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %21 = call i32 @mem_set(i32* %20, i8 signext 32, i32 11)
  store i8 0, i8* %8, align 1
  br label %22

22:                                               ; preds = %104, %19
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i8
  %26 = sext i8 %25 to i32
  %27 = icmp sge i32 %26, 32
  br i1 %27, label %28, label %110

28:                                               ; preds = %22
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %3, align 8
  %31 = load i64, i64* %29, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @dbc_1st(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @dbc_2nd(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 8
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %3, align 8
  %47 = load i64, i64* %45, align 8
  %48 = trunc i64 %47 to i32
  %49 = or i32 %44, %48
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i32 [ %49, %42 ], [ 0, %50 ]
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %28
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @IsLower(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 32
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32*, i32** @ExCvt, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 128
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32*, i32** @ExCvt, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 128
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %66, %63, %60
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @chk_chr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @f_setlabel.badchr, i64 0, i64 0), i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i32
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 256
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 10, i32 11
  %87 = trunc i32 %86 to i8
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %82, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %80, %76, %73
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i64, i64* @FR_INVALID_NAME, align 8
  %93 = call i32 @LEAVE_FF(%struct.TYPE_11__* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %80
  %95 = load i32, i32* %9, align 4
  %96 = icmp sge i32 %95, 256
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = ashr i32 %98, 8
  %100 = load i8, i8* %8, align 1
  %101 = add i8 %100, 1
  store i8 %101, i8* %8, align 1
  %102 = sext i8 %100 to i64
  %103 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %94
  %105 = load i32, i32* %9, align 4
  %106 = load i8, i8* %8, align 1
  %107 = add i8 %106, 1
  store i8 %107, i8* %8, align 1
  %108 = sext i8 %106 to i64
  %109 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 %108
  store i32 %105, i32* %109, align 4
  br label %22

110:                                              ; preds = %22
  %111 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = load i32, i32* @DDEM, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = load i64, i64* @FR_INVALID_NAME, align 8
  %118 = call i32 @LEAVE_FF(%struct.TYPE_11__* %116, i64 %117)
  br label %119

119:                                              ; preds = %115, %110
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i8, i8* %8, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i8, i8* %8, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 32
  br label %132

132:                                              ; preds = %124, %120
  %133 = phi i1 [ false, %120 ], [ %131, %124 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i8, i8* %8, align 1
  %136 = add i8 %135, -1
  store i8 %136, i8* %8, align 1
  br label %120

137:                                              ; preds = %132
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store %struct.TYPE_11__* %138, %struct.TYPE_11__** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = call i64 @dir_sdi(%struct.TYPE_12__* %5, i32 0)
  store i64 %143, i64* %4, align 8
  %144 = load i64, i64* %4, align 8
  %145 = load i64, i64* @FR_OK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %261

147:                                              ; preds = %137
  %148 = call i64 @DIR_READ_LABEL(%struct.TYPE_12__* %5)
  store i64 %148, i64* %4, align 8
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @FR_OK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %196

152:                                              ; preds = %147
  %153 = load i64, i64* @FF_FS_EXFAT, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @FS_EXFAT, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %155
  %162 = load i8, i8* %8, align 1
  %163 = sext i8 %162 to i32
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @XDIR_NumLabel, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %163, i32* %167, align 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @XDIR_Label, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %174 = call i32 @mem_cpy(i32* %172, i32* %173, i32 22)
  br label %191

175:                                              ; preds = %155, %152
  %176 = load i8, i8* %8, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %183 = call i32 @mem_cpy(i32* %181, i32* %182, i32 11)
  br label %190

184:                                              ; preds = %175
  %185 = load i32, i32* @DDEM, align 4
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @DIR_Name, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %179
  br label %191

191:                                              ; preds = %190, %161
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = call i64 @sync_fs(%struct.TYPE_11__* %194)
  store i64 %195, i64* %4, align 8
  br label %260

196:                                              ; preds = %147
  %197 = load i64, i64* %4, align 8
  %198 = load i64, i64* @FR_NO_FILE, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %259

200:                                              ; preds = %196
  %201 = load i64, i64* @FR_OK, align 8
  store i64 %201, i64* %4, align 8
  %202 = load i8, i8* %8, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %258

205:                                              ; preds = %200
  %206 = call i64 @dir_alloc(%struct.TYPE_12__* %5, i32 1)
  store i64 %206, i64* %4, align 8
  %207 = load i64, i64* %4, align 8
  %208 = load i64, i64* @FR_OK, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %257

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @SZDIRE, align 4
  %214 = call i32 @mem_set(i32* %212, i8 signext 0, i32 %213)
  %215 = load i64, i64* @FF_FS_EXFAT, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %242

217:                                              ; preds = %210
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @FS_EXFAT, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = load i32, i32* @ET_VLABEL, align 4
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @XDIR_Type, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load i8, i8* %8, align 1
  %230 = sext i8 %229 to i32
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* @XDIR_NumLabel, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32 %230, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* @XDIR_Label, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %241 = call i32 @mem_cpy(i32* %239, i32* %240, i32 22)
  br label %252

242:                                              ; preds = %217, %210
  %243 = load i32, i32* @AM_VOL, align 4
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @DIR_Attr, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32 %243, i32* %247, align 4
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds [22 x i32], [22 x i32]* %7, i64 0, i64 0
  %251 = call i32 @mem_cpy(i32* %249, i32* %250, i32 11)
  br label %252

252:                                              ; preds = %242, %223
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %256 = call i64 @sync_fs(%struct.TYPE_11__* %255)
  store i64 %256, i64* %4, align 8
  br label %257

257:                                              ; preds = %252, %205
  br label %258

258:                                              ; preds = %257, %200
  br label %259

259:                                              ; preds = %258, %196
  br label %260

260:                                              ; preds = %259, %191
  br label %261

261:                                              ; preds = %260, %137
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %263 = load i64, i64* %4, align 8
  %264 = call i32 @LEAVE_FF(%struct.TYPE_11__* %262, i64 %263)
  %265 = load i64, i64* %2, align 8
  ret i64 %265
}

declare dso_local i64 @find_volume(i64**, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @mem_set(i32*, i8 signext, i32) #1

declare dso_local i64 @dbc_1st(i32) #1

declare dso_local i64 @dbc_2nd(i32) #1

declare dso_local i64 @IsLower(i32) #1

declare dso_local i64 @chk_chr(i8*, i32) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @DIR_READ_LABEL(%struct.TYPE_12__*) #1

declare dso_local i32 @mem_cpy(i32*, i32*, i32) #1

declare dso_local i64 @sync_fs(%struct.TYPE_11__*) #1

declare dso_local i64 @dir_alloc(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
