; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-util.c_ff_codec_supported.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-util.c_ff_codec_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_codec_desc = type opaque
%struct.ff_format_desc = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ff_codec_desc* @ff_codec_supported(%struct.ff_format_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.ff_codec_desc*, align 8
  %4 = alloca %struct.ff_format_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ff_codec_desc*, align 8
  %10 = alloca %struct.ff_codec_desc*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.ff_format_desc* %0, %struct.ff_format_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ff_codec_desc* null, %struct.ff_codec_desc** %9, align 8
  store %struct.ff_codec_desc* null, %struct.ff_codec_desc** %10, align 8
  %12 = call i32 @get_codecs(%struct.TYPE_3__*** %6, i32* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.ff_codec_desc* null, %struct.ff_codec_desc** %3, align 8
  br label %40

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %11, align 8
  %26 = load %struct.ff_format_desc*, %struct.ff_format_desc** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @get_codecs_for_id(%struct.ff_format_desc* %26, %struct.ff_codec_desc** %10, %struct.ff_codec_desc** %9, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %37 = bitcast %struct.TYPE_3__** %36 to i8*
  %38 = call i32 @av_free(i8* %37)
  %39 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %10, align 8
  store %struct.ff_codec_desc* %39, %struct.ff_codec_desc** %3, align 8
  br label %40

40:                                               ; preds = %35, %14
  %41 = load %struct.ff_codec_desc*, %struct.ff_codec_desc** %3, align 8
  ret %struct.ff_codec_desc* %41
}

declare dso_local i32 @get_codecs(%struct.TYPE_3__***, i32*) #1

declare dso_local i32 @get_codecs_for_id(%struct.ff_format_desc*, %struct.ff_codec_desc**, %struct.ff_codec_desc**, i32, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
