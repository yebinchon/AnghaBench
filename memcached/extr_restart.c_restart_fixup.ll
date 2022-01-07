; ModuleID = '/home/carl/AnghaBench/memcached/extr_restart.c_restart_fixup.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_restart.c_restart_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.timeval = type { i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }

@settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[restart] original memory base: [%p] new base: [%p]\0A\00", align 1
@mmap_base = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"[restart] recovery start [%d.%d]\0A\00", align 1
@slabmem_limit = common dso_local global i32 0, align 4
@ITEM_LINKED = common dso_local global i32 0, align 4
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@ITEM_CHUNK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"[restart] recovery end [%d.%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restart_fixup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %6, align 4
  %12 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 1), align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load i32, i32* @mmap_base, align 4
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %15, %1
  br label %30

30:                                               ; preds = %253, %54, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @slabmem_limit, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %254

34:                                               ; preds = %30
  %35 = load i32, i32* @mmap_base, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = bitcast i8* %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  %42 = load i32, i32* @mmap_base, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 8
  %50 = urem i32 %48, %49
  %51 = call i32 @slabs_fixup(i8* %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %70

54:                                               ; preds = %34
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = urem i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %6, align 4
  br label %30

70:                                               ; preds = %34
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ITEM_LINKED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %132

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = ptrtoint %struct.TYPE_7__* %85 to i64
  %87 = load i8*, i8** %2, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = inttoptr i64 %89 to %struct.TYPE_7__*
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = ptrtoint %struct.TYPE_7__* %95 to i64
  %97 = load i32, i32* @mmap_base, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = inttoptr i64 %99 to %struct.TYPE_7__*
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %102, align 8
  br label %103

103:                                              ; preds = %82, %77
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = icmp ne %struct.TYPE_7__* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = ptrtoint %struct.TYPE_7__* %111 to i64
  %113 = load i8*, i8** %2, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = inttoptr i64 %115 to %struct.TYPE_7__*
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = ptrtoint %struct.TYPE_7__* %121 to i64
  %123 = load i32, i32* @mmap_base, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = inttoptr i64 %125 to %struct.TYPE_7__*
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %128, align 8
  br label %129

129:                                              ; preds = %108, %103
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = call i32 @do_item_link_fixup(%struct.TYPE_7__* %130)
  br label %132

132:                                              ; preds = %129, %70
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ITEM_CHUNKED, align 4
  %137 = load i32, i32* @ITEM_CHUNK, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %238

141:                                              ; preds = %132
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ITEM_CHUNKED, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = call i64 @ITEM_schunk(%struct.TYPE_7__* %149)
  %151 = inttoptr i64 %150 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %9, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @slabs_size(i32 %154)
  store i32 %155, i32* %8, align 4
  br label %159

156:                                              ; preds = %141
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = bitcast %struct.TYPE_7__* %157 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %158, %struct.TYPE_6__** %9, align 8
  br label %159

159:                                              ; preds = %156, %148
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = icmp ne %struct.TYPE_6__* %162, null
  br i1 %163, label %164, label %185

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = ptrtoint %struct.TYPE_6__* %167 to i64
  %169 = load i8*, i8** %2, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = sub nsw i64 %168, %170
  %172 = inttoptr i64 %171 to %struct.TYPE_6__*
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %174, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = ptrtoint %struct.TYPE_6__* %177 to i64
  %179 = load i32, i32* @mmap_base, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = inttoptr i64 %181 to %struct.TYPE_6__*
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %184, align 8
  br label %185

185:                                              ; preds = %164, %159
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = icmp ne %struct.TYPE_6__* %188, null
  br i1 %189, label %190, label %211

190:                                              ; preds = %185
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = ptrtoint %struct.TYPE_6__* %193 to i64
  %195 = load i8*, i8** %2, align 8
  %196 = ptrtoint i8* %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = inttoptr i64 %197 to %struct.TYPE_6__*
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store %struct.TYPE_6__* %198, %struct.TYPE_6__** %200, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = ptrtoint %struct.TYPE_6__* %203 to i64
  %205 = load i32, i32* @mmap_base, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = inttoptr i64 %207 to %struct.TYPE_6__*
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  store %struct.TYPE_6__* %208, %struct.TYPE_6__** %210, align 8
  br label %211

211:                                              ; preds = %190, %185
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = icmp ne %struct.TYPE_7__* %214, null
  br i1 %215, label %216, label %237

216:                                              ; preds = %211
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = ptrtoint %struct.TYPE_7__* %219 to i64
  %221 = load i8*, i8** %2, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = sub nsw i64 %220, %222
  %224 = inttoptr i64 %223 to %struct.TYPE_7__*
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  store %struct.TYPE_7__* %224, %struct.TYPE_7__** %226, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = ptrtoint %struct.TYPE_7__* %229 to i64
  %231 = load i32, i32* @mmap_base, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  %234 = inttoptr i64 %233 to %struct.TYPE_7__*
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  store %struct.TYPE_7__* %234, %struct.TYPE_7__** %236, align 8
  br label %237

237:                                              ; preds = %216, %211
  br label %238

238:                                              ; preds = %237, %132
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %6, align 4
  %244 = sub i32 %243, %242
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp ugt i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %238
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %4, align 4
  %251 = add i32 %250, %249
  store i32 %251, i32* %4, align 4
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 8
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %248, %238
  br label %30

254:                                              ; preds = %30
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 1), align 8
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %254
  %258 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %259 = load i32, i32* @stderr, align 4
  %260 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 @fprintf(i32 %259, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %257, %254
  ret i32 0
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @slabs_fixup(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_item_link_fixup(%struct.TYPE_7__*) #1

declare dso_local i64 @ITEM_schunk(%struct.TYPE_7__*) #1

declare dso_local i32 @slabs_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
