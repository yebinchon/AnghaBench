; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_tags.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, %struct.mkv_demuxer* }
%struct.mkv_demuxer = type { i32 }
%struct.ebml_parse_ctx = type { i32, i32 }
%struct.ebml_tags = type { i32 }

@ebml_tags_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @demux_mkv_read_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_mkv_read_tags(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.mkv_demuxer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ebml_parse_ctx, align 4
  %7 = alloca %struct.ebml_tags, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  store %struct.mkv_demuxer* %10, %struct.mkv_demuxer** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %6, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %6, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = bitcast %struct.ebml_tags* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ebml_read_element(i32* %20, %struct.ebml_parse_ctx* %6, %struct.ebml_tags* %7, i32* @ebml_tags_desc)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %4, align 8
  %26 = call i32 @talloc_dup(%struct.mkv_demuxer* %25, %struct.ebml_tags* %7)
  %27 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %4, align 8
  %28 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %4, align 8
  %30 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @talloc_steal(i32 %31, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ebml_read_element(i32*, %struct.ebml_parse_ctx*, %struct.ebml_tags*, i32*) #2

declare dso_local i32 @talloc_dup(%struct.mkv_demuxer*, %struct.ebml_tags*) #2

declare dso_local i32 @talloc_steal(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
