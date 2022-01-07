; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_socket.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@once = common dso_local global i32 0, align 4
@nn_lib_init = common dso_local global i32 0, align 4
@self = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NN_CTX_FLAG_TERM = common dso_local global i32 0, align 4
@ETERM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @nn_lib_init, align 4
  %8 = call i32 @nn_do_once(i32* @once, i32 %7)
  %9 = call i32 @nn_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 1))
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 4
  %11 = load i32, i32* @NN_CTX_FLAG_TERM, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @nn_slow(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @nn_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 1))
  %17 = load i32, i32* @ETERM, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = call i32 (...) @nn_global_init()
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @nn_global_create_socket(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = call i32 (...) @nn_global_term()
  %27 = call i32 @nn_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 1))
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %33

30:                                               ; preds = %18
  %31 = call i32 @nn_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 1))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %25, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @nn_do_once(i32*, i32) #1

declare dso_local i32 @nn_mutex_lock(i32*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_mutex_unlock(i32*) #1

declare dso_local i32 @nn_global_init(...) #1

declare dso_local i32 @nn_global_create_socket(i32, i32) #1

declare dso_local i32 @nn_global_term(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
