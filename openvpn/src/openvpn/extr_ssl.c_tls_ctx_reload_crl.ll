; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_ctx_reload_crl.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_ctx_reload_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_root_ctx = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"WARNING: Failed to stat CRL file, not (re)loading CRL.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_root_ctx*, i8*, i8*)* @tls_ctx_reload_crl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_ctx_reload_crl(%struct.tls_root_ctx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.tls_root_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store %struct.tls_root_ctx* %0, %struct.tls_root_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %21

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @platform_stat(i8* %14, %struct.TYPE_3__* %7)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @M_WARN, align 4
  %19 = call i32 @msg(i32 %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %49

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %11
  %22 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.tls_root_ctx, %struct.tls_root_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.tls_root_ctx, %struct.tls_root_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %49

36:                                               ; preds = %28, %21
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.tls_root_ctx, %struct.tls_root_ctx* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.tls_root_ctx, %struct.tls_root_ctx* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @backend_tls_ctx_reload_crl(%struct.tls_root_ctx* %45, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %36, %35, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @platform_stat(i8*, %struct.TYPE_3__*) #2

declare dso_local i32 @msg(i32, i8*) #2

declare dso_local i32 @backend_tls_ctx_reload_crl(%struct.tls_root_ctx*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
