; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_complete_incr_bin.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_complete_incr_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i64, %struct.TYPE_31__*, %struct.TYPE_26__, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_33__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i8*, i8* }

@INCR_MAX_STORAGE_LEN = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"incr \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" %lld, %llu, %d\0A\00", align 1
@PROTOCOL_BINARY_CMD_INCREMENT = common dso_local global i64 0, align 8
@PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"SERVER_ERROR Out of memory incrementing value\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@NREAD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_NOT_STORED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"SERVER_ERROR Out of memory allocating new item\00", align 1
@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @complete_incr_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_incr_bin(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %13 = load i32, i32* @INCR_MAX_STORAGE_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %20, %struct.TYPE_32__** %9, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = call %struct.TYPE_33__* @binary_get_request(%struct.TYPE_22__* %21)
  store %struct.TYPE_33__* %22, %struct.TYPE_33__** %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %24 = icmp ne %struct.TYPE_22__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 8
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @ntohll(i8* %38)
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 2
  store i8* %39, i8** %43, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @ntohll(i8* %48)
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ntohl(i32 %58)
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %65 = call i8* @binary_get_key(%struct.TYPE_22__* %64)
  store i8* %65, i8** %4, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 0), align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %113

73:                                               ; preds = %1
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %90, %73
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %5, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %76

93:                                               ; preds = %76
  %94 = load i32, i32* @stderr, align 4
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %100, i64 %106, i32 %111)
  br label %113

113:                                              ; preds = %93, %1
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %8, align 8
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PROTOCOL_BINARY_CMD_INCREMENT, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @add_delta(%struct.TYPE_22__* %127, i8* %128, i64 %129, i32 %135, i8* %140, i8* %16, i64* %8)
  switch i32 %141, label %287 [
    i32 128, label %142
    i32 129, label %161
    i32 130, label %165
    i32 131, label %168
    i32 132, label %283
  ]

142:                                              ; preds = %126
  %143 = call i8* @strtoull(i8* %16, i32* null, i32 10)
  %144 = call i8* @htonll(i8* %143)
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %151, %142
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = call i32 @write_bin_response(%struct.TYPE_22__* %156, %struct.TYPE_23__* %159, i32 0, i32 0, i32 8)
  br label %287

161:                                              ; preds = %126
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %163 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL, align 4
  %164 = call i32 @write_bin_error(%struct.TYPE_22__* %162, i32 %163, i32* null, i32 0)
  br label %287

165:                                              ; preds = %126
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %167 = call i32 @out_of_memory(%struct.TYPE_22__* %166, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %287

168:                                              ; preds = %126
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %244

175:                                              ; preds = %168
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @htonll(i8* %180)
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  store i8* %181, i8** %185, align 8
  %186 = load i32, i32* @INCR_MAX_STORAGE_LEN, align 4
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = call i32 @snprintf(i8* %16, i32 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %192)
  %194 = call i32 @strlen(i8* %16)
  store i32 %194, i32* %12, align 4
  %195 = load i8*, i8** %4, align 8
  %196 = load i64, i64* %5, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @realtime(i32 %201)
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 2
  %205 = call i32* @item_alloc(i8* %195, i64 %196, i32 0, i32 %202, i32 %204)
  store i32* %205, i32** %3, align 8
  %206 = load i32*, i32** %3, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %240

208:                                              ; preds = %175
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @ITEM_data(i32* %209)
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @memcpy(i32 %210, i8* %16, i32 %211)
  %213 = load i32*, i32** %3, align 8
  %214 = call i32 @ITEM_data(i32* %213)
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %214, %215
  %217 = call i32 @memcpy(i32 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %218 = load i32*, i32** %3, align 8
  %219 = load i32, i32* @NREAD_ADD, align 4
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %221 = call i32 @store_item(i32* %218, i32 %219, %struct.TYPE_22__* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %208
  %224 = load i32*, i32** %3, align 8
  %225 = call i64 @ITEM_get_cas(i32* %224)
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 2
  store i64 %225, i64* %227, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 0
  %232 = call i32 @write_bin_response(%struct.TYPE_22__* %228, %struct.TYPE_23__* %231, i32 0, i32 0, i32 8)
  br label %237

233:                                              ; preds = %208
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %235 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_NOT_STORED, align 4
  %236 = call i32 @write_bin_error(%struct.TYPE_22__* %234, i32 %235, i32* null, i32 0)
  br label %237

237:                                              ; preds = %233, %223
  %238 = load i32*, i32** %3, align 8
  %239 = call i32 @item_remove(i32* %238)
  br label %243

240:                                              ; preds = %175
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %242 = call i32 @out_of_memory(%struct.TYPE_22__* %241, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %237
  br label %282

244:                                              ; preds = %168
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 0
  %250 = call i32 @pthread_mutex_lock(i32* %249)
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @PROTOCOL_BINARY_CMD_INCREMENT, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %244
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 4
  br label %272

264:                                              ; preds = %244
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %264, %256
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 0
  %278 = call i32 @pthread_mutex_unlock(i32* %277)
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %280 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %281 = call i32 @write_bin_error(%struct.TYPE_22__* %279, i32 %280, i32* null, i32 0)
  br label %282

282:                                              ; preds = %272, %243
  br label %287

283:                                              ; preds = %126
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %285 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, align 4
  %286 = call i32 @write_bin_error(%struct.TYPE_22__* %284, i32 %285, i32* null, i32 0)
  br label %287

287:                                              ; preds = %126, %283, %282, %165, %161, %155
  %288 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %288)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_33__* @binary_get_request(%struct.TYPE_22__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @ntohll(i8*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i8* @binary_get_key(%struct.TYPE_22__*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @add_delta(%struct.TYPE_22__*, i8*, i64, i32, i8*, i8*, i64*) #2

declare dso_local i8* @htonll(i8*) #2

declare dso_local i8* @strtoull(i8*, i32*, i32) #2

declare dso_local i32 @write_bin_response(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32, i32) #2

declare dso_local i32 @write_bin_error(%struct.TYPE_22__*, i32, i32*, i32) #2

declare dso_local i32 @out_of_memory(%struct.TYPE_22__*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @item_alloc(i8*, i64, i32, i32, i32) #2

declare dso_local i32 @realtime(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @ITEM_data(i32*) #2

declare dso_local i32 @store_item(i32*, i32, %struct.TYPE_22__*) #2

declare dso_local i64 @ITEM_get_cas(i32*) #2

declare dso_local i32 @item_remove(i32*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
