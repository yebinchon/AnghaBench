; ModuleID = '/home/carl/AnghaBench/memcached/extr_extstore.c__allocate_page.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_extstore.c__allocate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__**, %struct.TYPE_8__*, %struct.TYPE_8__** }

@.str = private unnamed_addr constant [31 x i8] c"EXTSTORE: allocating new page\0A\00", align 1
@page_allocs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EXTSTORE: got page %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i32, i32)* @_allocate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @_allocate_page(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %12
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br label %30

30:                                               ; preds = %16, %3
  %31 = phi i1 [ true, %3 ], [ %29, %16 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %36
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 %66
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %67, align 8
  br label %68

68:                                               ; preds = %45, %36, %30
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = icmp eq %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %7, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %84, align 8
  br label %85

85:                                               ; preds = %76, %71, %68
  %86 = call i32 (i8*, ...) @E_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %131

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = icmp ne %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %131

94:                                               ; preds = %91
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %97, i64 %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 7
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %107, i64 %109
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i32 0, i32* %114, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  store i32 0, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = call i32 @_next_version(%struct.TYPE_9__* %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = load i32, i32* @page_allocs, align 4
  %130 = call i32 @STAT_INCR(%struct.TYPE_9__* %128, i32 %129, i32 1)
  br label %134

131:                                              ; preds = %91, %85
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = call i32 @extstore_run_maint(%struct.TYPE_9__* %132)
  br label %134

134:                                              ; preds = %131, %94
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = icmp ne %struct.TYPE_8__* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i8*, ...) @E_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %143
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @E_DEBUG(i8*, ...) #1

declare dso_local i32 @_next_version(%struct.TYPE_9__*) #1

declare dso_local i32 @STAT_INCR(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @extstore_run_maint(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
