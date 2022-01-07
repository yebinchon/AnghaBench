; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_valid_referers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_valid_referers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HASH_SMALL = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid referer \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"server_names\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, i32*, i8*)* @ngx_http_valid_referers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_valid_referers(%struct.TYPE_21__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %8, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = icmp eq %struct.TYPE_22__* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_22__* @ngx_pcalloc(i32 %22, i32 4)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = icmp eq %struct.TYPE_22__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %31, i8** %4, align 8
  br label %206

32:                                               ; preds = %19
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = load i32, i32* @NGX_HASH_SMALL, align 4
  %51 = call i64 @ngx_hash_keys_array_init(%struct.TYPE_22__* %49, i32 %50)
  %52 = load i64, i64* @NGX_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %55, i8** %4, align 8
  br label %206

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %3
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %10, align 8
  store i64 1, i64* %12, align 8
  br label %63

63:                                               ; preds = %201, %57
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %64, %69
  br i1 %70, label %71, label %204

71:                                               ; preds = %63
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i32, i32* @NGX_LOG_EMERG, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i64 %82
  %84 = call i32 @ngx_conf_log_error(i32 %79, %struct.TYPE_21__* %80, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %83)
  %85 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %85, i8** %4, align 8
  br label %206

86:                                               ; preds = %71
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @ngx_strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %201

97:                                               ; preds = %86
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @ngx_strcmp(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %201

108:                                              ; preds = %97
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @ngx_strcmp(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  br label %201

119:                                              ; preds = %108
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 126
  br i1 %128, label %129, label %141

129:                                              ; preds = %119
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i64 %133
  %135 = call i64 @ngx_http_add_regex_referer(%struct.TYPE_21__* %130, %struct.TYPE_20__* %131, %struct.TYPE_19__* %134)
  %136 = load i64, i64* @NGX_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %139, i8** %4, align 8
  br label %206

140:                                              ; preds = %129
  br label %201

141:                                              ; preds = %119
  %142 = call i32 @ngx_str_null(%struct.TYPE_19__* %11)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @ngx_strchr(i8* %147, i8 signext 47)
  %149 = inttoptr i64 %148 to i8*
  store i8* %149, i8** %9, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %187

152:                                              ; preds = %141
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %159 = load i64, i64* %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %157, i64 %163
  %165 = load i8*, i8** %9, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %169, i32* %170, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i8* %171, i8** %172, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %173 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %184 = load i64, i64* %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 8
  br label %187

187:                                              ; preds = %152, %141
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i64 %193
  %195 = call i64 @ngx_http_add_referer(%struct.TYPE_21__* %188, %struct.TYPE_22__* %191, %struct.TYPE_19__* %194, %struct.TYPE_19__* %11)
  %196 = load i64, i64* @NGX_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %187
  %199 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %199, i8** %4, align 8
  br label %206

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200, %140, %116, %105, %94
  %202 = load i64, i64* %12, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %12, align 8
  br label %63

204:                                              ; preds = %63
  %205 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %205, i8** %4, align 8
  br label %206

206:                                              ; preds = %204, %198, %138, %78, %54, %30
  %207 = load i8*, i8** %4, align 8
  ret i8* %207
}

declare dso_local %struct.TYPE_22__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_hash_keys_array_init(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_http_add_regex_referer(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_strchr(i8*, i8 signext) #1

declare dso_local i64 @ngx_http_add_referer(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
