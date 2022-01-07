; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_handler.c_ngx_stream_init_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_handler.c_ngx_stream_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64, %struct.TYPE_39__*, %struct.TYPE_36__*, i32, i32, i32, i32, i32, %struct.TYPE_45__*, %struct.TYPE_42__*, %struct.sockaddr*, %struct.TYPE_38__* }
%struct.TYPE_39__ = type { i8*, %struct.TYPE_45__*, i32, i32 }
%struct.TYPE_36__ = type { i32 (%struct.TYPE_36__*)*, i32 }
%struct.TYPE_45__ = type { i32, i32, i32*, %struct.TYPE_37__*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i64, i64 }
%struct.sockaddr = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { %struct.TYPE_35__, i32, i32 }
%struct.TYPE_35__ = type { i64, i32, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }

@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_STREAM_MODULE = common dso_local global i32 0, align 4
@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"*%uA %sclient %*s connected to %V\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"udp \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ngx_stream_log_error = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"initializing session\00", align 1
@NGX_ERROR_INFO = common dso_local global i32 0, align 4
@ngx_stream_max_module = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"reading PROXY protocol\00", align 1
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i64 0, align 8
@ngx_posted_events = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_stream_init_connection(%struct.TYPE_37__* %0) #0 {
  %2 = alloca %struct.TYPE_37__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_44__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.TYPE_46__*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.TYPE_47__*, align 8
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %2, align 8
  %18 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %3, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %22 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 11
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  store %struct.TYPE_46__* %26, %struct.TYPE_46__** %10, align 8
  %27 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %83

31:                                               ; preds = %1
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %33 = call i64 @ngx_connection_local_sockaddr(%struct.TYPE_37__* %32, i32* null, i32 0)
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %38 = call i32 @ngx_stream_close_connection(%struct.TYPE_37__* %37)
  store i32 1, i32* %17, align 4
  br label %318

39:                                               ; preds = %31
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %40, i32 0, i32 10
  %42 = load %struct.sockaddr*, %struct.sockaddr** %41, align 8
  store %struct.sockaddr* %42, %struct.sockaddr** %9, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %46 [
  ]

46:                                               ; preds = %39
  %47 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %48 = bitcast %struct.sockaddr* %47 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %48, %struct.sockaddr_in** %11, align 8
  %49 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_47__*, %struct.TYPE_47__** %50, align 8
  store %struct.TYPE_47__* %51, %struct.TYPE_47__** %12, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %73, %46
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %76

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %52

76:                                               ; preds = %71, %52
  %77 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %80, i32 0, i32 0
  store %struct.TYPE_35__* %81, %struct.TYPE_35__** %14, align 8
  br label %82

82:                                               ; preds = %76
  br label %97

83:                                               ; preds = %1
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 10
  %86 = load %struct.sockaddr*, %struct.sockaddr** %85, align 8
  %87 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %89 [
  ]

89:                                               ; preds = %83
  %90 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_47__*, %struct.TYPE_47__** %91, align 8
  store %struct.TYPE_47__* %92, %struct.TYPE_47__** %12, align 8
  %93 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %94, i32 0, i32 0
  store %struct.TYPE_35__* %95, %struct.TYPE_35__** %14, align 8
  br label %96

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @ngx_pcalloc(i32 %100, i32 56)
  %102 = bitcast i8* %101 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %102, %struct.TYPE_45__** %13, align 8
  %103 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %104 = icmp eq %struct.TYPE_45__* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %107 = call i32 @ngx_stream_close_connection(%struct.TYPE_37__* %106)
  store i32 1, i32* %17, align 4
  br label %318

108:                                              ; preds = %97
  %109 = load i32, i32* @NGX_STREAM_MODULE, align 4
  %110 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_41__*, %struct.TYPE_41__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_41__*, %struct.TYPE_41__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 9
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %127, align 8
  %129 = icmp ne %struct.TYPE_42__* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %108
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_42__*, %struct.TYPE_42__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %136, i32 0, i32 9
  %138 = load %struct.TYPE_42__*, %struct.TYPE_42__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %135, %140
  %142 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 8
  br label %148

148:                                              ; preds = %130, %108
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %150 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %150, i32 0, i32 3
  store %struct.TYPE_37__* %149, %struct.TYPE_37__** %151, align 8
  %152 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 8
  store %struct.TYPE_45__* %152, %struct.TYPE_45__** %154, align 8
  %155 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %156 = load i32, i32* @ngx_stream_core_module, align 4
  %157 = call %struct.TYPE_33__* @ngx_stream_get_module_srv_conf(%struct.TYPE_45__* %155, i32 %156)
  store %struct.TYPE_33__* %157, %struct.TYPE_33__** %15, align 8
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ngx_set_connection_log(%struct.TYPE_37__* %158, i32 %161)
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %170 = call i64 @ngx_sock_ntop(i32 %165, i32 %168, i32* %21, i32 %169, i32 1)
  store i64 %170, i64* %5, align 8
  %171 = load i32, i32* @NGX_LOG_INFO, align 4
  %172 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %173, align 8
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @SOCK_DGRAM, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %185 = load i64, i64* %5, align 8
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 1
  %188 = call i32 @ngx_log_error(i32 %171, %struct.TYPE_39__* %174, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %177, i8* %184, i64 %185, i32* %21, i32* %187)
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %194, i32 0, i32 3
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* @ngx_stream_log_error, align 4
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_39__*, %struct.TYPE_39__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 2
  store i32 %196, i32* %200, align 8
  %201 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %204, i32 0, i32 1
  store %struct.TYPE_45__* %201, %struct.TYPE_45__** %205, align 8
  %206 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_39__*, %struct.TYPE_39__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %208, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %209, align 8
  %210 = load i32, i32* @NGX_ERROR_INFO, align 4
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ngx_stream_max_module, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 8, %217
  %219 = trunc i64 %218 to i32
  %220 = call i8* @ngx_pcalloc(i32 %215, i32 %219)
  %221 = bitcast i8* %220 to i32*
  %222 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %222, i32 0, i32 4
  store i32* %221, i32** %223, align 8
  %224 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %148
  %229 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %230 = call i32 @ngx_stream_close_connection(%struct.TYPE_37__* %229)
  store i32 1, i32* %17, align 4
  br label %318

231:                                              ; preds = %148
  %232 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %233 = load i32, i32* @ngx_stream_core_module, align 4
  %234 = call %struct.TYPE_34__* @ngx_stream_get_module_main_conf(%struct.TYPE_45__* %232, i32 %233)
  store %struct.TYPE_34__* %234, %struct.TYPE_34__** %16, align 8
  %235 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_37__*, %struct.TYPE_37__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = trunc i64 %245 to i32
  %247 = call i8* @ngx_pcalloc(i32 %239, i32 %246)
  %248 = bitcast i8* %247 to i32*
  %249 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %249, i32 0, i32 2
  store i32* %248, i32** %250, align 8
  %251 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %231
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %257 = call i32 @ngx_stream_close_connection(%struct.TYPE_37__* %256)
  store i32 1, i32* %17, align 4
  br label %318

258:                                              ; preds = %231
  %259 = call %struct.TYPE_44__* (...) @ngx_timeofday()
  store %struct.TYPE_44__* %259, %struct.TYPE_44__** %7, align 8
  %260 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %271, align 8
  store %struct.TYPE_36__* %272, %struct.TYPE_36__** %8, align 8
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 0
  store i32 (%struct.TYPE_36__*)* @ngx_stream_session_handler, i32 (%struct.TYPE_36__*)** %274, align 8
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %306

279:                                              ; preds = %258
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_39__*, %struct.TYPE_39__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %282, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %283, align 8
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %284, i32 0, i32 0
  store i32 (%struct.TYPE_36__*)* @ngx_stream_proxy_protocol_handler, i32 (%struct.TYPE_36__*)** %285, align 8
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %305, label %290

290:                                              ; preds = %279
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ngx_add_timer(%struct.TYPE_36__* %291, i32 %294)
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %297 = call i64 @ngx_handle_read_event(%struct.TYPE_36__* %296, i32 0)
  %298 = load i64, i64* @NGX_OK, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %290
  %301 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %302 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %303 = call i32 @ngx_stream_finalize_session(%struct.TYPE_45__* %301, i32 %302)
  br label %304

304:                                              ; preds = %300, %290
  store i32 1, i32* %17, align 4
  br label %318

305:                                              ; preds = %279
  br label %306

306:                                              ; preds = %305, %258
  %307 = load i64, i64* @ngx_use_accept_mutex, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %311 = call i32 @ngx_post_event(%struct.TYPE_36__* %310, i32* @ngx_posted_events)
  store i32 1, i32* %17, align 4
  br label %318

312:                                              ; preds = %306
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %313, i32 0, i32 0
  %315 = load i32 (%struct.TYPE_36__*)*, i32 (%struct.TYPE_36__*)** %314, align 8
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %317 = call i32 %315(%struct.TYPE_36__* %316)
  store i32 0, i32* %17, align 4
  br label %318

318:                                              ; preds = %312, %309, %304, %255, %228, %105, %36
  %319 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %319)
  %320 = load i32, i32* %17, align 4
  switch i32 %320, label %322 [
    i32 0, label %321
    i32 1, label %321
  ]

321:                                              ; preds = %318, %318
  ret void

322:                                              ; preds = %318
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ngx_connection_local_sockaddr(%struct.TYPE_37__*, i32*, i32) #2

declare dso_local i32 @ngx_stream_close_connection(%struct.TYPE_37__*) #2

declare dso_local i8* @ngx_pcalloc(i32, i32) #2

declare dso_local %struct.TYPE_33__* @ngx_stream_get_module_srv_conf(%struct.TYPE_45__*, i32) #2

declare dso_local i32 @ngx_set_connection_log(%struct.TYPE_37__*, i32) #2

declare dso_local i64 @ngx_sock_ntop(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_39__*, i32, i8*, i32, i8*, i64, i32*, i32*) #2

declare dso_local %struct.TYPE_34__* @ngx_stream_get_module_main_conf(%struct.TYPE_45__*, i32) #2

declare dso_local %struct.TYPE_44__* @ngx_timeofday(...) #2

declare dso_local i32 @ngx_stream_session_handler(%struct.TYPE_36__*) #2

declare dso_local i32 @ngx_stream_proxy_protocol_handler(%struct.TYPE_36__*) #2

declare dso_local i32 @ngx_add_timer(%struct.TYPE_36__*, i32) #2

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_36__*, i32) #2

declare dso_local i32 @ngx_stream_finalize_session(%struct.TYPE_45__*, i32) #2

declare dso_local i32 @ngx_post_event(%struct.TYPE_36__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
