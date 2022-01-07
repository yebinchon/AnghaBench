; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_init_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_27__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__*, %struct.sockaddr*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i8*, %struct.TYPE_33__*, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_31__*, i32* }
%struct.TYPE_31__ = type { i32*, %struct.TYPE_25__*, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_MAIL_MODULE = common dso_local global i32 0, align 4
@ngx_mail_core_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"*%uA client %*s connected to %V\00", align 1
@ngx_mail_log_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sending client greeting line\00", align 1
@NGX_ERROR_INFO = common dso_local global i32 0, align 4
@ngx_mail_ssl_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_init_connection(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %16 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 9
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  store %struct.TYPE_32__* %24, %struct.TYPE_32__** %5, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %81

29:                                               ; preds = %1
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %31 = call i64 @ngx_connection_local_sockaddr(%struct.TYPE_25__* %30, i32* null, i32 0)
  %32 = load i64, i64* @NGX_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %36 = call i32 @ngx_mail_close_connection(%struct.TYPE_25__* %35)
  store i32 1, i32* %15, align 4
  br label %205

37:                                               ; preds = %29
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %39, align 8
  store %struct.sockaddr* %40, %struct.sockaddr** %6, align 8
  %41 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %44 [
  ]

44:                                               ; preds = %37
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %46, %struct.sockaddr_in** %7, align 8
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %48, align 8
  store %struct.TYPE_34__* %49, %struct.TYPE_34__** %9, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %71, %44
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %74

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %50

74:                                               ; preds = %69, %50
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %11, align 8
  br label %80

80:                                               ; preds = %74
  br label %95

81:                                               ; preds = %1
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %83, align 8
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %87 [
  ]

87:                                               ; preds = %81
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %89, align 8
  store %struct.TYPE_34__* %90, %struct.TYPE_34__** %9, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 0
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %11, align 8
  br label %94

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.TYPE_31__* @ngx_pcalloc(i32 %98, i32 32)
  store %struct.TYPE_31__* %99, %struct.TYPE_31__** %10, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %101 = icmp eq %struct.TYPE_31__* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %104 = call i32 @ngx_mail_close_connection(%struct.TYPE_25__* %103)
  store i32 1, i32* %15, align 4
  br label %205

105:                                              ; preds = %95
  %106 = load i32, i32* @NGX_MAIL_MODULE, align 4
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 7
  store %struct.TYPE_31__* %127, %struct.TYPE_31__** %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 1
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %132, align 8
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %134 = load i32, i32* @ngx_mail_core_module, align 4
  %135 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_31__* %133, i32 %134)
  %136 = bitcast i8* %135 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %136, %struct.TYPE_23__** %12, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ngx_set_connection_log(%struct.TYPE_25__* %137, i32 %140)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %149 = call i64 @ngx_sock_ntop(i32 %144, i32 %147, i32* %19, i32 %148, i32 1)
  store i64 %149, i64* %3, align 8
  %150 = load i32, i32* @NGX_LOG_INFO, align 4
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %152, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* %3, align 8
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @ngx_log_error(i32 %150, %struct.TYPE_27__* %153, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %156, i64 %157, i32* %19, i32* %160)
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.TYPE_33__* @ngx_palloc(i32 %164, i32 16)
  store %struct.TYPE_33__* %165, %struct.TYPE_33__** %8, align 8
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %167 = icmp eq %struct.TYPE_33__* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %105
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %170 = call i32 @ngx_mail_close_connection(%struct.TYPE_25__* %169)
  store i32 1, i32* %15, align 4
  br label %205

171:                                              ; preds = %105
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 1
  store i32* %173, i32** %175, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 0
  store %struct.TYPE_31__* %176, %struct.TYPE_31__** %178, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 3
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* @ngx_mail_log_error, align 4
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 2
  store i32 %186, i32* %190, align 8
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 1
  store %struct.TYPE_33__* %191, %struct.TYPE_33__** %195, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %199, align 8
  %200 = load i32, i32* @NGX_ERROR_INFO, align 4
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %204 = call i32 @ngx_mail_init_session(%struct.TYPE_25__* %203)
  store i32 0, i32* %15, align 4
  br label %205

205:                                              ; preds = %171, %168, %102, %34
  %206 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %15, align 4
  switch i32 %207, label %209 [
    i32 0, label %208
    i32 1, label %208
  ]

208:                                              ; preds = %205, %205
  ret void

209:                                              ; preds = %205
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ngx_connection_local_sockaddr(%struct.TYPE_25__*, i32*, i32) #2

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_25__*) #2

declare dso_local %struct.TYPE_31__* @ngx_pcalloc(i32, i32) #2

declare dso_local i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_31__*, i32) #2

declare dso_local i32 @ngx_set_connection_log(%struct.TYPE_25__*, i32) #2

declare dso_local i64 @ngx_sock_ntop(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_27__*, i32, i8*, i32, i64, i32*, i32*) #2

declare dso_local %struct.TYPE_33__* @ngx_palloc(i32, i32) #2

declare dso_local i32 @ngx_mail_init_session(%struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
