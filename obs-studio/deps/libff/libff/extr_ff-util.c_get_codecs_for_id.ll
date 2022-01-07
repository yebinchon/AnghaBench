; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-util.c_get_codecs_for_id.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-util.c_get_codecs_for_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_format_desc = type { i32 }
%struct.ff_codec_desc = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_format_desc*, %struct.ff_codec_desc**, %struct.ff_codec_desc**, i32, i32)* @get_codecs_for_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_codecs_for_id(%struct.ff_format_desc* %0, %struct.ff_codec_desc** %1, %struct.ff_codec_desc** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ff_format_desc*, align 8
  %7 = alloca %struct.ff_codec_desc**, align 8
  %8 = alloca %struct.ff_codec_desc**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.ff_format_desc* %0, %struct.ff_format_desc** %6, align 8
  store %struct.ff_codec_desc** %1, %struct.ff_codec_desc*** %7, align 8
  store %struct.ff_codec_desc** %2, %struct.ff_codec_desc*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  br label %12

12:                                               ; preds = %17, %5
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %15 = call %struct.TYPE_5__* @next_codec_for_id(i32 %13, %struct.TYPE_5__* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.ff_format_desc*, %struct.ff_format_desc** %6, align 8
  %19 = load %struct.ff_codec_desc**, %struct.ff_codec_desc*** %7, align 8
  %20 = load %struct.ff_codec_desc**, %struct.ff_codec_desc*** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @add_codec_to_list(%struct.ff_format_desc* %18, %struct.ff_codec_desc** %19, %struct.ff_codec_desc** %20, i32 %23, %struct.TYPE_5__* %24, i32 %25)
  br label %12

27:                                               ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_5__* @next_codec_for_id(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @add_codec_to_list(%struct.ff_format_desc*, %struct.ff_codec_desc**, %struct.ff_codec_desc**, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
