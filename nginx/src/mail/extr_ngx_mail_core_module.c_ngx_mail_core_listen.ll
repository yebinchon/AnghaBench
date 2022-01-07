; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_core_module.c_ngx_mail_core_listen.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_core_module.c_ngx_mail_core_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_49__*, %struct.TYPE_46__*, %struct.TYPE_43__*, i32, i32 }
%struct.TYPE_49__ = type { i32, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_46__ = type { i64, %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i32, %struct.TYPE_51__* }
%struct.TYPE_43__ = type { %struct.TYPE_42__** }
%struct.TYPE_42__ = type { i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i64* }
%struct.TYPE_39__ = type { i32, %struct.TYPE_45__* }
%struct.TYPE_36__ = type { i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_51__, i32, i32, i32, %struct.TYPE_50__*, i8*, i8*, i32, %struct.TYPE_51__, i64 }
%struct.TYPE_50__ = type { %struct.TYPE_51__, i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i64, %struct.TYPE_36__* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s in \22%V\22 of the \22listen\22 directive\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_mail_core_module = common dso_local global i32 0, align 4
@NGX_LISTEN_BACKLOG = common dso_local global i64 0, align 8
@NGX_MAIL_MODULE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"backlog=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid backlog \22%V\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rcvbuf=\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid rcvbuf \22%V\22\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sndbuf=\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid sndbuf \22%V\22\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ipv6only=o\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"bind ipv6only is not supported on this platform\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"the \22ssl\22 parameter requires ngx_mail_ssl_module\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"so_keepalive=\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"the \22so_keepalive\22 parameter accepts only \22on\22 or \22off\22 on this platform\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"the invalid \22%V\22 parameter\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"duplicate \22%V\22 address and port pair\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_mail_ssl_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_41__*, i32*, i8*)* @ngx_mail_core_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_mail_core_listen(%struct.TYPE_41__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_41__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_51__*, align 8
  %10 = alloca %struct.TYPE_51__, align 8
  %11 = alloca %struct.TYPE_36__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca %struct.TYPE_36__*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %20, %struct.TYPE_39__** %8, align 8
  %21 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_51__*, %struct.TYPE_51__** %26, align 8
  store %struct.TYPE_51__* %27, %struct.TYPE_51__** %9, align 8
  %28 = call i32 @ngx_memzero(%struct.TYPE_36__* %11, i32 160)
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 19
  %30 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %30, i64 1
  %32 = bitcast %struct.TYPE_51__* %29 to i8*
  %33 = bitcast %struct.TYPE_51__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ngx_parse_url(i32 %37, %struct.TYPE_36__* %11)
  %39 = load i64, i64* @NGX_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 20
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* @NGX_LOG_EMERG, align 4
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 20
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 19
  %51 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %46, %struct.TYPE_41__* %47, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %49, %struct.TYPE_51__* %50)
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %53, i8** %4, align 8
  br label %511

54:                                               ; preds = %3
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %56 = load i32, i32* @ngx_mail_core_module, align 4
  %57 = call %struct.TYPE_40__* @ngx_mail_conf_get_module_main_conf(%struct.TYPE_41__* %55, i32 %56)
  store %struct.TYPE_40__* %57, %struct.TYPE_40__** %18, align 8
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.TYPE_36__* @ngx_array_push_n(%struct.TYPE_44__* %59, i64 %61)
  store %struct.TYPE_36__* %62, %struct.TYPE_36__** %15, align 8
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %64 = icmp eq %struct.TYPE_36__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %66, i8** %4, align 8
  br label %511

67:                                               ; preds = %54
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %69 = call i32 @ngx_memzero(%struct.TYPE_36__* %68, i32 160)
  %70 = load i64, i64* @NGX_LISTEN_BACKLOG, align 8
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 3
  store i32 -1, i32* %74, align 8
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 4
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 18
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_45__*, %struct.TYPE_45__** %83, align 8
  %85 = icmp eq %struct.TYPE_45__* %84, null
  br i1 %85, label %86, label %165

86:                                               ; preds = %67
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %161, %86
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_43__*, %struct.TYPE_43__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %92, i64 %93
  %95 = load %struct.TYPE_42__*, %struct.TYPE_42__** %94, align 8
  %96 = icmp ne %struct.TYPE_42__* %95, null
  br i1 %96, label %97, label %164

97:                                               ; preds = %87
  %98 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_43__*, %struct.TYPE_43__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %102, i64 %103
  %105 = load %struct.TYPE_42__*, %struct.TYPE_42__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NGX_MAIL_MODULE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %161

111:                                              ; preds = %97
  %112 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_43__*, %struct.TYPE_43__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %116, i64 %117
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %120, align 8
  store %struct.TYPE_38__* %121, %struct.TYPE_38__** %17, align 8
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_45__*, %struct.TYPE_45__** %123, align 8
  %125 = icmp eq %struct.TYPE_45__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %111
  br label %161

127:                                              ; preds = %111
  store i64 0, i64* %12, align 8
  br label %128

128:                                              ; preds = %157, %127
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_45__*, %struct.TYPE_45__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %128
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_45__*, %struct.TYPE_45__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %138
  %151 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_45__*, %struct.TYPE_45__** %152, align 8
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i32 0, i32 1
  store %struct.TYPE_45__* %153, %struct.TYPE_45__** %155, align 8
  br label %160

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %12, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %12, align 8
  br label %128

160:                                              ; preds = %150, %128
  br label %161

161:                                              ; preds = %160, %126, %110
  %162 = load i64, i64* %14, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %14, align 8
  br label %87

164:                                              ; preds = %87
  br label %165

165:                                              ; preds = %164, %67
  store i64 2, i64* %12, align 8
  br label %166

166:                                              ; preds = %394, %165
  %167 = load i64, i64* %12, align 8
  %168 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_46__*, %struct.TYPE_46__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ult i64 %167, %172
  br i1 %173, label %174, label %397

174:                                              ; preds = %166
  %175 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %176 = load i64, i64* %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_51__*, %struct.TYPE_51__** %178, align 8
  %180 = call i64 @ngx_strcmp(%struct.TYPE_51__* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %183, i32 0, i32 7
  store i32 1, i32* %184, align 8
  br label %394

185:                                              ; preds = %174
  %186 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_51__*, %struct.TYPE_51__** %189, align 8
  %191 = call i64 @ngx_strncmp(%struct.TYPE_51__* %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %185
  %194 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %195 = load i64, i64* %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_51__*, %struct.TYPE_51__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %198, i64 8
  %200 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 8
  %206 = call i8* @ngx_atoi(%struct.TYPE_51__* %199, i32 %205)
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 7
  store i32 1, i32* %211, align 8
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NGX_ERROR, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %222, label %217

217:                                              ; preds = %193
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %217, %193
  %223 = load i32, i32* @NGX_LOG_EMERG, align 4
  %224 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %225 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %226 = load i64, i64* %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %225, i64 %226
  %228 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %223, %struct.TYPE_41__* %224, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_51__* %227)
  %229 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %229, i8** %4, align 8
  br label %511

230:                                              ; preds = %217
  br label %394

231:                                              ; preds = %185
  %232 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %233 = load i64, i64* %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_51__*, %struct.TYPE_51__** %235, align 8
  %237 = call i64 @ngx_strncmp(%struct.TYPE_51__* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %275

239:                                              ; preds = %231
  %240 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %241 = load i64, i64* %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sub nsw i32 %244, 7
  %246 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %10, i32 0, i32 0
  store i32 %245, i32* %246, align 8
  %247 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %248 = load i64, i64* %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_51__*, %struct.TYPE_51__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %251, i64 7
  %253 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %10, i32 0, i32 1
  store %struct.TYPE_51__* %252, %struct.TYPE_51__** %253, align 8
  %254 = call i8* @ngx_parse_size(%struct.TYPE_51__* %10)
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 7
  store i32 1, i32* %259, align 8
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* @NGX_ERROR, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %239
  %267 = load i32, i32* @NGX_LOG_EMERG, align 4
  %268 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %269 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %270 = load i64, i64* %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %269, i64 %270
  %272 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %267, %struct.TYPE_41__* %268, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_51__* %271)
  %273 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %273, i8** %4, align 8
  br label %511

274:                                              ; preds = %239
  br label %394

275:                                              ; preds = %231
  %276 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %277 = load i64, i64* %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_51__*, %struct.TYPE_51__** %279, align 8
  %281 = call i64 @ngx_strncmp(%struct.TYPE_51__* %280, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %319

283:                                              ; preds = %275
  %284 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %285 = load i64, i64* %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %288, 7
  %290 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %10, i32 0, i32 0
  store i32 %289, i32* %290, align 8
  %291 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %292 = load i64, i64* %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %291, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_51__*, %struct.TYPE_51__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %295, i64 7
  %297 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %10, i32 0, i32 1
  store %struct.TYPE_51__* %296, %struct.TYPE_51__** %297, align 8
  %298 = call i8* @ngx_parse_size(%struct.TYPE_51__* %10)
  %299 = ptrtoint i8* %298 to i32
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 4
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 7
  store i32 1, i32* %303, align 8
  %304 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* @NGX_ERROR, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %283
  %311 = load i32, i32* @NGX_LOG_EMERG, align 4
  %312 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %313 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %314 = load i64, i64* %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %313, i64 %314
  %316 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %311, %struct.TYPE_41__* %312, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_51__* %315)
  %317 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %317, i8** %4, align 8
  br label %511

318:                                              ; preds = %283
  br label %394

319:                                              ; preds = %275
  %320 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %321 = load i64, i64* %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_51__*, %struct.TYPE_51__** %323, align 8
  %325 = call i64 @ngx_strncmp(%struct.TYPE_51__* %324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %319
  %328 = load i32, i32* @NGX_LOG_EMERG, align 4
  %329 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %330 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %328, %struct.TYPE_41__* %329, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %331 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %331, i8** %4, align 8
  br label %511

332:                                              ; preds = %319
  %333 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %334 = load i64, i64* %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %333, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_51__*, %struct.TYPE_51__** %336, align 8
  %338 = call i64 @ngx_strcmp(%struct.TYPE_51__* %337, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %332
  %341 = load i32, i32* @NGX_LOG_EMERG, align 4
  %342 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %343 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %341, %struct.TYPE_41__* %342, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %344 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %344, i8** %4, align 8
  br label %511

345:                                              ; preds = %332
  %346 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %347 = load i64, i64* %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_51__*, %struct.TYPE_51__** %349, align 8
  %351 = call i64 @ngx_strncmp(%struct.TYPE_51__* %350, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 13)
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %386

353:                                              ; preds = %345
  %354 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %355 = load i64, i64* %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_51__*, %struct.TYPE_51__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %358, i64 13
  %360 = call i64 @ngx_strcmp(%struct.TYPE_51__* %359, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %353
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 9
  store i32 1, i32* %364, align 8
  br label %383

365:                                              ; preds = %353
  %366 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %367 = load i64, i64* %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_51__*, %struct.TYPE_51__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %370, i64 13
  %372 = call i64 @ngx_strcmp(%struct.TYPE_51__* %371, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %365
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %375, i32 0, i32 9
  store i32 2, i32* %376, align 8
  br label %382

377:                                              ; preds = %365
  %378 = load i32, i32* @NGX_LOG_EMERG, align 4
  %379 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %380 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %378, %struct.TYPE_41__* %379, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0))
  %381 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %381, i8** %4, align 8
  br label %511

382:                                              ; preds = %374
  br label %383

383:                                              ; preds = %382, %362
  %384 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %385 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %384, i32 0, i32 7
  store i32 1, i32* %385, align 8
  br label %394

386:                                              ; preds = %345
  %387 = load i32, i32* @NGX_LOG_EMERG, align 4
  %388 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %389 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %390 = load i64, i64* %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %389, i64 %390
  %392 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %387, %struct.TYPE_41__* %388, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_51__* %391)
  %393 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %393, i8** %4, align 8
  br label %511

394:                                              ; preds = %383, %318, %274, %230, %182
  %395 = load i64, i64* %12, align 8
  %396 = add i64 %395, 1
  store i64 %396, i64* %12, align 8
  br label %166

397:                                              ; preds = %166
  %398 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %399 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_36__*, %struct.TYPE_36__** %400, align 8
  store %struct.TYPE_36__* %401, %struct.TYPE_36__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %402

402:                                              ; preds = %506, %397
  %403 = load i64, i64* %13, align 8
  %404 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = icmp ult i64 %403, %405
  br i1 %406, label %407, label %509

407:                                              ; preds = %402
  %408 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %409 = load i64, i64* %13, align 8
  %410 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %408, i64 %409
  %411 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %412 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %411, i64 0
  %413 = bitcast %struct.TYPE_36__* %410 to i8*
  %414 = bitcast %struct.TYPE_36__* %412 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %413, i8* align 8 %414, i64 160, i1 false)
  %415 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 15
  %416 = load %struct.TYPE_50__*, %struct.TYPE_50__** %415, align 8
  %417 = load i64, i64* %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %416, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %422 = load i64, i64* %13, align 8
  %423 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %421, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %423, i32 0, i32 13
  store i32 %420, i32* %424, align 4
  %425 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 15
  %426 = load %struct.TYPE_50__*, %struct.TYPE_50__** %425, align 8
  %427 = load i64, i64* %13, align 8
  %428 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %426, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %432 = load i64, i64* %13, align 8
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %431, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %433, i32 0, i32 12
  store i32 %430, i32* %434, align 8
  %435 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %436 = load i64, i64* %13, align 8
  %437 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %437, i32 0, i32 11
  %439 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 15
  %440 = load %struct.TYPE_50__*, %struct.TYPE_50__** %439, align 8
  %441 = load i64, i64* %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %440, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %442, i32 0, i32 0
  %444 = bitcast %struct.TYPE_51__* %438 to i8*
  %445 = bitcast %struct.TYPE_51__* %443 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %444, i8* align 8 %445, i64 16, i1 false)
  %446 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %447 = load i64, i64* %13, align 8
  %448 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %446, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %448, i32 0, i32 13
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @ngx_inet_wildcard(i32 %450)
  %452 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %453 = load i64, i64* %13, align 8
  %454 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %452, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %454, i32 0, i32 14
  store i32 %451, i32* %455, align 8
  store i64 0, i64* %12, align 8
  br label %456

456:                                              ; preds = %502, %407
  %457 = load i64, i64* %12, align 8
  %458 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %459 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = sub i64 %461, %463
  %465 = load i64, i64* %13, align 8
  %466 = add i64 %464, %465
  %467 = icmp ult i64 %457, %466
  br i1 %467, label %468, label %505

468:                                              ; preds = %456
  %469 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %470 = load i64, i64* %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %469, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %471, i32 0, i32 13
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %475 = load i64, i64* %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %474, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %476, i32 0, i32 12
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %480 = load i64, i64* %13, align 8
  %481 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %479, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %481, i32 0, i32 13
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %485 = load i64, i64* %13, align 8
  %486 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %484, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %486, i32 0, i32 12
  %488 = load i32, i32* %487, align 8
  %489 = call i64 @ngx_cmp_sockaddr(i32 %473, i32 %478, i32 %483, i32 %488, i32 1)
  %490 = load i64, i64* @NGX_OK, align 8
  %491 = icmp ne i64 %489, %490
  br i1 %491, label %492, label %493

492:                                              ; preds = %468
  br label %502

493:                                              ; preds = %468
  %494 = load i32, i32* @NGX_LOG_EMERG, align 4
  %495 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %496 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %497 = load i64, i64* %13, align 8
  %498 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %496, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %498, i32 0, i32 11
  %500 = call i32 (i32, %struct.TYPE_41__*, i32, i8*, ...) @ngx_conf_log_error(i32 %494, %struct.TYPE_41__* %495, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_51__* %499)
  %501 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %501, i8** %4, align 8
  br label %511

502:                                              ; preds = %492
  %503 = load i64, i64* %12, align 8
  %504 = add i64 %503, 1
  store i64 %504, i64* %12, align 8
  br label %456

505:                                              ; preds = %456
  br label %506

506:                                              ; preds = %505
  %507 = load i64, i64* %13, align 8
  %508 = add i64 %507, 1
  store i64 %508, i64* %13, align 8
  br label %402

509:                                              ; preds = %402
  %510 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %510, i8** %4, align 8
  br label %511

511:                                              ; preds = %509, %493, %386, %377, %340, %327, %310, %266, %222, %65, %52
  %512 = load i8*, i8** %4, align 8
  ret i8* %512
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_36__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_36__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_41__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_40__* @ngx_mail_conf_get_module_main_conf(%struct.TYPE_41__*, i32) #1

declare dso_local %struct.TYPE_36__* @ngx_array_push_n(%struct.TYPE_44__*, i64) #1

declare dso_local i64 @ngx_strcmp(%struct.TYPE_51__*, i8*) #1

declare dso_local i64 @ngx_strncmp(%struct.TYPE_51__*, i8*, i32) #1

declare dso_local i8* @ngx_atoi(%struct.TYPE_51__*, i32) #1

declare dso_local i8* @ngx_parse_size(%struct.TYPE_51__*) #1

declare dso_local i32 @ngx_inet_wildcard(i32) #1

declare dso_local i64 @ngx_cmp_sockaddr(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
