; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_memcache_set.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_memcache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@NGX_INT_T_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set %V %ui %ui %ui\0D\0A%V\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_rtmp_netcall_memcache_set(i32* %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call %struct.TYPE_12__* @ngx_alloc_chain_link(i32* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %14, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %62

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 4, %25
  %27 = load i32, i32* @NGX_INT_T_LEN, align 4
  %28 = add nsw i32 1, %27
  %29 = mul nsw i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = add i64 %26, %30
  %32 = add i64 %31, 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = call %struct.TYPE_13__* @ngx_create_temp_buf(i32* %22, i64 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %15, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %39 = icmp eq %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %62

41:                                               ; preds = %21
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = call i32 @ngx_sprintf(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %50, i32 %51, i32 %52, i32 %56, %struct.TYPE_11__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %7, align 8
  br label %62

62:                                               ; preds = %41, %40, %20
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %63
}

declare dso_local %struct.TYPE_12__* @ngx_alloc_chain_link(i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_create_temp_buf(i32*, i64) #1

declare dso_local i32 @ngx_sprintf(i32, i8*, %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
