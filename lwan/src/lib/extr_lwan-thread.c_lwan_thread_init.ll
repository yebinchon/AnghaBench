; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16, i32, i32, i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"Could not create barrier\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Initializing threads\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not allocate memory for threads\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Two connections per cache line\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Worker threads created and ready to serve\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_init(%struct.lwan* %0) #0 {
  %2 = alloca %struct.lwan*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.lwan* %0, %struct.lwan** %2, align 8
  %8 = load %struct.lwan*, %struct.lwan** %2, align 8
  %9 = getelementptr inbounds %struct.lwan, %struct.lwan* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.lwan*, %struct.lwan** %2, align 8
  %12 = getelementptr inbounds %struct.lwan, %struct.lwan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 8
  %15 = sext i16 %14 to i32
  %16 = add i32 %15, 1
  %17 = call i64 @pthread_barrier_init(i32* %10, i32* null, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.lwan*, %struct.lwan** %2, align 8
  %24 = getelementptr inbounds %struct.lwan, %struct.lwan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = sext i16 %26 to i64
  %28 = call i32* @calloc(i64 %27, i32 4)
  %29 = load %struct.lwan*, %struct.lwan** %2, align 8
  %30 = getelementptr inbounds %struct.lwan, %struct.lwan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32* %28, i32** %31, align 8
  %32 = load %struct.lwan*, %struct.lwan** %2, align 8
  %33 = getelementptr inbounds %struct.lwan, %struct.lwan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %21
  %38 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %21
  store i16 0, i16* %3, align 2
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i16, i16* %3, align 2
  %42 = sext i16 %41 to i32
  %43 = load %struct.lwan*, %struct.lwan** %2, align 8
  %44 = getelementptr inbounds %struct.lwan, %struct.lwan* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 8
  %47 = sext i16 %46 to i32
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.lwan*, %struct.lwan** %2, align 8
  %51 = load %struct.lwan*, %struct.lwan** %2, align 8
  %52 = getelementptr inbounds %struct.lwan, %struct.lwan* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i16, i16* %3, align 2
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @create_thread(%struct.lwan* %50, i32* %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i16, i16* %3, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %3, align 2
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.lwan*, %struct.lwan** %2, align 8
  %64 = getelementptr inbounds %struct.lwan, %struct.lwan* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lwan*, %struct.lwan** %2, align 8
  %68 = getelementptr inbounds %struct.lwan, %struct.lwan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i16, i16* %69, align 8
  %71 = sext i16 %70 to i32
  %72 = mul i32 %66, %71
  store i32 %72, i32* %4, align 4
  %73 = call i32 @static_assert(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.lwan*, %struct.lwan** %2, align 8
  %75 = getelementptr inbounds %struct.lwan, %struct.lwan* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i16, i16* %76, align 8
  %78 = sext i16 %77 to i32
  %79 = sub nsw i32 %78, 1
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = call i32 @lwan_nextpow2(i64 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32* @alloca(i32 %86)
  store i32* %87, i32** %6, align 8
  %88 = load %struct.lwan*, %struct.lwan** %2, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @topology_to_schedtbl(%struct.lwan* %88, i32* %89, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  %94 = load %struct.lwan*, %struct.lwan** %2, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @adjust_threads_affinity(%struct.lwan* %94, i32* %95, i32 %96)
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %123, %62
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %98
  %103 = load %struct.lwan*, %struct.lwan** %2, align 8
  %104 = getelementptr inbounds %struct.lwan, %struct.lwan* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  %116 = load %struct.lwan*, %struct.lwan** %2, align 8
  %117 = getelementptr inbounds %struct.lwan, %struct.lwan* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32* %115, i32** %122, align 8
  br label %123

123:                                              ; preds = %102
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %98

126:                                              ; preds = %98
  %127 = load %struct.lwan*, %struct.lwan** %2, align 8
  %128 = getelementptr inbounds %struct.lwan, %struct.lwan* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = call i32 @pthread_barrier_wait(i32* %129)
  %131 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pthread_barrier_init(i32*, i32*, i32) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

declare dso_local i32 @lwan_status_debug(i8*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @create_thread(%struct.lwan*, i32*) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32 @lwan_nextpow2(i64) #1

declare dso_local i32* @alloca(i32) #1

declare dso_local i32 @topology_to_schedtbl(%struct.lwan*, i32*, i32) #1

declare dso_local i32 @adjust_threads_affinity(%struct.lwan*, i32*, i32) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
