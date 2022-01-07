; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_tb_asnmth.c_ENGINE_pkey_asn1_find_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_tb_asnmth.c_ENGINE_pkey_asn1_find_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32*, %struct.TYPE_7__* }

@engine_lock_init = common dso_local global i32 0, align 4
@do_engine_lock_init = common dso_local global i32 0, align 4
@ENGINE_F_ENGINE_PKEY_ASN1_FIND_STR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@pkey_asn1_meth_table = common dso_local global i32 0, align 4
@look_str_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ENGINE_pkey_asn1_find_str(%struct.TYPE_7__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @do_engine_lock_init, align 4
  %16 = call i32 @RUN_ONCE(i32* @engine_lock_init, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENGINE_F_ENGINE_PKEY_ASN1_FIND_STR, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @ENGINEerr(i32 %19, i32 %20)
  store i32* null, i32** %4, align 8
  br label %48

22:                                               ; preds = %3
  %23 = load i32, i32* @global_engine_lock, align 4
  %24 = call i32 @CRYPTO_THREAD_write_lock(i32 %23)
  %25 = load i32, i32* @pkey_asn1_meth_table, align 4
  %26 = load i32, i32* @look_str_cb, align 4
  %27 = call i32 @engine_table_doall(i32 %25, i32 %26, %struct.TYPE_6__* %8)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call i32 @engine_ref_debug(%struct.TYPE_7__* %38, i32 0, i32 1)
  br label %40

40:                                               ; preds = %31, %22
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %43, align 8
  %44 = load i32, i32* @global_engine_lock, align 4
  %45 = call i32 @CRYPTO_THREAD_unlock(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %40, %18
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @engine_table_doall(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @engine_ref_debug(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
