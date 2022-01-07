; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_set_url_map.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_set_url_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32 }
%struct.lwan_url_map = type { i32, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (i64, i32)* }

@destroy_urlmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not initialize trie\00", align 1
@HANDLER_PARSE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_set_url_map(%struct.lwan* %0, %struct.lwan_url_map* %1) #0 {
  %3 = alloca %struct.lwan*, align 8
  %4 = alloca %struct.lwan_url_map*, align 8
  %5 = alloca %struct.lwan_url_map*, align 8
  store %struct.lwan* %0, %struct.lwan** %3, align 8
  store %struct.lwan_url_map* %1, %struct.lwan_url_map** %4, align 8
  %6 = load %struct.lwan*, %struct.lwan** %3, align 8
  %7 = getelementptr inbounds %struct.lwan, %struct.lwan* %6, i32 0, i32 0
  %8 = call i32 @lwan_trie_destroy(i32* %7)
  %9 = load %struct.lwan*, %struct.lwan** %3, align 8
  %10 = getelementptr inbounds %struct.lwan, %struct.lwan* %9, i32 0, i32 0
  %11 = load i32, i32* @destroy_urlmap, align 4
  %12 = call i32 @lwan_trie_init(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @UNLIKELY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  br label %21

21:                                               ; preds = %76, %20
  %22 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %23 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %21
  %27 = load %struct.lwan*, %struct.lwan** %3, align 8
  %28 = getelementptr inbounds %struct.lwan, %struct.lwan* %27, i32 0, i32 0
  %29 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %30 = call %struct.lwan_url_map* @add_url_map(i32* %28, i32* null, %struct.lwan_url_map* %29)
  store %struct.lwan_url_map* %30, %struct.lwan_url_map** %5, align 8
  %31 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %32 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %26
  %36 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %37 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32 (i64, i32)*, i32 (i64, i32)** %39, align 8
  %41 = icmp ne i32 (i64, i32)* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %35
  %43 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %44 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32 (i64, i32)*, i32 (i64, i32)** %46, align 8
  %48 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %49 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %52 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %47(i64 %50, i32 %53)
  %55 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %56 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %58 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %63 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %65 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %70 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %75

71:                                               ; preds = %35, %26
  %72 = load i32, i32* @HANDLER_PARSE_MASK, align 4
  %73 = load %struct.lwan_url_map*, %struct.lwan_url_map** %5, align 8
  %74 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %42
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %78 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %77, i32 1
  store %struct.lwan_url_map* %78, %struct.lwan_url_map** %4, align 8
  br label %21

79:                                               ; preds = %21
  ret void
}

declare dso_local i32 @lwan_trie_destroy(i32*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_trie_init(i32*, i32) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

declare dso_local %struct.lwan_url_map* @add_url_map(i32*, i32*, %struct.lwan_url_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
