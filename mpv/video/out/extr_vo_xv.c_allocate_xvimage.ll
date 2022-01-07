; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_allocate_xvimage.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_allocate_xvimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.xvctx* }
%struct.vo_x11_state = type { i32, i64, i64 }
%struct.xvctx = type { i32, i32, %struct.TYPE_4__**, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.mp_image = type { i32, i32 }

@ShmCompletion = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Shared memory not supported\0AReverting to normal Xv.\0A\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Got XvImage with too small size: %ux%u (expected %ux%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32)* @allocate_xvimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_xvimage(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xvctx*, align 8
  %7 = alloca %struct.vo_x11_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_image, align 4
  store %struct.vo* %0, %struct.vo** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vo*, %struct.vo** %4, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 1
  %13 = load %struct.xvctx*, %struct.xvctx** %12, align 8
  store %struct.xvctx* %13, %struct.xvctx** %6, align 8
  %14 = load %struct.vo*, %struct.vo** %4, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %15, align 8
  store %struct.vo_x11_state* %16, %struct.vo_x11_state** %7, align 8
  %17 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %18 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @FFALIGN(i32 %19, i32 32)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %22 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @FFALIGN(i32 %23, i32 2)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %26 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %2
  %30 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %31 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @XShmQueryExtension(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %37 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %39 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @XShmGetEventBase(i32 %40)
  %42 = load i64, i64* @ShmCompletion, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %45 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %51

46:                                               ; preds = %29, %2
  %47 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %48 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.vo*, %struct.vo** %4, align 8
  %50 = call i32 @MP_INFO(%struct.vo* %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %35
  %52 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %53 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %188

56:                                               ; preds = %51
  %57 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %58 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %61 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %64 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %69 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %68, i32 0, i32 5
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = call i64 @XvShmCreateImage(i32 %59, i32 %62, i32 %65, i32* null, i32 %66, i32 %67, %struct.TYPE_5__* %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_4__*
  %76 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %77 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %83 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %315

91:                                               ; preds = %56
  %92 = load i32, i32* @IPC_PRIVATE, align 4
  %93 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %94 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IPC_CREAT, align 4
  %103 = or i32 %102, 511
  %104 = call i32 @shmget(i32 %92, i32 %101, i32 %103)
  %105 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %106 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %105, i32 0, i32 5
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %104, i32* %111, align 8
  %112 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %113 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %112, i32 0, i32 5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @shmat(i32 %119, i32 0, i32 0)
  %121 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %122 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %121, i32 0, i32 5
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i8* %120, i8** %127, align 8
  %128 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %129 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %128, i32 0, i32 5
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = icmp eq i8* %135, inttoptr (i64 -1 to i8*)
  br i1 %136, label %137, label %138

137:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %315

138:                                              ; preds = %91
  %139 = load i32, i32* @False, align 4
  %140 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %141 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %140, i32 0, i32 5
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  store i32 %139, i32* %146, align 4
  %147 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %148 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %147, i32 0, i32 5
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %156 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %157, i64 %159
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8* %154, i8** %162, align 8
  %163 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %164 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %167 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %166, i32 0, i32 5
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = call i32 @XShmAttach(i32 %165, %struct.TYPE_5__* %171)
  %173 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %174 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @False, align 4
  %177 = call i32 @XSync(i32 %175, i32 %176)
  %178 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %179 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %178, i32 0, i32 5
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @IPC_RMID, align 4
  %187 = call i32 @shmctl(i32 %185, i32 %186, i32 0)
  br label %253

188:                                              ; preds = %51
  %189 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %190 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %193 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %196 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i64 @XvCreateImage(i32 %191, i32 %194, i32 %197, i32* null, i32 %198, i32 %199)
  %201 = inttoptr i64 %200 to %struct.TYPE_4__*
  %202 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %203 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %204, i64 %206
  store %struct.TYPE_4__* %201, %struct.TYPE_4__** %207, align 8
  %208 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %209 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %208, i32 0, i32 2
  %210 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %210, i64 %212
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = icmp ne %struct.TYPE_4__* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %315

217:                                              ; preds = %188
  %218 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %219 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %218, i32 0, i32 2
  %220 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %220, i64 %222
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = call i8* @av_malloc(i32 %226)
  %228 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %229 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %228, i32 0, i32 2
  %230 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %230, i64 %232
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i8* %227, i8** %235, align 8
  %236 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %237 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %236, i32 0, i32 2
  %238 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %238, i64 %240
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %217
  store i32 0, i32* %3, align 4
  br label %315

247:                                              ; preds = %217
  %248 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %249 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @False, align 4
  %252 = call i32 @XSync(i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %247, %138
  %254 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %255 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %254, i32 0, i32 2
  %256 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %256, i64 %258
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %277, label %265

265:                                              ; preds = %253
  %266 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %267 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %266, i32 0, i32 2
  %268 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %268, i64 %270
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %302

277:                                              ; preds = %265, %253
  %278 = load %struct.vo*, %struct.vo** %4, align 8
  %279 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %280 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %279, i32 0, i32 2
  %281 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %280, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %281, i64 %283
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %289 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %288, i32 0, i32 2
  %290 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %289, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %290, i64 %292
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %8, align 4
  %298 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %299 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @MP_ERR(%struct.vo* %278, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %287, i32 %296, i32 %297, i32 %300)
  store i32 0, i32* %3, align 4
  br label %315

302:                                              ; preds = %265
  %303 = load %struct.vo*, %struct.vo** %4, align 8
  %304 = load i32, i32* %5, align 4
  %305 = call i64 @get_xv_buffer(%struct.vo* %303, i32 %304)
  %306 = bitcast %struct.mp_image* %10 to i64*
  store i64 %305, i64* %306, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @mp_image_set_size(%struct.mp_image* %10, i32 %307, i32 %308)
  %310 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @mp_image_clear(%struct.mp_image* %10, i32 0, i32 0, i32 %311, i32 %313)
  store i32 1, i32* %3, align 4
  br label %315

315:                                              ; preds = %302, %277, %246, %216, %137, %90
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i64 @XShmQueryExtension(i32) #1

declare dso_local i64 @XShmGetEventBase(i32) #1

declare dso_local i32 @MP_INFO(%struct.vo*, i8*) #1

declare dso_local i64 @XvShmCreateImage(i32, i32, i32, i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i8* @shmat(i32, i32, i32) #1

declare dso_local i32 @XShmAttach(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @XSync(i32, i32) #1

declare dso_local i32 @shmctl(i32, i32, i32) #1

declare dso_local i64 @XvCreateImage(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @get_xv_buffer(%struct.vo*, i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

declare dso_local i32 @mp_image_clear(%struct.mp_image*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
