; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_secure_link_module.c_ngx_http_secure_link_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_secure_link_module.c_ngx_http_secure_link_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_29__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_30__ = type { i32*, i32*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@ngx_http_secure_link_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"secure link: \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"secure link md5: \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_31__*, %struct.TYPE_28__*, i64)* @ngx_http_secure_link_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_secure_link_variable(%struct.TYPE_31__* %0, %struct.TYPE_28__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca [18 x i32], align 16
  %17 = alloca [16 x i32], align 16
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %19 = load i32, i32* @ngx_http_secure_link_module, align 4
  %20 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_31__* %18, i32 %19)
  store %struct.TYPE_30__* %20, %struct.TYPE_30__** %15, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @ngx_http_secure_link_old_variable(%struct.TYPE_31__* %27, %struct.TYPE_30__* %28, %struct.TYPE_28__* %29, i64 %30)
  store i64 %31, i64* %4, align 8
  br label %199

32:                                               ; preds = %3
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  br label %195

43:                                               ; preds = %37
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @ngx_http_complex_value(%struct.TYPE_31__* %44, i32* %47, %struct.TYPE_27__* %10)
  %49 = load i64, i64* @NGX_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* @NGX_ERROR, align 8
  store i64 %52, i64* %4, align 8
  br label %199

53:                                               ; preds = %43
  %54 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ngx_log_debug1(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %10)
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32* %66, i32** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32* @ngx_strlchr(i32* %68, i32* %69, i8 signext 44)
  store i32* %70, i32** %8, align 8
  store i64 0, i64* %12, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %124

73:                                               ; preds = %53
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = ptrtoint i32* %74 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i64 @ngx_atotm(i32* %84, i32 %91)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %73
  br label %195

96:                                               ; preds = %73
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.TYPE_29__* @ngx_pcalloc(i32 %99, i32 16)
  store %struct.TYPE_29__* %100, %struct.TYPE_29__** %14, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %102 = icmp eq %struct.TYPE_29__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i64, i64* @NGX_ERROR, align 8
  store i64 %104, i64* %4, align 8
  br label %199

105:                                              ; preds = %96
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %108 = load i32, i32* @ngx_http_secure_link_module, align 4
  %109 = call i32 @ngx_http_set_ctx(%struct.TYPE_31__* %106, %struct.TYPE_29__* %107, i32 %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  store i32* %120, i32** %123, align 8
  br label %124

124:                                              ; preds = %105, %53
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 24
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %195

129:                                              ; preds = %124
  %130 = getelementptr inbounds [18 x i32], [18 x i32]* %16, i64 0, i64 0
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  store i32* %130, i32** %131, align 8
  %132 = call i64 @ngx_decode_base64url(%struct.TYPE_27__* %11, %struct.TYPE_27__* %10)
  %133 = load i64, i64* @NGX_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %195

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 16
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %195

141:                                              ; preds = %136
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @ngx_http_complex_value(%struct.TYPE_31__* %142, i32* %145, %struct.TYPE_27__* %10)
  %147 = load i64, i64* @NGX_OK, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i64, i64* @NGX_ERROR, align 8
  store i64 %150, i64* %4, align 8
  br label %199

151:                                              ; preds = %141
  %152 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ngx_log_debug1(i32 %152, i32 %157, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_27__* %10)
  %159 = call i32 @ngx_md5_init(i32* %13)
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ngx_md5_update(i32* %13, i32* %161, i32 %163)
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %166 = call i32 @ngx_md5_final(i32* %165, i32* %13)
  %167 = getelementptr inbounds [18 x i32], [18 x i32]* %16, i64 0, i64 0
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %169 = call i64 @ngx_memcmp(i32* %167, i32* %168, i32 16)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %151
  br label %195

172:                                              ; preds = %151
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i64, i64* %12, align 8
  %177 = call i64 (...) @ngx_time()
  %178 = icmp slt i64 %176, %177
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i1 [ false, %172 ], [ %178, %175 ]
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 4
  store i32* %183, i32** %185, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 2
  store i32 0, i32* %193, align 8
  %194 = load i64, i64* @NGX_OK, align 8
  store i64 %194, i64* %4, align 8
  br label %199

195:                                              ; preds = %171, %140, %135, %128, %95, %42
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 2
  store i32 1, i32* %197, align 8
  %198 = load i64, i64* @NGX_OK, align 8
  store i64 %198, i64* %4, align 8
  br label %199

199:                                              ; preds = %195, %179, %149, %103, %51, %26
  %200 = load i64, i64* %4, align 8
  ret i64 %200
}

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ngx_http_secure_link_old_variable(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_28__*, i64) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_31__*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_27__*) #1

declare dso_local i32* @ngx_strlchr(i32*, i32*, i8 signext) #1

declare dso_local i64 @ngx_atotm(i32*, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @ngx_decode_base64url(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_md5_init(i32*) #1

declare dso_local i32 @ngx_md5_update(i32*, i32*, i32) #1

declare dso_local i32 @ngx_md5_final(i32*, i32*) #1

declare dso_local i64 @ngx_memcmp(i32*, i32*, i32) #1

declare dso_local i64 @ngx_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
