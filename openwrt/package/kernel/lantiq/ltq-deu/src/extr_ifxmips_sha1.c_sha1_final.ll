; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1.c_sha1_final.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1.c_sha1_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_ctx = type { i32 }
%struct.deu_hash_t = type { i32, i32, i32, i32, i32 }

@sha1_final.padding = internal constant <{ i32, [63 x i32] }> <{ i32 128, [63 x i32] zeroinitializer }>, align 16
@HASH_START = common dso_local global i64 0, align 8
@CRTCL_SECT_START = common dso_local global i32 0, align 4
@CRTCL_SECT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @sha1_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha1_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca %struct.deu_hash_t*, align 8
  %11 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %13 = call %struct.sha1_ctx* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.sha1_ctx* %13, %struct.sha1_ctx** %5, align 8
  %14 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = load i64, i64* @HASH_START, align 8
  %16 = inttoptr i64 %15 to %struct.deu_hash_t*
  store %struct.deu_hash_t* %16, %struct.deu_hash_t** %10, align 8
  %17 = load %struct.sha1_ctx*, %struct.sha1_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 255, %20
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 255, %25
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 255, %30
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 255, %35
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 255, %40
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 8
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 255, %45
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 8
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 255, %50
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 255, %55
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %56, i32* %57, align 16
  %58 = load %struct.sha1_ctx*, %struct.sha1_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 3
  %62 = and i32 %61, 63
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 56
  br i1 %64, label %65, label %68

65:                                               ; preds = %2
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 56, %66
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 120, %69
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ]
  store i32 %72, i32* %7, align 4
  %73 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @sha1_update(%struct.shash_desc* %73, i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, [63 x i32] }>* @sha1_final.padding to [64 x i32]*), i64 0, i64 0), i32 %74)
  %76 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %78 = call i32 @sha1_update(%struct.shash_desc* %76, i32* %77, i32 32)
  %79 = load i32, i32* @CRTCL_SECT_START, align 4
  %80 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %81 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %80, i32 0, i32 0
  %82 = load volatile i32, i32* %81, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %86 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %85, i32 0, i32 1
  %87 = load volatile i32, i32* %86, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %91 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %90, i32 0, i32 2
  %92 = load volatile i32, i32* %91, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %96 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %95, i32 0, i32 3
  %97 = load volatile i32, i32* %96, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %101 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %100, i32 0, i32 4
  %102 = load volatile i32, i32* %101, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @CRTCL_SECT_END, align 4
  %106 = load %struct.sha1_ctx*, %struct.sha1_ctx** %5, align 8
  %107 = call i32 @memset(%struct.sha1_ctx* %106, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.sha1_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sha1_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @memset(%struct.sha1_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
