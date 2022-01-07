; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_darwin_sendfile_chain.c_ngx_darwin_sendfile_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_darwin_sendfile_chain.c_ngx_darwin_sendfile_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i64, i64 }
%struct.TYPE_23__ = type { i32, i64, i64, %struct.iovec* }
%struct.iovec = type { i32 }
%struct.sf_hdtr = type { i64, i64, %struct.iovec*, %struct.iovec* }

@NGX_IOVS_PREALLOCATE = common dso_local global i32 0, align 4
@NGX_MAX_SIZE_T_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sendfile: @%O %O h:%uz\00", align 1
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sendfile() failed\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"sendfile() sent only %O bytes\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"sendfile() reported that \22%s\22 was truncated\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"sendfile: %d, @%O %O:%O\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @ngx_darwin_sendfile_chain(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca %struct.TYPE_23__, align 8
  %21 = alloca %struct.sf_hdtr, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i64 %2, i64* %7, align 8
  %26 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %22, align 8
  %29 = alloca %struct.iovec, i64 %27, align 16
  store i64 %27, i64* %23, align 8
  %30 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca %struct.iovec, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %17, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %3
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

42:                                               ; preds = %3
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %48 = load i64, i64* @ngx_pagesize, align 8
  %49 = sub nsw i64 %47, %48
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %42
  %52 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %53 = load i64, i64* @ngx_pagesize, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %51, %45
  store i64 0, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  store %struct.iovec* %29, %struct.iovec** %56, align 8
  %57 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  store %struct.iovec* %32, %struct.iovec** %59, align 8
  %60 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %297, %274, %55
  store i32 0, i32* %14, align 4
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %10, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_26__* @ngx_output_chain_to_iovec(%struct.TYPE_23__* %19, %struct.TYPE_26__* %64, i64 %67, i32 %70)
  store %struct.TYPE_26__* %71, %struct.TYPE_26__** %18, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  %74 = icmp eq %struct.TYPE_26__* %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %76, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %83 = icmp ne %struct.TYPE_26__* %82, null
  br i1 %83, label %84, label %244

84:                                               ; preds = %77
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %244

91:                                               ; preds = %84
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %244

95:                                               ; preds = %91
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  store %struct.TYPE_27__* %98, %struct.TYPE_27__** %16, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub nsw i64 %99, %100
  %102 = call i64 @ngx_chain_coalesce_file(%struct.TYPE_26__** %18, i64 %101)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %95
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %9, align 8
  %117 = sub nsw i64 %115, %116
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_26__* @ngx_output_chain_to_iovec(%struct.TYPE_23__* %20, %struct.TYPE_26__* %114, i64 %117, i32 %120)
  store %struct.TYPE_26__* %121, %struct.TYPE_26__** %18, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  %124 = icmp eq %struct.TYPE_26__* %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %126, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %9, align 8
  br label %134

132:                                              ; preds = %109, %95
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %132, %127
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %140 = load %struct.iovec*, %struct.iovec** %139, align 8
  br label %142

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %138
  %143 = phi %struct.iovec* [ %140, %138 ], [ null, %141 ]
  %144 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %21, i32 0, i32 3
  store %struct.iovec* %143, %struct.iovec** %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %21, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  %153 = load %struct.iovec*, %struct.iovec** %152, align 8
  br label %155

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %151
  %156 = phi %struct.iovec* [ %153, %151 ], [ null, %154 ]
  %157 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %21, i32 0, i32 2
  store %struct.iovec* %156, %struct.iovec** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.sf_hdtr, %struct.sf_hdtr* %21, i32 0, i32 1
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = add nsw i64 %162, %163
  store i64 %164, i64* %11, align 8
  %165 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @ngx_log_debug3(i32 %165, i32 %168, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %171, i64 %172, i64 %174)
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @sendfile(i32 %180, i32 %183, i32 %186, i64* %11, %struct.sf_hdtr* %21, i32 0)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %210

190:                                              ; preds = %155
  %191 = load i32, i32* @ngx_errno, align 4
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  switch i32 %192, label %195 [
    i32 129, label %193
    i32 128, label %194
  ]

193:                                              ; preds = %190
  br label %202

194:                                              ; preds = %190
  store i32 1, i32* %14, align 4
  br label %202

195:                                              ; preds = %190
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  store i32 1, i32* %197, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @ngx_connection_error(%struct.TYPE_25__* %198, i32 %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %201, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

202:                                              ; preds = %194, %193
  %203 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i64, i64* %11, align 8
  %209 = call i32 @ngx_log_debug1(i32 %203, i32 %206, i32 %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %208)
  br label %210

210:                                              ; preds = %202, %155
  %211 = load i32, i32* %8, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %210
  %214 = load i64, i64* %11, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = load i32, i32* @NGX_LOG_ALERT, align 4
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @ngx_log_error(i32 %217, i32 %220, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %226)
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %228, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

229:                                              ; preds = %213, %210
  %230 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %239, %241
  %243 = call i32 @ngx_log_debug4(i32 %230, i32 %233, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %234, i32 %237, i64 %238, i64 %242)
  br label %261

244:                                              ; preds = %91, %84, %77
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %246 = call i64 @ngx_writev(%struct.TYPE_25__* %245, %struct.TYPE_23__* %19)
  store i64 %246, i64* %13, align 8
  %247 = load i64, i64* %13, align 8
  %248 = load i64, i64* @NGX_ERROR, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %251, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

252:                                              ; preds = %244
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* @NGX_AGAIN, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %259

257:                                              ; preds = %252
  %258 = load i64, i64* %13, align 8
  br label %259

259:                                              ; preds = %257, %256
  %260 = phi i64 [ 0, %256 ], [ %258, %257 ]
  store i64 %260, i64* %11, align 8
  br label %261

261:                                              ; preds = %259, %229
  %262 = load i64, i64* %11, align 8
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %262
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %264, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %270 = load i64, i64* %11, align 8
  %271 = call %struct.TYPE_26__* @ngx_chain_update_sent(%struct.TYPE_26__* %269, i64 %270)
  store %struct.TYPE_26__* %271, %struct.TYPE_26__** %6, align 8
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %261
  %275 = load i64, i64* %10, align 8
  %276 = load i64, i64* %11, align 8
  %277 = add nsw i64 %275, %276
  store i64 %277, i64* %9, align 8
  br label %62

278:                                              ; preds = %261
  %279 = load i64, i64* %9, align 8
  %280 = load i64, i64* %10, align 8
  %281 = sub nsw i64 %279, %280
  %282 = load i64, i64* %11, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 2
  store i64 0, i64* %286, align 8
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %287, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

288:                                              ; preds = %278
  %289 = load i64, i64* %9, align 8
  %290 = load i64, i64* %7, align 8
  %291 = icmp sge i64 %289, %290
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %294 = icmp eq %struct.TYPE_26__* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %292, %288
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %296, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %298

297:                                              ; preds = %292
  br label %62

298:                                              ; preds = %295, %284, %250, %216, %195, %125, %75, %40
  %299 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %300
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_26__* @ngx_output_chain_to_iovec(%struct.TYPE_23__*, %struct.TYPE_26__*, i64, i32) #2

declare dso_local i64 @ngx_chain_coalesce_file(%struct.TYPE_26__**, i64) #2

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i64) #2

declare dso_local i32 @sendfile(i32, i32, i32, i64*, %struct.sf_hdtr*, i32) #2

declare dso_local i32 @ngx_connection_error(%struct.TYPE_25__*, i32, i8*) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i64, i64) #2

declare dso_local i64 @ngx_writev(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local %struct.TYPE_26__* @ngx_chain_update_sent(%struct.TYPE_26__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
