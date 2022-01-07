; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_free.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32, %struct.hash*, %struct.hash*, i64, i32 (i8*)*, i64, i32 (i8*)* }
%struct.hash_bucket = type { i32, %struct.hash_bucket*, %struct.hash_bucket*, i64, i32 (i8*)*, i64, i32 (i8*)* }
%struct.hash_entry = type { i32, %struct.hash_entry*, %struct.hash_entry*, i64, i32 (i8*)*, i64, i32 (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_free(%struct.hash* %0) #0 {
  %2 = alloca %struct.hash*, align 8
  %3 = alloca %struct.hash_bucket*, align 8
  %4 = alloca %struct.hash_bucket*, align 8
  %5 = alloca %struct.hash_entry*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  store %struct.hash* %0, %struct.hash** %2, align 8
  %7 = load %struct.hash*, %struct.hash** %2, align 8
  %8 = icmp eq %struct.hash* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %81

10:                                               ; preds = %1
  %11 = load %struct.hash*, %struct.hash** %2, align 8
  %12 = getelementptr inbounds %struct.hash, %struct.hash* %11, i32 0, i32 1
  %13 = load %struct.hash*, %struct.hash** %12, align 8
  %14 = bitcast %struct.hash* %13 to %struct.hash_bucket*
  store %struct.hash_bucket* %14, %struct.hash_bucket** %3, align 8
  %15 = load %struct.hash*, %struct.hash** %2, align 8
  %16 = getelementptr inbounds %struct.hash, %struct.hash* %15, i32 0, i32 1
  %17 = load %struct.hash*, %struct.hash** %16, align 8
  %18 = load %struct.hash*, %struct.hash** %2, align 8
  %19 = bitcast %struct.hash* %18 to %struct.hash_entry*
  %20 = call i32 @hash_n_buckets(%struct.hash_entry* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hash, %struct.hash* %17, i64 %21
  %23 = bitcast %struct.hash* %22 to %struct.hash_bucket*
  store %struct.hash_bucket* %23, %struct.hash_bucket** %4, align 8
  br label %24

24:                                               ; preds = %69, %10
  %25 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %26 = load %struct.hash_bucket*, %struct.hash_bucket** %4, align 8
  %27 = icmp ult %struct.hash_bucket* %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %30 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %29, i32 0, i32 2
  %31 = load %struct.hash_bucket*, %struct.hash_bucket** %30, align 8
  %32 = bitcast %struct.hash_bucket* %31 to %struct.hash_entry*
  store %struct.hash_entry* %32, %struct.hash_entry** %5, align 8
  %33 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %34 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %35 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 %37
  store %struct.hash_entry* %38, %struct.hash_entry** %6, align 8
  br label %39

39:                                               ; preds = %60, %28
  %40 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %41 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %42 = icmp ult %struct.hash_entry* %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.hash*, %struct.hash** %2, align 8
  %45 = getelementptr inbounds %struct.hash, %struct.hash* %44, i32 0, i32 6
  %46 = load i32 (i8*)*, i32 (i8*)** %45, align 8
  %47 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %48 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 %46(i8* %50)
  %52 = load %struct.hash*, %struct.hash** %2, align 8
  %53 = getelementptr inbounds %struct.hash, %struct.hash* %52, i32 0, i32 4
  %54 = load i32 (i8*)*, i32 (i8*)** %53, align 8
  %55 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 %54(i8* %58)
  br label %60

60:                                               ; preds = %43
  %61 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i32 1
  store %struct.hash_entry* %62, %struct.hash_entry** %5, align 8
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %65 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %64, i32 0, i32 2
  %66 = load %struct.hash_bucket*, %struct.hash_bucket** %65, align 8
  %67 = bitcast %struct.hash_bucket* %66 to %struct.hash_entry*
  %68 = call i32 @free(%struct.hash_entry* %67)
  br label %69

69:                                               ; preds = %63
  %70 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %71 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %70, i32 1
  store %struct.hash_bucket* %71, %struct.hash_bucket** %3, align 8
  br label %24

72:                                               ; preds = %24
  %73 = load %struct.hash*, %struct.hash** %2, align 8
  %74 = getelementptr inbounds %struct.hash, %struct.hash* %73, i32 0, i32 1
  %75 = load %struct.hash*, %struct.hash** %74, align 8
  %76 = bitcast %struct.hash* %75 to %struct.hash_entry*
  %77 = call i32 @free(%struct.hash_entry* %76)
  %78 = load %struct.hash*, %struct.hash** %2, align 8
  %79 = bitcast %struct.hash* %78 to %struct.hash_entry*
  %80 = call i32 @free(%struct.hash_entry* %79)
  br label %81

81:                                               ; preds = %72, %9
  ret void
}

declare dso_local i32 @hash_n_buckets(%struct.hash_entry*) #1

declare dso_local i32 @free(%struct.hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
