; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_ping.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i8**, i32, i32*, i64 }
%struct.TYPE_13__ = type { i8**, i8** }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"upstream sent ping frame with non-zero stream id: %ui\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"upstream sent ping frame with invalid length: %uz\00", align 1
@NGX_HTTP_V2_ACK_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"upstream sent ping frame with ack flag\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"upstream sent too many ping frames\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"grpc ping\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@ngx_http_grpc_st_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @ngx_http_grpc_parse_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_grpc_parse_ping(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = ptrtoint i8** %14 to i64
  %19 = ptrtoint i8** %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %10, align 8
  br label %40

31:                                               ; preds = %3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  store i8** %39, i8*** %10, align 8
  br label %40

40:                                               ; preds = %31, %27
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %117

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i32, i32* @NGX_LOG_ERR, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %52, i32 %57, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @NGX_ERROR, align 4
  store i32 %62, i32* %4, align 4
  br label %191

63:                                               ; preds = %46
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 8
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i32, i32* @NGX_LOG_ERR, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %69, i32 %74, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @NGX_ERROR, align 4
  store i32 %79, i32* %4, align 4
  br label %191

80:                                               ; preds = %63
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NGX_HTTP_V2_ACK_FLAG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load i32, i32* @NGX_LOG_ERR, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %88, i32 %93, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @NGX_ERROR, align 4
  store i32 %95, i32* %4, align 4
  br label %191

96:                                               ; preds = %80
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = icmp sgt i32 %104, 1000
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load i32, i32* @NGX_LOG_ERR, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %108, i32 %113, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @NGX_ERROR, align 4
  store i32 %115, i32* %4, align 4
  br label %191

116:                                              ; preds = %101, %96
  br label %117

117:                                              ; preds = %116, %40
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  store i8** %120, i8*** %9, align 8
  br label %121

121:                                              ; preds = %154, %117
  %122 = load i8**, i8*** %9, align 8
  %123 = load i8**, i8*** %10, align 8
  %124 = icmp ult i8** %122, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %121
  %126 = load i8**, i8*** %9, align 8
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %8, align 8
  %128 = load i32, i32* %11, align 4
  %129 = icmp ult i32 %128, 7
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %131, i8** %137, align 8
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %153

140:                                              ; preds = %125
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 4
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 7
  store i8* %141, i8** %145, align 8
  store i32 0, i32* %11, align 4
  %146 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ngx_log_debug0(i32 %146, i32 %151, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %140, %130
  br label %154

154:                                              ; preds = %153
  %155 = load i8**, i8*** %9, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i32 1
  store i8** %156, i8*** %9, align 8
  br label %121

157:                                              ; preds = %121
  %158 = load i8**, i8*** %9, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = ptrtoint i8** %158 to i64
  %163 = ptrtoint i8** %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i8**, i8*** %9, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  store i8** %175, i8*** %177, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %157
  %183 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %183, i32* %4, align 4
  br label %191

184:                                              ; preds = %157
  %185 = load i32, i32* @ngx_http_grpc_st_start, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %190 = call i32 @ngx_http_grpc_send_ping_ack(%struct.TYPE_11__* %188, %struct.TYPE_12__* %189)
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %184, %182, %107, %87, %68, %51
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_grpc_send_ping_ack(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
