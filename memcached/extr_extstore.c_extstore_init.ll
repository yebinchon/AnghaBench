; ModuleID = '/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extstore_conf_file = type { i64, i64, i32, i64, %struct.extstore_conf_file*, i32 }
%struct.extstore_conf = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__*, i8*, %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_11__**, %struct.TYPE_11__*, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i64, i32, i32, %struct.TYPE_11__*, i64, i32 }

@EXTSTORE_INIT_BAD_WBUF_SIZE = common dso_local global i32 0, align 4
@EXTSTORE_INIT_NEED_MORE_WBUF = common dso_local global i32 0, align 4
@EXTSTORE_INIT_NEED_MORE_BUCKETS = common dso_local global i32 0, align 4
@EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT = common dso_local global i32 0, align 4
@EXTSTORE_INIT_OOM = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EXTSTORE_INIT_OPEN_FAIL = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8
@EXTSTORE_INIT_TOO_MANY_PAGES = common dso_local global i32 0, align 4
@extstore_io_thread = common dso_local global i32 0, align 4
@extstore_maint_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extstore_init(%struct.extstore_conf_file* %0, %struct.extstore_conf* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.extstore_conf_file*, align 8
  %6 = alloca %struct.extstore_conf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extstore_conf_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.extstore_conf_file* %0, %struct.extstore_conf_file** %5, align 8
  store %struct.extstore_conf* %1, %struct.extstore_conf** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.extstore_conf_file* null, %struct.extstore_conf_file** %9, align 8
  %16 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %17 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %20 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EXTSTORE_INIT_BAD_WBUF_SIZE, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i8* null, i8** %4, align 8
  br label %492

27:                                               ; preds = %3
  %28 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %29 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %32 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EXTSTORE_INIT_NEED_MORE_WBUF, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i8* null, i8** %4, align 8
  br label %492

38:                                               ; preds = %27
  %39 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %40 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EXTSTORE_INIT_NEED_MORE_BUCKETS, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i8* null, i8** %4, align 8
  br label %492

46:                                               ; preds = %38
  %47 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %48 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %49, 2097152
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %54 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = srem i32 %55, 2097152
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i8* null, i8** %4, align 8
  br label %492

61:                                               ; preds = %52
  %62 = call i8* @calloc(i32 1, i32 128)
  %63 = bitcast i8* %62 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %11, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EXTSTORE_INIT_OOM, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  store i8* null, i8** %4, align 8
  br label %492

69:                                               ; preds = %61
  %70 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %71 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i64 0, i64* %12, align 8
  %75 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %5, align 8
  store %struct.extstore_conf_file* %75, %struct.extstore_conf_file** %9, align 8
  br label %76

76:                                               ; preds = %108, %69
  %77 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %78 = icmp ne %struct.extstore_conf_file* %77, null
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %81 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @O_RDWR, align 4
  %84 = load i32, i32* @O_CREAT, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @O_TRUNC, align 4
  %87 = or i32 %85, %86
  %88 = call i64 @open(i32 %82, i32 %87, i32 420)
  %89 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %90 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %92 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load i32, i32* @EXTSTORE_INIT_OPEN_FAIL, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = call i32 @free(%struct.TYPE_12__* %98)
  store i8* null, i8** %4, align 8
  br label %492

100:                                              ; preds = %79
  %101 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %102 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %12, align 8
  %106 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %107 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %100
  %109 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %110 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %109, i32 0, i32 4
  %111 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %110, align 8
  store %struct.extstore_conf_file* %111, %struct.extstore_conf_file** %9, align 8
  br label %76

112:                                              ; preds = %76
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @UINT16_MAX, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* @EXTSTORE_INIT_TOO_MANY_PAGES, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %120 = call i32 @free(%struct.TYPE_12__* %119)
  store i8* null, i8** %4, align 8
  br label %492

121:                                              ; preds = %112
  %122 = load i64, i64* %12, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @calloc(i32 %128, i32 4)
  %130 = bitcast i8* %129 to %struct.TYPE_11__*
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 14
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 14
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = icmp eq %struct.TYPE_11__* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load i32, i32* @EXTSTORE_INIT_OOM, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %141 = call i32 @free(%struct.TYPE_12__* %140)
  store i8* null, i8** %4, align 8
  br label %492

142:                                              ; preds = %121
  store %struct.extstore_conf_file* null, %struct.extstore_conf_file** %9, align 8
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %237, %142
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %240

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %174
  %151 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %152 = icmp eq %struct.extstore_conf_file* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %155 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %154, i32 0, i32 4
  %156 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %155, align 8
  %157 = icmp eq %struct.extstore_conf_file* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %153, %150
  %159 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %5, align 8
  store %struct.extstore_conf_file* %159, %struct.extstore_conf_file** %9, align 8
  br label %164

160:                                              ; preds = %153
  %161 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %162 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %161, i32 0, i32 4
  %163 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %162, align 8
  store %struct.extstore_conf_file* %163, %struct.extstore_conf_file** %9, align 8
  br label %164

164:                                              ; preds = %160, %158
  %165 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %166 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %171 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  br label %175

174:                                              ; preds = %164
  br label %150

175:                                              ; preds = %169
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 14
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 6
  %183 = call i32 @pthread_mutex_init(i32* %182, i32* null)
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 14
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  store i32 %184, i32* %191, align 8
  %192 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %193 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 14
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i64 %194, i64* %201, align 8
  %202 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %203 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 14
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 2
  store i32 %204, i32* %211, align 8
  %212 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %213 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 14
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 5
  store i64 %214, i64* %221, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 14
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 3
  store i32 1, i32* %228, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %9, align 8
  %234 = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %232
  store i64 %236, i64* %234, align 8
  br label %237

237:                                              ; preds = %175
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %143

240:                                              ; preds = %143
  %241 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %242 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @calloc(i32 %243, i32 8)
  %245 = bitcast i8* %244 to %struct.TYPE_11__**
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 15
  store %struct.TYPE_11__** %245, %struct.TYPE_11__*** %247, align 8
  %248 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %249 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %329, %240
  %258 = load i32, i32* %8, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %332

260:                                              ; preds = %257
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 17
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 14
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %260
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 16
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %276, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 14
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 4
  store %struct.TYPE_11__* %277, %struct.TYPE_11__** %284, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 14
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i64 %289
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 16
  store %struct.TYPE_11__* %290, %struct.TYPE_11__** %292, align 8
  br label %328

293:                                              ; preds = %260
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 14
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %13, align 4
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 15
  %304 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %304, i64 %306
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 14
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 4
  store %struct.TYPE_11__* %308, %struct.TYPE_11__** %315, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 14
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i64 %320
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 15
  %324 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %323, align 8
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %324, i64 %326
  store %struct.TYPE_11__* %321, %struct.TYPE_11__** %327, align 8
  br label %328

328:                                              ; preds = %293, %274
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %8, align 4
  br label %257

332:                                              ; preds = %257
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 3
  store i32 1, i32* %334, align 4
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i8* @calloc(i32 %337, i32 4)
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 13
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 2
  store i8* %338, i8** %341, align 8
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 13
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 0
  store i32 %344, i32* %347, align 8
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 13
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 1
  store i32 %350, i32* %353, align 4
  %354 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %355 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @calloc(i32 %356, i32 8)
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 12
  store i8* %357, i8** %359, align 8
  %360 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %361 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 2
  store i32 %362, i32* %364, align 8
  store i32 0, i32* %8, align 4
  br label %365

365:                                              ; preds = %394, %332
  %366 = load i32, i32* %8, align 4
  %367 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %368 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = icmp slt i32 %366, %369
  br i1 %370, label %371, label %397

371:                                              ; preds = %365
  %372 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %373 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call %struct.TYPE_14__* @wbuf_new(i32 %374)
  store %struct.TYPE_14__* %375, %struct.TYPE_14__** %14, align 8
  %376 = call i8* @calloc(i32 1, i32 8)
  %377 = bitcast i8* %376 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %377, %struct.TYPE_13__** %15, align 8
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 11
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %379, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 0
  store %struct.TYPE_14__* %380, %struct.TYPE_14__** %382, align 8
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 11
  store %struct.TYPE_14__* %383, %struct.TYPE_14__** %385, align 8
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 10
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %387, align 8
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 0
  store %struct.TYPE_13__* %388, %struct.TYPE_13__** %390, align 8
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 10
  store %struct.TYPE_13__* %391, %struct.TYPE_13__** %393, align 8
  br label %394

394:                                              ; preds = %371
  %395 = load i32, i32* %8, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %8, align 4
  br label %365

397:                                              ; preds = %365
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 9
  %400 = call i32 @pthread_mutex_init(i32* %399, i32* null)
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 8
  %403 = call i32 @pthread_mutex_init(i32* %402, i32* null)
  %404 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %405 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 7
  store i32 %406, i32* %408, align 8
  %409 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %410 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = call i8* @calloc(i32 %411, i32 4)
  %413 = bitcast i8* %412 to %struct.TYPE_15__*
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 6
  store %struct.TYPE_15__* %413, %struct.TYPE_15__** %415, align 8
  store i32 0, i32* %8, align 4
  br label %416

416:                                              ; preds = %455, %397
  %417 = load i32, i32* %8, align 4
  %418 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %419 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 4
  %421 = icmp slt i32 %417, %420
  br i1 %421, label %422, label %458

422:                                              ; preds = %416
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 6
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %424, align 8
  %426 = load i32, i32* %8, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 1
  %430 = call i32 @pthread_mutex_init(i32* %429, i32* null)
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 6
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %432, align 8
  %434 = load i32, i32* %8, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 0
  %438 = call i32 @pthread_cond_init(i32* %437, i32* null)
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 6
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %441, align 8
  %443 = load i32, i32* %8, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %445, i32 0, i32 2
  store %struct.TYPE_12__* %439, %struct.TYPE_12__** %446, align 8
  %447 = load i32, i32* @extstore_io_thread, align 4
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 6
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %449, align 8
  %451 = load i32, i32* %8, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i64 %452
  %454 = call i32 @pthread_create(i32* %10, i32* null, i32 %447, %struct.TYPE_15__* %453)
  br label %455

455:                                              ; preds = %422
  %456 = load i32, i32* %8, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %8, align 4
  br label %416

458:                                              ; preds = %416
  %459 = load %struct.extstore_conf*, %struct.extstore_conf** %6, align 8
  %460 = getelementptr inbounds %struct.extstore_conf, %struct.extstore_conf* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 4
  store i32 %461, i32* %463, align 8
  %464 = call i8* @calloc(i32 1, i32 4)
  %465 = bitcast i8* %464 to %struct.TYPE_15__*
  %466 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 5
  store %struct.TYPE_15__* %465, %struct.TYPE_15__** %467, align 8
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 5
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 2
  store %struct.TYPE_12__* %468, %struct.TYPE_12__** %472, align 8
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 5
  %475 = load %struct.TYPE_15__*, %struct.TYPE_15__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 1
  %477 = call i32 @pthread_mutex_init(i32* %476, i32* null)
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 5
  %480 = load %struct.TYPE_15__*, %struct.TYPE_15__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 0
  %482 = call i32 @pthread_cond_init(i32* %481, i32* null)
  %483 = load i32, i32* @extstore_maint_thread, align 4
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 5
  %486 = load %struct.TYPE_15__*, %struct.TYPE_15__** %485, align 8
  %487 = call i32 @pthread_create(i32* %10, i32* null, i32 %483, %struct.TYPE_15__* %486)
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %489 = call i32 @extstore_run_maint(%struct.TYPE_12__* %488)
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %491 = bitcast %struct.TYPE_12__* %490 to i8*
  store i8* %491, i8** %4, align 8
  br label %492

492:                                              ; preds = %458, %137, %116, %95, %66, %58, %43, %35, %24
  %493 = load i8*, i8** %4, align 8
  ret i8* %493
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @open(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @wbuf_new(i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @extstore_run_maint(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
