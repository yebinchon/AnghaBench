; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_conf_file.c_ngx_conf_add_dump.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_conf_file.c_ngx_conf_add_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_20__, i32* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_22__*)* @ngx_conf_add_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_conf_add_dump(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ngx_crc32_long(i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_23__* @ngx_str_rbtree_lookup(i32* %22, %struct.TYPE_22__* %23, i32 %24)
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %10, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %27 = icmp ne %struct.TYPE_23__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %120

34:                                               ; preds = %2
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = call i32* @ngx_pstrdup(i32 %39, %struct.TYPE_22__* %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %120

46:                                               ; preds = %34
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = call %struct.TYPE_25__* @ngx_array_push(i32* %50)
  store %struct.TYPE_25__* %51, %struct.TYPE_25__** %11, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %53 = icmp eq %struct.TYPE_25__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %120

56:                                               ; preds = %46
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = call i64 @ngx_file_size(i32* %61)
  store i64 %62, i64* %6, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i32* @ngx_create_temp_buf(i32 %67, i64 %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %3, align 4
  br label %120

74:                                               ; preds = %56
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  store i32* %75, i32** %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  store i32* %88, i32** %92, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_23__* @ngx_palloc(i32 %95, i32 24)
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %10, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %98 = icmp eq %struct.TYPE_23__* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %74
  %100 = load i32, i32* @NGX_ERROR, align 4
  store i32 %100, i32* %3, align 4
  br label %120

101:                                              ; preds = %74
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = bitcast %struct.TYPE_20__* %107 to i8*
  %111 = bitcast %struct.TYPE_20__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = call i32 @ngx_rbtree_insert(i32* %115, %struct.TYPE_17__* %117)
  %119 = load i32, i32* @NGX_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %101, %99, %72, %54, %44, %28
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @ngx_crc32_long(i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_str_rbtree_lookup(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32* @ngx_pstrdup(i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_file_size(i32*) #1

declare dso_local i32* @ngx_create_temp_buf(i32, i64) #1

declare dso_local %struct.TYPE_23__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_rbtree_insert(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
