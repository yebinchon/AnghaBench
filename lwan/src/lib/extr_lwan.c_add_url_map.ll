; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_add_url_map.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_add_url_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_trie = type { i32 }
%struct.lwan_url_map = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Could not copy URL map\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not copy URL prefix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwan_url_map* (%struct.lwan_trie*, i8*, %struct.lwan_url_map*)* @add_url_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwan_url_map* @add_url_map(%struct.lwan_trie* %0, i8* %1, %struct.lwan_url_map* %2) #0 {
  %4 = alloca %struct.lwan_trie*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_url_map*, align 8
  %7 = alloca %struct.lwan_url_map*, align 8
  store %struct.lwan_trie* %0, %struct.lwan_trie** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lwan_url_map* %2, %struct.lwan_url_map** %6, align 8
  %8 = call %struct.lwan_url_map* @malloc(i32 16)
  store %struct.lwan_url_map* %8, %struct.lwan_url_map** %7, align 8
  %9 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %10 = icmp ne %struct.lwan_url_map* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %15 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %16 = call i32 @memcpy(%struct.lwan_url_map* %14, %struct.lwan_url_map* %15, i32 16)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %23 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i8* [ %20, %19 ], [ %24, %21 ]
  %27 = call i8* @strdup(i8* %26)
  %28 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %29 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %31 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %25
  %37 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %38 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %42 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.lwan_trie*, %struct.lwan_trie** %4, align 8
  %44 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %45 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  %48 = call i32 @lwan_trie_add(%struct.lwan_trie* %43, i8* %46, %struct.lwan_url_map* %47)
  %49 = load %struct.lwan_url_map*, %struct.lwan_url_map** %7, align 8
  ret %struct.lwan_url_map* %49
}

declare dso_local %struct.lwan_url_map* @malloc(i32) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

declare dso_local i32 @memcpy(%struct.lwan_url_map*, %struct.lwan_url_map*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lwan_trie_add(%struct.lwan_trie*, i8*, %struct.lwan_url_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
