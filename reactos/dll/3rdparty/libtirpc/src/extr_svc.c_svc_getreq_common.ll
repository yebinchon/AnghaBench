; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc.c_svc_getreq_common.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc.c_svc_getreq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.svc_callout = type { i64, i64, i32 (%struct.svc_req*, %struct.TYPE_18__*)*, %struct.svc_callout* }
%struct.svc_req = type { i8*, i64, i64, %struct.TYPE_15__, i32, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i8* }
%struct.rpc_msg = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@RQCRED_SIZE = common dso_local global i32 0, align 4
@svc_fd_lock = common dso_local global i32 0, align 4
@__svc_xports = common dso_local global %struct.TYPE_18__** null, align 8
@AUTH_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svc_head = common dso_local global %struct.svc_callout* null, align 8
@TRUE = common dso_local global i32 0, align 4
@XPRT_DIED = common dso_local global i32 0, align 4
@XPRT_MOREREQS = common dso_local global i32 0, align 4
@svc_auth_gss_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_getreq_common(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.svc_req, align 8
  %5 = alloca %struct.rpc_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.svc_callout*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %15 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %16 = mul nsw i32 2, %15
  %17 = load i32, i32* @RQCRED_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  %28 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %21, i64 %33
  %35 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = call i32 @rwlock_rdlock(i32* @svc_fd_lock)
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @__svc_xports, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %37, i64 %38
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %3, align 8
  %41 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = icmp eq %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %177

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %172, %45
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = call i64 @SVC_RECV(%struct.TYPE_18__* %47, %struct.rpc_msg* %5)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %142

50:                                               ; preds = %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 5
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %52, align 8
  %53 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 2
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 3
  %66 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = bitcast %struct.TYPE_15__* %65 to i8*
  %69 = bitcast %struct.TYPE_15__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = call i32 @_authenticate(%struct.svc_req* %4, %struct.rpc_msg* %5)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @AUTH_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %50
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @svcerr_auth(%struct.TYPE_18__* %74, i32 %75)
  br label %154

77:                                               ; preds = %50
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %79 = load %struct.svc_callout*, %struct.svc_callout** @svc_head, align 8
  store %struct.svc_callout* %79, %struct.svc_callout** %13, align 8
  br label %80

80:                                               ; preds = %126, %77
  %81 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %82 = icmp ne %struct.svc_callout* %81, null
  br i1 %82, label %83, label %130

83:                                               ; preds = %80
  %84 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %85 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %83
  %91 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %92 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %99 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %98, i32 0, i32 2
  %100 = load i32 (%struct.svc_req*, %struct.TYPE_18__*)*, i32 (%struct.svc_req*, %struct.TYPE_18__*)** %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = call i32 %100(%struct.svc_req* %4, %struct.TYPE_18__* %101)
  br label %154

103:                                              ; preds = %90
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %6, align 4
  %105 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %106 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %112 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %116 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %122 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %120, %114
  br label %125

125:                                              ; preds = %124, %83
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %128 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %127, i32 0, i32 3
  %129 = load %struct.svc_callout*, %struct.svc_callout** %128, align 8
  store %struct.svc_callout* %129, %struct.svc_callout** %13, align 8
  br label %80

130:                                              ; preds = %80
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @svcerr_progvers(%struct.TYPE_18__* %134, i64 %135, i64 %136)
  br label %141

138:                                              ; preds = %130
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = call i32 @svcerr_noprog(%struct.TYPE_18__* %139)
  br label %141

141:                                              ; preds = %138, %133
  br label %142

142:                                              ; preds = %141, %46
  %143 = call i32 @rwlock_rdlock(i32* @svc_fd_lock)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %145 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @__svc_xports, align 8
  %146 = load i64, i64* %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %145, i64 %146
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = icmp ne %struct.TYPE_18__* %144, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %176

152:                                              ; preds = %142
  %153 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %154

154:                                              ; preds = %152, %97, %73
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %156 = call i32 @SVC_STAT(%struct.TYPE_18__* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* @XPRT_DIED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %161 = call i32 @SVC_DESTROY(%struct.TYPE_18__* %160)
  br label %176

162:                                              ; preds = %154
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = icmp ne %struct.TYPE_17__* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %169, align 8
  br label %170

170:                                              ; preds = %167, %162
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @XPRT_MOREREQS, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %46, label %176

176:                                              ; preds = %172, %159, %150
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %176, %44
  %178 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %12, align 4
  switch i32 %179, label %181 [
    i32 0, label %180
    i32 1, label %180
  ]

180:                                              ; preds = %177, %177
  ret void

181:                                              ; preds = %177
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rwlock_rdlock(i32*) #2

declare dso_local i32 @rwlock_unlock(i32*) #2

declare dso_local i64 @SVC_RECV(%struct.TYPE_18__*, %struct.rpc_msg*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @_authenticate(%struct.svc_req*, %struct.rpc_msg*) #2

declare dso_local i32 @svcerr_auth(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @svcerr_progvers(%struct.TYPE_18__*, i64, i64) #2

declare dso_local i32 @svcerr_noprog(%struct.TYPE_18__*) #2

declare dso_local i32 @SVC_STAT(%struct.TYPE_18__*) #2

declare dso_local i32 @SVC_DESTROY(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
