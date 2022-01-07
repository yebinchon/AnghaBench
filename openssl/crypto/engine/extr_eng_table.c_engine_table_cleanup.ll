; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_table.c_engine_table_cleanup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_table.c_engine_table_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@global_engine_lock = common dso_local global i32 0, align 4
@int_cleanup_cb_doall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @engine_table_cleanup(%struct.TYPE_3__** %0) #0 {
  %2 = alloca %struct.TYPE_3__**, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %2, align 8
  %3 = load i32, i32* @global_engine_lock, align 4
  %4 = call i32 @CRYPTO_THREAD_write_lock(i32 %3)
  %5 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* @int_cleanup_cb_doall, align 4
  %13 = call i32 @lh_ENGINE_PILE_doall(i32* %11, i32 %12)
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @lh_ENGINE_PILE_free(i32* %16)
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %18, align 8
  br label %19

19:                                               ; preds = %8, %1
  %20 = load i32, i32* @global_engine_lock, align 4
  %21 = call i32 @CRYPTO_THREAD_unlock(i32 %20)
  ret void
}

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @lh_ENGINE_PILE_doall(i32*, i32) #1

declare dso_local i32 @lh_ENGINE_PILE_free(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
