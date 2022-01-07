; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_get_user_pass_http.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_get_user_pass_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.http_proxy_info = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@static_proxy_user_pass = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GET_USER_PASS_MANAGEMENT = common dso_local global i32 0, align 4
@GET_USER_PASS_PREVIOUS_CREDS_FAILED = common dso_local global i32 0, align 4
@GET_USER_PASS_INLINE_CREDS = common dso_local global i32 0, align 4
@UP_TYPE_PROXY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.http_proxy_info*, i32)* @get_user_pass_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_user_pass_http(%struct.http_proxy_info* %0, i32 %1) #0 {
  %3 = alloca %struct.http_proxy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.http_proxy_info* %0, %struct.http_proxy_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @clear_user_pass_http()
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @static_proxy_user_pass, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @GET_USER_PASS_MANAGEMENT, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %16 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @GET_USER_PASS_PREVIOUS_CREDS_FAILED, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %25 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @GET_USER_PASS_INLINE_CREDS, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %35 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UP_TYPE_PROXY, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @get_user_pass(%struct.TYPE_5__* @static_proxy_user_pass, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %42 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.http_proxy_info*, %struct.http_proxy_info** %3, align 8
  %44 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_5__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.TYPE_5__* @static_proxy_user_pass to i8*), i64 4, i1 false)
  br label %46

46:                                               ; preds = %33, %10
  ret void
}

declare dso_local i32 @clear_user_pass_http(...) #1

declare dso_local i32 @get_user_pass(%struct.TYPE_5__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
