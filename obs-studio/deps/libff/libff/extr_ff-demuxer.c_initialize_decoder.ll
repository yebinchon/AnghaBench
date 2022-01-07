; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_initialize_decoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_initialize_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.TYPE_9__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AV_SYNC_AUDIO_MASTER = common dso_local global i32 0, align 4
@AV_SYNC_VIDEO_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_demuxer*, %struct.TYPE_8__*, i32*, i32)* @initialize_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_decoder(%struct.ff_demuxer* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ff_demuxer*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %122 [
    i32 129, label %13
    i32 128, label %70
  ]

13:                                               ; preds = %4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %17 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %21 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @ff_decoder_init(%struct.TYPE_8__* %14, i32* %15, i32 %19, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_9__*
  %26 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %27 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %26, i32 0, i32 3
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %30 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %34 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %38 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %37, i32 0, i32 3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @AV_SYNC_AUDIO_MASTER, align 4
  %42 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %43 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %42, i32 0, i32 3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 8
  %46 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %47 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %46, i32 0, i32 4
  %48 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %49 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32* %47, i32** %51, align 8
  %52 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %53 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = call i32 @ff_callbacks_format(i32* %53, %struct.TYPE_8__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %13
  %58 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %59 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @ff_decoder_free(%struct.TYPE_9__* %60)
  %62 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %63 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %62, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %63, align 8
  store i32 0, i32* %5, align 4
  br label %123

64:                                               ; preds = %13
  %65 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %66 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %69 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %68, i32 0, i32 3
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %69, align 8
  store i32 1, i32* %5, align 4
  br label %123

70:                                               ; preds = %4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %74 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %78 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ff_decoder_init(%struct.TYPE_8__* %71, i32* %72, i32 %76, i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_9__*
  %83 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %84 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %83, i32 0, i32 0
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %87 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %91 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %95 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @AV_SYNC_VIDEO_MASTER, align 4
  %99 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %100 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 8
  %103 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %104 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %103, i32 0, i32 1
  %105 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %106 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32* %104, i32** %108, align 8
  %109 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %110 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = call i32 @ff_callbacks_format(i32* %110, %struct.TYPE_8__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %70
  %115 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %116 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = call i32 @ff_decoder_free(%struct.TYPE_9__* %117)
  %119 = load %struct.ff_demuxer*, %struct.ff_demuxer** %6, align 8
  %120 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %119, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %120, align 8
  store i32 0, i32* %5, align 4
  br label %123

121:                                              ; preds = %70
  store i32 1, i32* %5, align 4
  br label %123

122:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %121, %114, %64, %57
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i8* @ff_decoder_init(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @ff_callbacks_format(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ff_decoder_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
