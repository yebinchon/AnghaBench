; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_module_rewrite_as.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_module_rewrite_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RESPONSE_URL_REWRITTEN = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, i8*)* @module_rewrite_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_rewrite_as(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %7 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @coro_strdup(i32 %10, i8* %11)
  %13 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %14 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %17 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @UNLIKELY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %29 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %34 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %37 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %36, i32 0, i32 2
  %38 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %39 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_4__* %37 to i8*
  %41 = bitcast %struct.TYPE_4__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = load i32, i32* @RESPONSE_URL_REWRITTEN, align 4
  %43 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %44 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @HTTP_OK, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %27, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @coro_strdup(i32, i8*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @strlen(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
