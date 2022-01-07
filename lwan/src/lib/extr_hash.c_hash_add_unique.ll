; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_add_unique.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_add_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i64, i64 }
%struct.hash_entry = type { i8*, i8* }

@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_add_unique(%struct.hash* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_entry*, align 8
  store %struct.hash* %0, %struct.hash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.hash*, %struct.hash** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.hash_entry* @hash_add_entry(%struct.hash* %9, i8* %10)
  store %struct.hash_entry* %11, %struct.hash_entry** %8, align 8
  %12 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %13 = icmp ne %struct.hash_entry* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.hash*, %struct.hash** %5, align 8
  %38 = getelementptr inbounds %struct.hash, %struct.hash* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hash*, %struct.hash** %5, align 8
  %41 = getelementptr inbounds %struct.hash, %struct.hash* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.hash*, %struct.hash** %5, align 8
  %46 = load %struct.hash*, %struct.hash** %5, align 8
  %47 = call i32 @hash_n_buckets(%struct.hash* %46)
  %48 = mul nsw i32 %47, 2
  %49 = call i32 @rehash(%struct.hash* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %30
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %27, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.hash_entry* @hash_add_entry(%struct.hash*, i8*) #1

declare dso_local i32 @rehash(%struct.hash*, i32) #1

declare dso_local i32 @hash_n_buckets(%struct.hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
