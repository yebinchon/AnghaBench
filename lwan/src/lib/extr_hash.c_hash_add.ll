; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_add.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i64, i64, i32 (i8*)*, i32 (i8*)* }
%struct.hash_entry = type { i8*, i8* }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_add(%struct.hash* %0, i8* %1, i8* %2) #0 {
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
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.hash*, %struct.hash** %5, align 8
  %19 = getelementptr inbounds %struct.hash, %struct.hash* %18, i32 0, i32 3
  %20 = load i32 (i8*)*, i32 (i8*)** %19, align 8
  %21 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 %20(i8* %23)
  %25 = load %struct.hash*, %struct.hash** %5, align 8
  %26 = getelementptr inbounds %struct.hash, %struct.hash* %25, i32 0, i32 2
  %27 = load i32 (i8*)*, i32 (i8*)** %26, align 8
  %28 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 %27(i8* %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.hash*, %struct.hash** %5, align 8
  %39 = getelementptr inbounds %struct.hash, %struct.hash* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hash*, %struct.hash** %5, align 8
  %42 = getelementptr inbounds %struct.hash, %struct.hash* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %17
  %46 = load %struct.hash*, %struct.hash** %5, align 8
  %47 = load %struct.hash*, %struct.hash** %5, align 8
  %48 = call i32 @hash_n_buckets(%struct.hash* %47)
  %49 = mul nsw i32 %48, 2
  %50 = call i32 @rehash(%struct.hash* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %17
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
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
