; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_entry_unref.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_entry_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.cache_entry*, i32)* }
%struct.cache_entry = type { i32, i32, i32 }

@TEMPORARY = common dso_local global i32 0, align 4
@FREE_KEY_ON_DESTROY = common dso_local global i32 0, align 4
@FLOATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_entry_unref(%struct.cache* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %5 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %6 = call i32 @assert(%struct.cache_entry* %5)
  %7 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TEMPORARY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %15 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FREE_KEY_ON_DESTROY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free(i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ATOMIC_DEC(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %52

33:                                               ; preds = %26
  %34 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %35 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FLOATING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.cache*, %struct.cache** %3, align 8
  %43 = getelementptr inbounds %struct.cache, %struct.cache* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.cache_entry*, i32)*, i32 (%struct.cache_entry*, i32)** %44, align 8
  %46 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %47 = load %struct.cache*, %struct.cache** %3, align 8
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %45(%struct.cache_entry* %46, i32 %50)
  br label %52

52:                                               ; preds = %32, %41, %33
  ret void
}

declare dso_local i32 @assert(%struct.cache_entry*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @ATOMIC_DEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
