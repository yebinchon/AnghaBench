; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_gcm128.c_gcm_gmult_1bit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_gcm128.c_gcm_gmult_1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@__const.gcm_gmult_1bit.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gcm_gmult_1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_gmult_1bit(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to i64*
  store i64* %18, i64** %10, align 8
  %19 = bitcast %union.anon* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%union.anon* @__const.gcm_gmult_1bit.is_endian to i8*), i64 8, i1 false)
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %91, %2
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 2
  br i1 %31, label %32, label %94

32:                                               ; preds = %28
  %33 = bitcast %union.anon* %11 to i8*
  %34 = load i8, i8* %33, align 8
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i64*, i64** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = bitcast i64* %40 to i32*
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @GETU32(i32* %42)
  %44 = shl i32 %43, 32
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = call i32 @GETU32(i32* %46)
  %48 = or i32 %44, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %7, align 8
  br label %56

50:                                               ; preds = %32
  %51 = load i64*, i64** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %50, %36
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 64
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = ashr i64 %62, 63
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 1
  %83 = load i64, i64* %82, align 4
  %84 = call i32 @REDUCE1BIT(i64 %81, i64 %83)
  br label %85

85:                                               ; preds = %61
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i64, i64* %7, align 8
  %89 = shl i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %57

90:                                               ; preds = %57
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %28

94:                                               ; preds = %28
  %95 = bitcast %union.anon* %11 to i8*
  %96 = load i8, i8* %95, align 8
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = load i32*, i32** %3, align 8
  store i32* %99, i32** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 32
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %15, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @PUTU32(i32* %104, i64 %105)
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %15, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @PUTU32(i32* %111, i64 %112)
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 32
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %15, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 8
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @PUTU32(i32* %119, i64 %120)
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %15, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @PUTU32(i32* %126, i64 %127)
  br label %138

129:                                              ; preds = %94
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %129, %98
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GETU32(i32*) #2

declare dso_local i32 @REDUCE1BIT(i64, i64) #2

declare dso_local i32 @PUTU32(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
