; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_type_infocache_push.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_type_infocache_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGtype_information_cache = type { i32, i32, %struct.ECPGtype_information_cache* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ECPGtype_information_cache**, i32, i32, i32)* @ecpg_type_infocache_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ECPGtype_information_cache**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ECPGtype_information_cache*, align 8
  store %struct.ECPGtype_information_cache** %0, %struct.ECPGtype_information_cache*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i64 @ecpg_alloc(i32 16, i32 %11)
  %13 = inttoptr i64 %12 to %struct.ECPGtype_information_cache*
  store %struct.ECPGtype_information_cache* %13, %struct.ECPGtype_information_cache** %10, align 8
  %14 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %10, align 8
  %15 = icmp eq %struct.ECPGtype_information_cache* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %30

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %10, align 8
  %20 = getelementptr inbounds %struct.ECPGtype_information_cache, %struct.ECPGtype_information_cache* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %10, align 8
  %23 = getelementptr inbounds %struct.ECPGtype_information_cache, %struct.ECPGtype_information_cache* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ECPGtype_information_cache**, %struct.ECPGtype_information_cache*** %6, align 8
  %25 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %24, align 8
  %26 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %10, align 8
  %27 = getelementptr inbounds %struct.ECPGtype_information_cache, %struct.ECPGtype_information_cache* %26, i32 0, i32 2
  store %struct.ECPGtype_information_cache* %25, %struct.ECPGtype_information_cache** %27, align 8
  %28 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %10, align 8
  %29 = load %struct.ECPGtype_information_cache**, %struct.ECPGtype_information_cache*** %6, align 8
  store %struct.ECPGtype_information_cache* %28, %struct.ECPGtype_information_cache** %29, align 8
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @ecpg_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
