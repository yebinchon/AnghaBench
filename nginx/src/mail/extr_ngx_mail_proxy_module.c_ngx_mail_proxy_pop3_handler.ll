; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_proxy_module.c_ngx_mail_proxy_pop3_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_proxy_module.c_ngx_mail_proxy_pop3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 (%struct.TYPE_27__*)*, i32, i64, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { {}* }
%struct.TYPE_26__ = type { i32, i64 (%struct.TYPE_26__*, i32*, i64)*, %struct.TYPE_29__*, i32, %struct.TYPE_33__*, i32, %struct.TYPE_38__* }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_27__*)* }
%struct.TYPE_38__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_34__*, %struct.TYPE_32__, %struct.TYPE_28__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_31__* }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_27__*)* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_32__ = type { i32, i8* }
%struct.TYPE_28__ = type { i32, i8* }
%struct.TYPE_37__ = type { i64, i32* }
%struct.TYPE_24__ = type { i32 }

@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mail proxy pop3 auth handler\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"upstream timed out\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"mail proxy send user\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"sending user name to upstream\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"USER \00", align 1
@CR = common dso_local global i8* null, align 8
@LF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"mail proxy send pass\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"sending password to upstream\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PASS \00", align 1
@ngx_mail_proxy_module = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"client logged in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @ngx_mail_proxy_pop3_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_proxy_pop3_handler(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_37__, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ngx_log_debug0(i32 %9, i32 %12, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %6, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  store %struct.TYPE_38__* %19, %struct.TYPE_38__** %7, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i32, i32* @NGX_LOG_INFO, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %29 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %30 = call i32 @ngx_log_error(i32 %25, %struct.TYPE_29__* %28, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %34 = call i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_38__* %33)
  br label %260

35:                                               ; preds = %1
  %36 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %37 = call i64 @ngx_mail_proxy_read_response(%struct.TYPE_38__* %36, i32 0)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @NGX_AGAIN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %260

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @NGX_ERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %48 = call i32 @ngx_mail_proxy_upstream_error(%struct.TYPE_38__* %47)
  br label %260

49:                                               ; preds = %42
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %216 [
    i32 129, label %53
    i32 128, label %109
    i32 130, label %165
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ngx_log_debug0(i32 %54, i32 %57, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 5, %69
  %71 = add i64 %70, 2
  %72 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @ngx_pnalloc(i32 %75, i64 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  store i32* %79, i32** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %53
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %86 = call i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_38__* %85)
  br label %260

87:                                               ; preds = %53
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32* @ngx_cpymem(i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  store i32* %90, i32** %3, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32* @ngx_cpymem(i32* %91, i8* %95, i32 %99)
  store i32* %100, i32** %3, align 8
  %101 = load i8*, i8** @CR, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %3, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i32, i32* @LF, align 4
  %106 = load i32*, i32** %3, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 0
  store i32 128, i32* %108, align 8
  br label %217

109:                                              ; preds = %49
  %110 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ngx_log_debug0(i32 %110, i32 %113, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8** %120, align 8
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add i64 5, %125
  %127 = add i64 %126, 2
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @ngx_pnalloc(i32 %131, i64 %133)
  %135 = bitcast i8* %134 to i32*
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  store i32* %135, i32** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %109
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %142 = call i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_38__* %141)
  br label %260

143:                                              ; preds = %109
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32* @ngx_cpymem(i32* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  store i32* %146, i32** %3, align 8
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32* @ngx_cpymem(i32* %147, i8* %151, i32 %155)
  store i32* %156, i32** %3, align 8
  %157 = load i8*, i8** @CR, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %3, align 8
  store i32 %158, i32* %159, align 4
  %161 = load i32, i32* @LF, align 4
  %162 = load i32*, i32** %3, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  store i32 130, i32* %164, align 8
  br label %217

165:                                              ; preds = %49
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  store i32 (%struct.TYPE_27__*)* @ngx_mail_proxy_handler, i32 (%struct.TYPE_27__*)** %171, align 8
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = bitcast {}** %177 to i32 (%struct.TYPE_27__*)**
  store i32 (%struct.TYPE_27__*)* @ngx_mail_proxy_handler, i32 (%struct.TYPE_27__*)** %178, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  store i32 (%struct.TYPE_27__*)* @ngx_mail_proxy_handler, i32 (%struct.TYPE_27__*)** %180, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 0
  store i32 (%struct.TYPE_27__*)* @ngx_mail_proxy_handler, i32 (%struct.TYPE_27__*)** %184, align 8
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %186 = load i32, i32* @ngx_mail_proxy_module, align 4
  %187 = call %struct.TYPE_24__* @ngx_mail_get_module_srv_conf(%struct.TYPE_38__* %185, i32 %186)
  store %struct.TYPE_24__* %187, %struct.TYPE_24__** %8, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %191, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ngx_add_timer(%struct.TYPE_30__* %192, i32 %195)
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ngx_del_timer(i32 %199)
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  store i32* null, i32** %204, align 8
  %205 = load i32, i32* @NGX_LOG_INFO, align 4
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %207, align 8
  %209 = call i32 @ngx_log_error(i32 %205, %struct.TYPE_29__* %208, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_34__*, %struct.TYPE_34__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = call i32 @ngx_mail_proxy_handler(%struct.TYPE_27__* %214)
  br label %260

216:                                              ; preds = %49
  br label %217

217:                                              ; preds = %216, %143, %87
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  %220 = load i64 (%struct.TYPE_26__*, i32*, i64)*, i64 (%struct.TYPE_26__*, i32*, i64)** %219, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i64 %220(%struct.TYPE_26__* %221, i32* %223, i64 %225)
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %5, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp slt i64 %226, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %217
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %232 = call i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_38__* %231)
  br label %260

233:                                              ; preds = %217
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 2
  store i32 %240, i32* %246, align 4
  %247 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 1
  store i32 %253, i32* %259, align 4
  br label %260

260:                                              ; preds = %233, %230, %165, %140, %84, %46, %41, %24
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_29__*, i32, i8*) #1

declare dso_local i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_38__*) #1

declare dso_local i64 @ngx_mail_proxy_read_response(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @ngx_mail_proxy_upstream_error(%struct.TYPE_38__*) #1

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_cpymem(i32*, i8*, i32) #1

declare dso_local i32 @ngx_mail_proxy_handler(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_24__* @ngx_mail_get_module_srv_conf(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ngx_del_timer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
