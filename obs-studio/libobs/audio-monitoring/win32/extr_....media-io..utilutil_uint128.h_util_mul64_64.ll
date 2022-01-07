; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....media-io..utilutil_uint128.h_util_mul64_64.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....media-io..utilutil_uint128.h_util_mul64_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i32)* @util_mul64_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @util_mul64_64(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, 4294967295
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = and i64 %14, 4294967295
  %16 = mul i64 %12, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 32
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4294967295
  %27 = mul i64 %23, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @util_lshift64_internal_32(i32 %29)
  %31 = bitcast %struct.TYPE_5__* %3 to { i32, i64 }*
  %32 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call { i32, i64 } @util_add128(i32 %33, i64 %35, i32 %30)
  %37 = bitcast %struct.TYPE_5__* %7 to { i32, i64 }*
  %38 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i32, i64 } %36, 0
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i32, i64 } %36, 1
  store i64 %41, i64* %40, align 8
  %42 = bitcast %struct.TYPE_5__* %3 to i8*
  %43 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 4294967295
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 32
  %49 = sext i32 %48 to i64
  %50 = mul i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @util_lshift64_internal_32(i32 %52)
  %54 = bitcast %struct.TYPE_5__* %3 to { i32, i64 }*
  %55 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call { i32, i64 } @util_add128(i32 %56, i64 %58, i32 %53)
  %60 = bitcast %struct.TYPE_5__* %8 to { i32, i64 }*
  %61 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i32, i64 } %59, 0
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i32, i64 } %59, 1
  store i64 %64, i64* %63, align 8
  %65 = bitcast %struct.TYPE_5__* %3 to i8*
  %66 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 32
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 32
  %71 = mul nsw i32 %68, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @util_lshift64_internal_64(i32 %72)
  %74 = bitcast %struct.TYPE_5__* %3 to { i32, i64 }*
  %75 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call { i32, i64 } @util_add128(i32 %76, i64 %78, i32 %73)
  %80 = bitcast %struct.TYPE_5__* %9 to { i32, i64 }*
  %81 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i32, i64 } %79, 0
  store i32 %82, i32* %81, align 8
  %83 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i32, i64 } %79, 1
  store i64 %84, i64* %83, align 8
  %85 = bitcast %struct.TYPE_5__* %3 to i8*
  %86 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = bitcast %struct.TYPE_5__* %3 to { i32, i64 }*
  %88 = load { i32, i64 }, { i32, i64 }* %87, align 8
  ret { i32, i64 } %88
}

declare dso_local { i32, i64 } @util_add128(i32, i64, i32) #1

declare dso_local i32 @util_lshift64_internal_32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @util_lshift64_internal_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
