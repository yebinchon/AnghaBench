; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_get_chain_engine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_get_chain_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@__const.get_chain_engine.config = private unnamed_addr constant %struct.TYPE_3__ { i32 4 }, align 4
@HCCE_CURRENT_USER = common dso_local global i64 0, align 8
@default_cu_engine = common dso_local global i64 0, align 8
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@HCCE_LOCAL_MACHINE = common dso_local global i64 0, align 8
@default_lm_engine = common dso_local global i64 0, align 8
@CERT_SYSTEM_STORE_LOCAL_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32)* @get_chain_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_chain_engine(i64 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_3__* @__const.get_chain_engine.config to i8*), i64 4, i1 false)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @HCCE_CURRENT_USER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %62

15:                                               ; preds = %11
  %16 = load i64, i64* @default_cu_engine, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %20 = call i64 @CRYPT_CreateChainEngine(i32* null, i32 %19, %struct.TYPE_3__* %6)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @InterlockedCompareExchangePointer(i8** bitcast (i64* @default_cu_engine to i8**), i64 %21, i32* null)
  %23 = load i64, i64* @default_cu_engine, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @CertFreeCertificateChainEngine(i64 %27)
  br label %29

29:                                               ; preds = %26, %18
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i64, i64* @default_cu_engine, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %3, align 8
  br label %62

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @HCCE_LOCAL_MACHINE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32* null, i32** %3, align 8
  br label %62

41:                                               ; preds = %37
  %42 = load i64, i64* @default_lm_engine, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @CERT_SYSTEM_STORE_LOCAL_MACHINE, align 4
  %46 = call i64 @CRYPT_CreateChainEngine(i32* null, i32 %45, %struct.TYPE_3__* %6)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @InterlockedCompareExchangePointer(i8** bitcast (i64* @default_lm_engine to i8**), i64 %47, i32* null)
  %49 = load i64, i64* @default_lm_engine, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @CertFreeCertificateChainEngine(i64 %53)
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i64, i64* @default_lm_engine, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %3, align 8
  br label %62

59:                                               ; preds = %33
  %60 = load i64, i64* %4, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %59, %56, %40, %30, %14
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CRYPT_CreateChainEngine(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @InterlockedCompareExchangePointer(i8**, i64, i32*) #2

declare dso_local i32 @CertFreeCertificateChainEngine(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
