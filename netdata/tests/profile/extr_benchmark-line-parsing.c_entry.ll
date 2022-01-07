; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_entry.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base = type { i64, i64, %struct.entry*, %struct.entry* }
%struct.entry = type { void (i8*, i8*)*, %struct.entry*, %struct.entry*, i8*, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.base* (%struct.base*, i8*, i8*, i8*, void (i8*, i8*)*)* @entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.base* @entry(%struct.base* %0, i8* %1, i8* %2, i8* %3, void (i8*, i8*)* %4) #0 {
  %6 = alloca %struct.base*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*, i8*)*, align 8
  %11 = alloca %struct.entry*, align 8
  store %struct.base* %0, %struct.base** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8
  %12 = load %struct.base*, %struct.base** %6, align 8
  %13 = icmp ne %struct.base* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = call %struct.base* @calloc(i32 1, i32 32)
  store %struct.base* %15, %struct.base** %6, align 8
  br label %16

16:                                               ; preds = %14, %5
  %17 = call %struct.entry* @malloc(i32 48)
  store %struct.entry* %17, %struct.entry** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strdup(i8* %18)
  %20 = load %struct.entry*, %struct.entry** %11, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.entry*, %struct.entry** %11, align 8
  %23 = getelementptr inbounds %struct.entry, %struct.entry* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @simple_hash2(i32 %24)
  %26 = load %struct.entry*, %struct.entry** %11, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.entry*, %struct.entry** %11, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.entry*, %struct.entry** %11, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8
  %35 = load %struct.entry*, %struct.entry** %11, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 0
  store void (i8*, i8*)* %34, void (i8*, i8*)** %36, align 8
  %37 = load %struct.entry*, %struct.entry** %11, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 1
  store %struct.entry* null, %struct.entry** %38, align 8
  %39 = load %struct.base*, %struct.base** %6, align 8
  %40 = getelementptr inbounds %struct.base, %struct.base* %39, i32 0, i32 2
  %41 = load %struct.entry*, %struct.entry** %40, align 8
  %42 = load %struct.entry*, %struct.entry** %11, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 2
  store %struct.entry* %41, %struct.entry** %43, align 8
  %44 = load %struct.base*, %struct.base** %6, align 8
  %45 = getelementptr inbounds %struct.base, %struct.base* %44, i32 0, i32 2
  %46 = load %struct.entry*, %struct.entry** %45, align 8
  %47 = icmp ne %struct.entry* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %16
  %49 = load %struct.entry*, %struct.entry** %11, align 8
  %50 = load %struct.base*, %struct.base** %6, align 8
  %51 = getelementptr inbounds %struct.base, %struct.base* %50, i32 0, i32 2
  %52 = load %struct.entry*, %struct.entry** %51, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 1
  store %struct.entry* %49, %struct.entry** %53, align 8
  br label %58

54:                                               ; preds = %16
  %55 = load %struct.entry*, %struct.entry** %11, align 8
  %56 = load %struct.base*, %struct.base** %6, align 8
  %57 = getelementptr inbounds %struct.base, %struct.base* %56, i32 0, i32 3
  store %struct.entry* %55, %struct.entry** %57, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.entry*, %struct.entry** %11, align 8
  %60 = load %struct.base*, %struct.base** %6, align 8
  %61 = getelementptr inbounds %struct.base, %struct.base* %60, i32 0, i32 2
  store %struct.entry* %59, %struct.entry** %61, align 8
  %62 = load %struct.base*, %struct.base** %6, align 8
  %63 = getelementptr inbounds %struct.base, %struct.base* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.base*, %struct.base** %6, align 8
  %67 = getelementptr inbounds %struct.base, %struct.base* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.base*, %struct.base** %6, align 8
  %70 = getelementptr inbounds %struct.base, %struct.base* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.base*, %struct.base** %6, align 8
  ret %struct.base* %71
}

declare dso_local %struct.base* @calloc(i32, i32) #1

declare dso_local %struct.entry* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @simple_hash2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
