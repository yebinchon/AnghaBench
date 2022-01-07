; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_getMyXImage.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_getMyXImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, %struct.TYPE_10__**, i32, i32, %struct.TYPE_9__, %struct.TYPE_11__*, %struct.vo* }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i8*, i32 }
%struct.vo = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64 }

@ShmCompletion = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Shared memory not supported\0AReverting to normal Xlib\0A\00", align 1
@ZPixmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Shared memory error,disabling ( Ximage error )\0A\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Shared memory error,disabling ( seg id error )\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Shared memory error,disabling ( address error )\0A\00", align 1
@False = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Not using SHM.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"could not allocate image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i32)* @getMyXImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMyXImage(%struct.priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vo*, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.priv*, %struct.priv** %4, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 7
  %9 = load %struct.vo*, %struct.vo** %8, align 8
  store %struct.vo* %9, %struct.vo** %6, align 8
  %10 = load %struct.vo*, %struct.vo** %6, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.vo*, %struct.vo** %6, align 8
  %18 = getelementptr inbounds %struct.vo, %struct.vo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @XShmQueryExtension(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.vo*, %struct.vo** %6, align 8
  %28 = getelementptr inbounds %struct.vo, %struct.vo* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @XShmGetEventBase(i32 %31)
  %33 = load i64, i64* @ShmCompletion, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.vo*, %struct.vo** %6, align 8
  %36 = getelementptr inbounds %struct.vo, %struct.vo* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i64 %34, i64* %38, align 8
  br label %44

39:                                               ; preds = %16, %2
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.vo*, %struct.vo** %6, align 8
  %43 = call i32 @MP_WARN(%struct.vo* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %236

49:                                               ; preds = %44
  %50 = load %struct.vo*, %struct.vo** %6, align 8
  %51 = getelementptr inbounds %struct.vo, %struct.vo* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ZPixmap, align 4
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 6
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = load %struct.priv*, %struct.priv** %4, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.priv*, %struct.priv** %4, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_10__* @XShmCreateImage(i32 %54, i32 %58, i32 %61, i32 %62, i32* null, %struct.TYPE_11__* %68, i32 %71, i32 %74)
  %76 = load %struct.priv*, %struct.priv** %4, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %78, i64 %80
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.priv*, %struct.priv** %4, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i64 %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = icmp eq %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %49
  %91 = load %struct.vo*, %struct.vo** %6, align 8
  %92 = call i32 @MP_WARN(%struct.vo* %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %237

93:                                               ; preds = %49
  %94 = load i32, i32* @IPC_PRIVATE, align 4
  %95 = load %struct.priv*, %struct.priv** %4, align 8
  %96 = getelementptr inbounds %struct.priv, %struct.priv* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %97, i64 %99
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.priv*, %struct.priv** %4, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %106, i64 %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %103, %112
  %114 = load i32, i32* @IPC_CREAT, align 4
  %115 = or i32 %114, 511
  %116 = call i64 @shmget(i32 %94, i32 %113, i32 %115)
  %117 = load %struct.priv*, %struct.priv** %4, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 6
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i64 %116, i64* %123, align 8
  %124 = load %struct.priv*, %struct.priv** %4, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 6
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %93
  %134 = load %struct.priv*, %struct.priv** %4, align 8
  %135 = getelementptr inbounds %struct.priv, %struct.priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %136, i64 %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = call i32 @XDestroyImage(%struct.TYPE_10__* %140)
  %142 = load %struct.vo*, %struct.vo** %6, align 8
  %143 = call i32 @MP_WARN(%struct.vo* %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %237

144:                                              ; preds = %93
  %145 = load %struct.priv*, %struct.priv** %4, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 6
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @shmat(i64 %152, i32 0, i32 0)
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.priv*, %struct.priv** %4, align 8
  %156 = getelementptr inbounds %struct.priv, %struct.priv* %155, i32 0, i32 6
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i8* %154, i8** %161, align 8
  %162 = load %struct.priv*, %struct.priv** %4, align 8
  %163 = getelementptr inbounds %struct.priv, %struct.priv* %162, i32 0, i32 6
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp eq i8* %169, inttoptr (i64 -1 to i8*)
  br i1 %170, label %171, label %182

171:                                              ; preds = %144
  %172 = load %struct.priv*, %struct.priv** %4, align 8
  %173 = getelementptr inbounds %struct.priv, %struct.priv* %172, i32 0, i32 2
  %174 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %174, i64 %176
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = call i32 @XDestroyImage(%struct.TYPE_10__* %178)
  %180 = load %struct.vo*, %struct.vo** %6, align 8
  %181 = call i32 @MP_WARN(%struct.vo* %180, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %237

182:                                              ; preds = %144
  %183 = load %struct.priv*, %struct.priv** %4, align 8
  %184 = getelementptr inbounds %struct.priv, %struct.priv* %183, i32 0, i32 6
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.priv*, %struct.priv** %4, align 8
  %192 = getelementptr inbounds %struct.priv, %struct.priv* %191, i32 0, i32 2
  %193 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %193, i64 %195
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  store i8* %190, i8** %198, align 8
  %199 = load i32, i32* @False, align 4
  %200 = load %struct.priv*, %struct.priv** %4, align 8
  %201 = getelementptr inbounds %struct.priv, %struct.priv* %200, i32 0, i32 6
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  store i32 %199, i32* %206, align 8
  %207 = load %struct.vo*, %struct.vo** %6, align 8
  %208 = getelementptr inbounds %struct.vo, %struct.vo* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.priv*, %struct.priv** %4, align 8
  %213 = getelementptr inbounds %struct.priv, %struct.priv* %212, i32 0, i32 6
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  %218 = call i32 @XShmAttach(i32 %211, %struct.TYPE_11__* %217)
  %219 = load %struct.vo*, %struct.vo** %6, align 8
  %220 = getelementptr inbounds %struct.vo, %struct.vo* %219, i32 0, i32 0
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @False, align 4
  %225 = call i32 @XSync(i32 %223, i32 %224)
  %226 = load %struct.priv*, %struct.priv** %4, align 8
  %227 = getelementptr inbounds %struct.priv, %struct.priv* %226, i32 0, i32 6
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @IPC_RMID, align 4
  %235 = call i32 @shmctl(i64 %233, i32 %234, i32 0)
  br label %303

236:                                              ; preds = %44
  br label %237

237:                                              ; preds = %236, %171, %133, %90
  %238 = load %struct.priv*, %struct.priv** %4, align 8
  %239 = getelementptr inbounds %struct.priv, %struct.priv* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load %struct.vo*, %struct.vo** %6, align 8
  %241 = call i32 @MP_VERBOSE(%struct.vo* %240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %242 = load %struct.vo*, %struct.vo** %6, align 8
  %243 = getelementptr inbounds %struct.vo, %struct.vo* %242, i32 0, i32 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.priv*, %struct.priv** %4, align 8
  %248 = getelementptr inbounds %struct.priv, %struct.priv* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.priv*, %struct.priv** %4, align 8
  %252 = getelementptr inbounds %struct.priv, %struct.priv* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ZPixmap, align 4
  %255 = load %struct.priv*, %struct.priv** %4, align 8
  %256 = getelementptr inbounds %struct.priv, %struct.priv* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.priv*, %struct.priv** %4, align 8
  %259 = getelementptr inbounds %struct.priv, %struct.priv* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call %struct.TYPE_10__* @XCreateImage(i32 %246, i32 %250, i32 %253, i32 %254, i32 0, i32* null, i32 %257, i32 %260, i32 8, i32 0)
  %262 = load %struct.priv*, %struct.priv** %4, align 8
  %263 = getelementptr inbounds %struct.priv, %struct.priv* %262, i32 0, i32 2
  %264 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %263, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %264, i64 %266
  store %struct.TYPE_10__* %261, %struct.TYPE_10__** %267, align 8
  %268 = load %struct.priv*, %struct.priv** %4, align 8
  %269 = getelementptr inbounds %struct.priv, %struct.priv* %268, i32 0, i32 2
  %270 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %270, i64 %272
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = icmp ne %struct.TYPE_10__* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %237
  %277 = load %struct.vo*, %struct.vo** %6, align 8
  %278 = call i32 @MP_WARN(%struct.vo* %277, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %304

279:                                              ; preds = %237
  %280 = load %struct.priv*, %struct.priv** %4, align 8
  %281 = getelementptr inbounds %struct.priv, %struct.priv* %280, i32 0, i32 2
  %282 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %281, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %282, i64 %284
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.priv*, %struct.priv** %4, align 8
  %290 = getelementptr inbounds %struct.priv, %struct.priv* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %288, %291
  %293 = add nsw i32 %292, 32
  %294 = call i8* @calloc(i32 1, i32 %293)
  %295 = load %struct.priv*, %struct.priv** %4, align 8
  %296 = getelementptr inbounds %struct.priv, %struct.priv* %295, i32 0, i32 2
  %297 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %297, i64 %299
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 2
  store i8* %294, i8** %302, align 8
  br label %303

303:                                              ; preds = %279, %182
  store i32 1, i32* %3, align 4
  br label %304

304:                                              ; preds = %303, %276
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i64 @XShmQueryExtension(i32) #1

declare dso_local i64 @XShmGetEventBase(i32) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*) #1

declare dso_local %struct.TYPE_10__* @XShmCreateImage(i32, i32, i32, i32, i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @shmget(i32, i32, i32) #1

declare dso_local i32 @XDestroyImage(%struct.TYPE_10__*) #1

declare dso_local i64 @shmat(i64, i32, i32) #1

declare dso_local i32 @XShmAttach(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @XSync(i32, i32) #1

declare dso_local i32 @shmctl(i64, i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*) #1

declare dso_local %struct.TYPE_10__* @XCreateImage(i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
