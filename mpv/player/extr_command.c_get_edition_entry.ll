; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_edition_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_edition_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.demuxer* }
%struct.demuxer = type { %struct.demux_edition* }
%struct.demux_edition = type { i32, i32 }
%struct.m_sub_property = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @get_edition_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_edition_entry(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.MPContext*, align 8
  %10 = alloca %struct.demuxer*, align 8
  %11 = alloca %struct.demux_edition*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [4 x %struct.m_sub_property], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.MPContext*
  store %struct.MPContext* %15, %struct.MPContext** %9, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load %struct.demuxer*, %struct.demuxer** %17, align 8
  store %struct.demuxer* %18, %struct.demuxer** %10, align 8
  %19 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %20 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %19, i32 0, i32 0
  %21 = load %struct.demux_edition*, %struct.demux_edition** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.demux_edition, %struct.demux_edition* %21, i64 %23
  store %struct.demux_edition* %24, %struct.demux_edition** %11, align 8
  %25 = load %struct.demux_edition*, %struct.demux_edition** %11, align 8
  %26 = getelementptr inbounds %struct.demux_edition, %struct.demux_edition* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @mp_tags_get_str(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %12, align 8
  %29 = getelementptr inbounds [4 x %struct.m_sub_property], [4 x %struct.m_sub_property]* %13, i64 0, i64 0
  %30 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %29, i32 0, i32 1
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @SUB_PROP_INT(i32 %32)
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %29, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %29, i64 1
  %36 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %35, i32 0, i32 1
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %35, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %35, i64 1
  %44 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %43, i32 0, i32 1
  %46 = load %struct.demux_edition*, %struct.demux_edition** %11, align 8
  %47 = getelementptr inbounds %struct.demux_edition, %struct.demux_edition* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SUB_PROP_FLAG(i32 %48)
  store i32 %49, i32* %45, align 8
  %50 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %43, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %43, i64 1
  %52 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %51, i32 0, i32 0
  store i8* null, i8** %52, align 16
  %53 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %51, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %51, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds [4 x %struct.m_sub_property], [4 x %struct.m_sub_property]* %13, i64 0, i64 0
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @m_property_read_sub(%struct.m_sub_property* %55, i32 %56, i8* %57)
  ret i32 %58
}

declare dso_local i8* @mp_tags_get_str(i32, i8*) #1

declare dso_local i32 @SUB_PROP_INT(i32) #1

declare dso_local i32 @SUB_PROP_FLAG(i32) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
