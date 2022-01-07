; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ngx_proxy_protocol_read.signature = internal constant [13 x i8] c"\0D\0A\0D\0A\00\0D\0AQUIT\0A\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"PROXY \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PROXY protocol unknown protocol\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@CR = common dso_local global i8 0, align 1
@LF = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"PROXY protocol src: %V %d, dst: %V %d\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"broken header: \22%*s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_proxy_protocol_read(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp uge i64 %17, 4
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @memcmp(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @ngx_proxy_protocol_read.signature, i64 0, i64 0), i32 12)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @ngx_proxy_protocol_v2_read(%struct.TYPE_8__* %24, i8* %25, i8* %26)
  store i8* %27, i8** %4, align 8
  br label %206

28:                                               ; preds = %19, %3
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @ngx_strncmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %28
  br label %194

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  store i8* %38, i8** %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 6
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp uge i64 %41, 7
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @ngx_strncmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ngx_log_debug0(i32 %48, i32 %51, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  store i8* %54, i8** %9, align 8
  br label %164

55:                                               ; preds = %43, %36
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %56, 5
  br i1 %57, label %80, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @ngx_strncmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 52
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 54
  br i1 %73, label %80, label %74

74:                                               ; preds = %68, %62
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 32
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %68, %58, %55
  br label %194

81:                                               ; preds = %74
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 5
  store i8* %83, i8** %9, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_7__* @ngx_pcalloc(i32 %86, i32 16)
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %10, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = icmp eq %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i8* null, i8** %4, align 8
  br label %206

91:                                               ; preds = %81
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = call i8* @ngx_proxy_protocol_read_addr(%struct.TYPE_8__* %92, i8* %93, i8* %94, i32* %96)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %194

101:                                              ; preds = %91
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = call i8* @ngx_proxy_protocol_read_addr(%struct.TYPE_8__* %102, i8* %103, i8* %104, i32* %106)
  store i8* %107, i8** %9, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %194

111:                                              ; preds = %101
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = call i8* @ngx_proxy_protocol_read_port(i8* %112, i8* %113, i32* %115, i8 signext 32)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %194

120:                                              ; preds = %111
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8, i8* @CR, align 1
  %126 = call i8* @ngx_proxy_protocol_read_port(i8* %121, i8* %122, i32* %124, i8 signext %125)
  store i8* %126, i8** %9, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %194

130:                                              ; preds = %120
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %194

135:                                              ; preds = %130
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %9, align 8
  %138 = load i8, i8* %136, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* @LF, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %194

144:                                              ; preds = %135
  %145 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ngx_log_debug4(i32 %145, i32 %148, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32* %150, i32 %153, i32* %155, i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %162, align 8
  %163 = load i8*, i8** %9, align 8
  store i8* %163, i8** %4, align 8
  br label %206

164:                                              ; preds = %47
  br label %165

165:                                              ; preds = %190, %164
  %166 = load i8*, i8** %9, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 -1
  %169 = icmp ult i8* %166, %168
  br i1 %169, label %170, label %193

170:                                              ; preds = %165
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = load i8, i8* @CR, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %170
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* @LF, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  store i8* %188, i8** %4, align 8
  br label %206

189:                                              ; preds = %178, %170
  br label %190

190:                                              ; preds = %189
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %9, align 8
  br label %165

193:                                              ; preds = %165
  br label %194

194:                                              ; preds = %193, %143, %134, %129, %119, %110, %100, %80, %35
  %195 = load i32, i32* @NGX_LOG_ERR, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = load i8*, i8** %6, align 8
  %205 = call i32 @ngx_log_error(i32 %195, i32 %198, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %203, i8* %204)
  store i8* null, i8** %4, align 8
  br label %206

206:                                              ; preds = %194, %186, %144, %90, %23
  %207 = load i8*, i8** %4, align 8
  ret i8* %207
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @ngx_proxy_protocol_v2_read(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_proxy_protocol_read_addr(%struct.TYPE_8__*, i8*, i8*, i32*) #1

declare dso_local i8* @ngx_proxy_protocol_read_port(i8*, i8*, i32*, i8 signext) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
