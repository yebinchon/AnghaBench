; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-util.c_add_codec_to_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-util.c_add_codec_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_format_desc = type { i32 }
%struct.ff_codec_desc = type { i32, i32, %struct.ff_codec_desc*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@FF_CODEC_AUDIO = common dso_local global i32 0, align 4
@FF_CODEC_VIDEO = common dso_local global i32 0, align 4
@FF_CODEC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_format_desc*, %struct.ff_codec_desc**, %struct.ff_codec_desc**, i32, %struct.TYPE_4__*, i32)* @add_codec_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_codec_to_list(%struct.ff_format_desc* %0, %struct.ff_codec_desc** %1, %struct.ff_codec_desc** %2, i32 %3, %struct.TYPE_4__* %4, i32 %5) #0 {
  %7 = alloca %struct.ff_format_desc*, align 8
  %8 = alloca %struct.ff_codec_desc**, align 8
  %9 = alloca %struct.ff_codec_desc**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ff_codec_desc*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  store %struct.ff_format_desc* %0, %struct.ff_format_desc** %7, align 8
  store %struct.ff_codec_desc** %1, %struct.ff_codec_desc*** %8, align 8
  store %struct.ff_codec_desc** %2, %struct.ff_codec_desc*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @avcodec_find_encoder(i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %11, align 8
  br label %22

22:                                               ; preds = %18, %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %115

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = call i32 @av_codec_is_encoder(%struct.TYPE_4__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %115

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load %struct.ff_format_desc*, %struct.ff_format_desc** %7, align 8
  %36 = getelementptr inbounds %struct.ff_format_desc, %struct.ff_format_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @av_codec_get_tag(i32 %37, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %115

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %31
  %47 = call %struct.ff_codec_desc* @av_mallocz(i32 32)
  store %struct.ff_codec_desc* %47, %struct.ff_codec_desc** %14, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %52 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %57 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %62 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @avcodec_find_encoder(i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %15, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %46
  %77 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %78 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %83 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %46
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %96 [
    i32 129, label %88
    i32 128, label %92
  ]

88:                                               ; preds = %84
  %89 = load i32, i32* @FF_CODEC_AUDIO, align 4
  %90 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %91 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %100

92:                                               ; preds = %84
  %93 = load i32, i32* @FF_CODEC_VIDEO, align 4
  %94 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %95 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  br label %100

96:                                               ; preds = %84
  %97 = load i32, i32* @FF_CODEC_UNKNOWN, align 4
  %98 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %99 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %92, %88
  %101 = load %struct.ff_codec_desc**, %struct.ff_codec_desc*** %9, align 8
  %102 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %101, align 8
  %103 = icmp ne %struct.ff_codec_desc* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %106 = load %struct.ff_codec_desc**, %struct.ff_codec_desc*** %9, align 8
  %107 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %106, align 8
  %108 = getelementptr inbounds %struct.ff_codec_desc, %struct.ff_codec_desc* %107, i32 0, i32 2
  store %struct.ff_codec_desc* %105, %struct.ff_codec_desc** %108, align 8
  br label %112

109:                                              ; preds = %100
  %110 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %111 = load %struct.ff_codec_desc**, %struct.ff_codec_desc*** %8, align 8
  store %struct.ff_codec_desc* %110, %struct.ff_codec_desc** %111, align 8
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %14, align 8
  %114 = load %struct.ff_codec_desc**, %struct.ff_codec_desc*** %9, align 8
  store %struct.ff_codec_desc* %113, %struct.ff_codec_desc** %114, align 8
  br label %115

115:                                              ; preds = %112, %44, %30, %25
  ret void
}

declare dso_local i8* @avcodec_find_encoder(i32) #1

declare dso_local i32 @av_codec_is_encoder(%struct.TYPE_4__*) #1

declare dso_local i32 @av_codec_get_tag(i32, i32) #1

declare dso_local %struct.ff_codec_desc* @av_mallocz(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
