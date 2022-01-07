; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_hash.c_nn_hash_erase.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_hash.c_nn_hash_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_hash = type { i64, i32, i32* }
%struct.nn_hash_item = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_erase(%struct.nn_hash* %0, %struct.nn_hash_item* %1) #0 {
  %3 = alloca %struct.nn_hash*, align 8
  %4 = alloca %struct.nn_hash_item*, align 8
  %5 = alloca i64, align 8
  store %struct.nn_hash* %0, %struct.nn_hash** %3, align 8
  store %struct.nn_hash_item* %1, %struct.nn_hash_item** %4, align 8
  %6 = load %struct.nn_hash_item*, %struct.nn_hash_item** %4, align 8
  %7 = getelementptr inbounds %struct.nn_hash_item, %struct.nn_hash_item* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @nn_hash_key(i32 %8)
  %10 = load %struct.nn_hash*, %struct.nn_hash** %3, align 8
  %11 = getelementptr inbounds %struct.nn_hash, %struct.nn_hash* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = urem i64 %9, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.nn_hash*, %struct.nn_hash** %3, align 8
  %15 = getelementptr inbounds %struct.nn_hash, %struct.nn_hash* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load %struct.nn_hash_item*, %struct.nn_hash_item** %4, align 8
  %20 = getelementptr inbounds %struct.nn_hash_item, %struct.nn_hash_item* %19, i32 0, i32 0
  %21 = call i32 @nn_list_erase(i32* %18, i32* %20)
  %22 = load %struct.nn_hash*, %struct.nn_hash** %3, align 8
  %23 = getelementptr inbounds %struct.nn_hash, %struct.nn_hash* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  ret void
}

declare dso_local i64 @nn_hash_key(i32) #1

declare dso_local i32 @nn_list_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
