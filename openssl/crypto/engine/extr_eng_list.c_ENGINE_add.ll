; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_ENGINE_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_ENGINE_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@ENGINE_F_ENGINE_ADD = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ENGINE_R_ID_OR_NAME_MISSING = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@ENGINE_R_INTERNAL_LIST_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ENGINE_add(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @ENGINE_F_ENGINE_ADD, align 4
  %9 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %10 = call i32 @ENGINEerr(i32 %8, i32 %9)
  store i32 0, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %11
  %22 = load i32, i32* @ENGINE_F_ENGINE_ADD, align 4
  %23 = load i32, i32* @ENGINE_R_ID_OR_NAME_MISSING, align 4
  %24 = call i32 @ENGINEerr(i32 %22, i32 %23)
  store i32 0, i32* %2, align 4
  br label %39

25:                                               ; preds = %16
  %26 = load i32, i32* @global_engine_lock, align 4
  %27 = call i32 @CRYPTO_THREAD_write_lock(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = call i32 @engine_list_add(%struct.TYPE_4__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENGINE_F_ENGINE_ADD, align 4
  %33 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %34 = call i32 @ENGINEerr(i32 %32, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @global_engine_lock, align 4
  %37 = call i32 @CRYPTO_THREAD_unlock(i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %21, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @engine_list_add(%struct.TYPE_4__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
