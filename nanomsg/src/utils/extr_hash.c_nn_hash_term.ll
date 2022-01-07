; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_hash.c_nn_hash_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_hash.c_nn_hash_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_hash = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_term(%struct.nn_hash* %0) #0 {
  %2 = alloca %struct.nn_hash*, align 8
  %3 = alloca i64, align 8
  store %struct.nn_hash* %0, %struct.nn_hash** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.nn_hash*, %struct.nn_hash** %2, align 8
  %7 = getelementptr inbounds %struct.nn_hash, %struct.nn_hash* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load %struct.nn_hash*, %struct.nn_hash** %2, align 8
  %12 = getelementptr inbounds %struct.nn_hash, %struct.nn_hash* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @nn_list_term(i32* %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.nn_hash*, %struct.nn_hash** %2, align 8
  %22 = getelementptr inbounds %struct.nn_hash, %struct.nn_hash* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @nn_free(i32* %23)
  ret void
}

declare dso_local i32 @nn_list_term(i32*) #1

declare dso_local i32 @nn_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
