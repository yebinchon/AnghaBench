; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_update.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_35__*, %struct.TYPE_33__, i32, %struct.TYPE_31__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8*, i8* }

@settings = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<%d ADD \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<%d SET \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"<%d REPLACE \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" Value len is %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PROTOCOL_BINARY_RESPONSE_E2BIG = common dso_local global i32 0, align 4
@TOO_LARGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"SERVER_ERROR Out of memory allocating item\00", align 1
@NO_MEMORY = common dso_local global i32 0, align 4
@LOG_MUTATIONS = common dso_local global i32 0, align 4
@LOGGER_ITEM_STORE = common dso_local global i32 0, align 4
@DONT_UPDATE = common dso_local global i32 0, align 4
@conn_swallow = common dso_local global i32 0, align 4
@NREAD_ADD = common dso_local global i32 0, align 4
@NREAD_SET = common dso_local global i32 0, align 4
@NREAD_REPLACE = common dso_local global i32 0, align 4
@NREAD_CAS = common dso_local global i32 0, align 4
@conn_nread = common dso_local global i32 0, align 4
@bin_read_set_value = common dso_local global i32 0, align 4
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*)* @process_bin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bin_update(%struct.TYPE_36__* %0) #0 {
  %2 = alloca %struct.TYPE_36__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %2, align 8
  %10 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %11 = call %struct.TYPE_34__* @binary_get_request(%struct.TYPE_36__* %10)
  store %struct.TYPE_34__* %11, %struct.TYPE_34__** %7, align 8
  %12 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %13 = icmp ne %struct.TYPE_36__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %17 = call i8* @binary_get_key(%struct.TYPE_36__* %16)
  store i8* %17, i8** %3, align 8
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @ntohl(i8* %27)
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @ntohl(i8* %37)
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  store i8* %38, i8** %42, align 8
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %48, %53
  %55 = sub nsw i32 %47, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @settings, i32 0, i32 0), align 8
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %110

58:                                               ; preds = %1
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 130
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %87

69:                                               ; preds = %58
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @stderr, align 4
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %63
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %101, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %88

104:                                              ; preds = %88
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %104, %1
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @settings, i32 0, i32 1), align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @stats_prefix_record_set(i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @realtime(i8* %129)
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 2
  %133 = call %struct.TYPE_35__* @item_alloc(i8* %118, i32 %119, i8* %124, i32 %130, i32 %132)
  store %struct.TYPE_35__* %133, %struct.TYPE_35__** %6, align 8
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %135 = icmp eq %struct.TYPE_35__* %134, null
  br i1 %135, label %136, label %211

136:                                              ; preds = %117
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 2
  %145 = call i32 @item_size_ok(i32 %137, i8* %142, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %136
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %149 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_E2BIG, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @write_bin_error(%struct.TYPE_36__* %148, i32 %149, i32* null, i32 %150)
  %152 = load i32, i32* @TOO_LARGE, align 4
  store i32 %152, i32* %9, align 4
  br label %160

153:                                              ; preds = %136
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %155 = call i32 @out_of_memory(%struct.TYPE_36__* %154, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @NO_MEMORY, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %153, %147
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 9
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @LOG_MUTATIONS, align 4
  %167 = load i32, i32* @LOGGER_ITEM_STORE, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i8*, i8** %3, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %177 = call i32 @ITEM_clsid(%struct.TYPE_35__* %176)
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @LOGGER_LOG(i32 %165, i32 %166, i32 %167, i32* null, i32 %168, i32 0, i8* %169, i32 %170, i8* %175, i32 %177, i32 %180)
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 128
  br i1 %185, label %186, label %207

186:                                              ; preds = %160
  %187 = load i8*, i8** %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %190 = load i32, i32* @DONT_UPDATE, align 4
  %191 = call %struct.TYPE_35__* @item_get(i8* %187, i32 %188, %struct.TYPE_36__* %189, i32 %190)
  store %struct.TYPE_35__* %191, %struct.TYPE_35__** %6, align 8
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %193 = icmp ne %struct.TYPE_35__* %192, null
  br i1 %193, label %194, label %206

194:                                              ; preds = %186
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %196 = call i32 @item_unlink(%struct.TYPE_35__* %195)
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 9
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %203 = call i32 @STORAGE_delete(i32 %201, %struct.TYPE_35__* %202)
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %205 = call i32 @item_remove(%struct.TYPE_35__* %204)
  br label %206

206:                                              ; preds = %194, %186
  br label %207

207:                                              ; preds = %206, %160
  %208 = load i32, i32* @conn_swallow, align 4
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 8
  br label %261

211:                                              ; preds = %117
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 7
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ITEM_set_cas(%struct.TYPE_35__* %212, i32 %217)
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  switch i32 %221, label %234 [
    i32 130, label %222
    i32 128, label %226
    i32 129, label %230
  ]

222:                                              ; preds = %211
  %223 = load i32, i32* @NREAD_ADD, align 4
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %236

226:                                              ; preds = %211
  %227 = load i32, i32* @NREAD_SET, align 4
  %228 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %236

230:                                              ; preds = %211
  %231 = load i32, i32* @NREAD_REPLACE, align 4
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %236

234:                                              ; preds = %211
  %235 = call i32 @assert(i32 0)
  br label %236

236:                                              ; preds = %234, %230, %226, %222
  %237 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %238 = call i64 @ITEM_get_cas(%struct.TYPE_35__* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* @NREAD_CAS, align 4
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %240, %236
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i32 0, i32 6
  store %struct.TYPE_35__* %245, %struct.TYPE_35__** %247, align 8
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %249 = call i8* @ITEM_data(%struct.TYPE_35__* %248)
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 5
  store i8* %249, i8** %251, align 8
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %256 = load i32, i32* @conn_nread, align 4
  %257 = call i32 @conn_set_state(%struct.TYPE_36__* %255, i32 %256)
  %258 = load i32, i32* @bin_read_set_value, align 4
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %244, %207
  ret void
}

declare dso_local %struct.TYPE_34__* @binary_get_request(%struct.TYPE_36__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @binary_get_key(%struct.TYPE_36__*) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @stats_prefix_record_set(i8*, i32) #1

declare dso_local %struct.TYPE_35__* @item_alloc(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @realtime(i8*) #1

declare dso_local i32 @item_size_ok(i32, i8*, i32) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_36__*, i32, i32*, i32) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @LOGGER_LOG(i32, i32, i32, i32*, i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ITEM_clsid(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @item_get(i8*, i32, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @item_unlink(%struct.TYPE_35__*) #1

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @item_remove(%struct.TYPE_35__*) #1

declare dso_local i32 @ITEM_set_cas(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @ITEM_get_cas(%struct.TYPE_35__*) #1

declare dso_local i8* @ITEM_data(%struct.TYPE_35__*) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_36__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
