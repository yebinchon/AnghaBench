; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_find.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 (i8*)* }
%struct.hash_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_find(%struct.hash* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  store %struct.hash* %0, %struct.hash** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.hash*, %struct.hash** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.hash*, %struct.hash** %4, align 8
  %10 = getelementptr inbounds %struct.hash, %struct.hash* %9, i32 0, i32 0
  %11 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 %11(i8* %12)
  %14 = call %struct.hash_entry* @hash_find_entry(%struct.hash* %7, i8* %8, i32 %13)
  store %struct.hash_entry* %14, %struct.hash_entry** %6, align 8
  %15 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %16 = icmp ne %struct.hash_entry* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %3, align 8
  br label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local %struct.hash_entry* @hash_find_entry(%struct.hash*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
