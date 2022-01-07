; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_open_demux_reentrant.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_open_demux_reentrant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i64, i32, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Using prefetched/prefetching URL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Prefetched URL failed, retrying.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Dropping finished prefetch of wrong URL.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Aborting ongoing prefetch of wrong URL.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @open_demux_reentrant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_demux_reentrant(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %1
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 7
  %17 = call i32 @atomic_load(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ false, %14 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %43 = call i32 @MP_VERBOSE(%struct.MPContext* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %68

44:                                               ; preds = %38, %26
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %52 = call i32 @MP_VERBOSE(%struct.MPContext* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %54 = call i32 @cancel_open(%struct.MPContext* %53)
  br label %67

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %60 = call i32 @MP_VERBOSE(%struct.MPContext* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %64

61:                                               ; preds = %55
  %62 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %63 = call i32 @MP_VERBOSE(%struct.MPContext* %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %66 = call i32 @cancel_open(%struct.MPContext* %65)
  br label %67

67:                                               ; preds = %64, %50
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %78 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %77, i32 0, i32 9
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @start_open(%struct.MPContext* %75, i8* %76, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %74, %69
  %84 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %85 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %88 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mp_cancel_set_parent(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %107, %83
  %92 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 7
  %94 = call i32 @atomic_load(i32* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %99 = call i32 @mp_idle(%struct.MPContext* %98)
  %100 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %101 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %106 = call i32 @mp_abort_playback_async(%struct.MPContext* %105)
  br label %107

107:                                              ; preds = %104, %97
  br label %91

108:                                              ; preds = %91
  %109 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %110 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %109, i32 0, i32 5
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %115 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %118 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %117, i32 0, i32 4
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %118, align 8
  %119 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %120 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %119, i32 0, i32 5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %120, align 8
  %121 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %122 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %127 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @mp_cancel_set_parent(i32 %125, i32 %128)
  br label %136

130:                                              ; preds = %108
  %131 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %132 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %135 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %113
  %137 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %138 = call i32 @cancel_open(%struct.MPContext* %137)
  ret void
}

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*) #1

declare dso_local i32 @cancel_open(%struct.MPContext*) #1

declare dso_local i32 @start_open(%struct.MPContext*, i8*, i32, i32) #1

declare dso_local i32 @mp_cancel_set_parent(i32, i32) #1

declare dso_local i32 @mp_idle(%struct.MPContext*) #1

declare dso_local i32 @mp_abort_playback_async(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
