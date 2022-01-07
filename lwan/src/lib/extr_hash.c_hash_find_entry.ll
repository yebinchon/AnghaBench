; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_find_entry.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i32, i32 }
%struct.hash = type { i32, i64 (i8*, i32)*, %struct.hash_bucket* }
%struct.hash_bucket = type { i32, %struct.hash_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_entry* (%struct.hash*, i8*, i32)* @hash_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_entry* @hash_find_entry(%struct.hash* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hash_entry*, align 8
  %5 = alloca %struct.hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hash_bucket*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  %11 = alloca %struct.hash_entry*, align 8
  store %struct.hash* %0, %struct.hash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.hash*, %struct.hash** %5, align 8
  %14 = getelementptr inbounds %struct.hash, %struct.hash* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hash*, %struct.hash** %5, align 8
  %18 = getelementptr inbounds %struct.hash, %struct.hash* %17, i32 0, i32 2
  %19 = load %struct.hash_bucket*, %struct.hash_bucket** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %19, i64 %21
  store %struct.hash_bucket* %22, %struct.hash_bucket** %9, align 8
  %23 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %24 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %23, i32 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8
  store %struct.hash_entry* %25, %struct.hash_entry** %10, align 8
  %26 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %27 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %28 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %26, i64 %30
  store %struct.hash_entry* %31, %struct.hash_entry** %11, align 8
  br label %32

32:                                               ; preds = %56, %3
  %33 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %34 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %35 = icmp ult %struct.hash_entry* %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %56

43:                                               ; preds = %36
  %44 = load %struct.hash*, %struct.hash** %5, align 8
  %45 = getelementptr inbounds %struct.hash, %struct.hash* %44, i32 0, i32 1
  %46 = load i64 (i8*, i32)*, i64 (i8*, i32)** %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 %46(i8* %47, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  store %struct.hash_entry* %54, %struct.hash_entry** %4, align 8
  br label %60

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %58 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %57, i32 1
  store %struct.hash_entry* %58, %struct.hash_entry** %10, align 8
  br label %32

59:                                               ; preds = %32
  store %struct.hash_entry* null, %struct.hash_entry** %4, align 8
  br label %60

60:                                               ; preds = %59, %53
  %61 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  ret %struct.hash_entry* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
