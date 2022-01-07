; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_add_entry.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i32 }
%struct.hash = type { i32 (i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_entry* (%struct.hash*, i8*)* @hash_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_entry* @hash_add_entry(%struct.hash* %0, i8* %1) #0 {
  %3 = alloca %struct.hash*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.hash* %0, %struct.hash** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.hash*, %struct.hash** %3, align 8
  %7 = getelementptr inbounds %struct.hash, %struct.hash* %6, i32 0, i32 0
  %8 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 %8(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hash*, %struct.hash** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.hash_entry* @hash_add_entry_hashed(%struct.hash* %11, i8* %12, i32 %13)
  ret %struct.hash_entry* %14
}

declare dso_local %struct.hash_entry* @hash_add_entry_hashed(%struct.hash*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
