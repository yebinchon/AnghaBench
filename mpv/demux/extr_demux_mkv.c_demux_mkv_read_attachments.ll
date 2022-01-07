; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_attachments.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_attachments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.ebml_attachments = type { i32, %struct.ebml_attached_file*, i32 }
%struct.ebml_attached_file = type { i8*, i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ebml_parse_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Parsing attachments...\0A\00", align 1
@ebml_attachments_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Malformed attachment\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Attachment: %s, %s, %zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @demux_mkv_read_attachments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_mkv_read_attachments(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ebml_attachments, align 8
  %6 = alloca %struct.ebml_parse_ctx, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ebml_attached_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 (%struct.TYPE_8__*, i8*, ...) @MP_DBG(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast %struct.ebml_attachments* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %6, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %6, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @ebml_read_element(i32* %22, %struct.ebml_parse_ctx* %6, %struct.ebml_attachments* %5, i32* @ebml_attachments_desc)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %82, %26
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.ebml_attachments, %struct.ebml_attachments* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ebml_attachments, %struct.ebml_attachments* %5, i32 0, i32 1
  %34 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %34, i64 %36
  store %struct.ebml_attached_file* %37, %struct.ebml_attached_file** %8, align 8
  %38 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %39 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %44 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %49 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %42, %32
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @MP_WARN(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %82

55:                                               ; preds = %47
  %56 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %57 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %9, align 8
  %59 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %60 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %10, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %66 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %70 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @demuxer_add_attachment(%struct.TYPE_8__* %62, i8* %63, i8* %64, i32 %68, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.ebml_attached_file*, %struct.ebml_attached_file** %8, align 8
  %78 = getelementptr inbounds %struct.ebml_attached_file, %struct.ebml_attached_file* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.TYPE_8__*, i8*, ...) @MP_DBG(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76, i32 %80)
  br label %82

82:                                               ; preds = %55, %52
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %27

85:                                               ; preds = %27
  %86 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @talloc_free(i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %25
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @MP_DBG(%struct.TYPE_8__*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ebml_read_element(i32*, %struct.ebml_parse_ctx*, %struct.ebml_attachments*, i32*) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @demuxer_add_attachment(%struct.TYPE_8__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
