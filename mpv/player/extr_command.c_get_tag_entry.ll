; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_tag_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_tag_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_tags = type { i32*, i32* }
%struct.m_sub_property = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @get_tag_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tag_entry(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mp_tags*, align 8
  %10 = alloca [3 x %struct.m_sub_property], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.mp_tags*
  store %struct.mp_tags* %12, %struct.mp_tags** %9, align 8
  %13 = getelementptr inbounds [3 x %struct.m_sub_property], [3 x %struct.m_sub_property]* %10, i64 0, i64 0
  %14 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %13, i32 0, i32 1
  %16 = load %struct.mp_tags*, %struct.mp_tags** %9, align 8
  %17 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SUB_PROP_STR(i32 %22)
  store i32 %23, i32* %15, align 8
  %24 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %13, i64 1
  %25 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %24, i32 0, i32 1
  %27 = load %struct.mp_tags*, %struct.mp_tags** %9, align 8
  %28 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SUB_PROP_STR(i32 %33)
  store i32 %34, i32* %26, align 8
  %35 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %24, i64 1
  %36 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %35, i32 0, i32 0
  store i8* null, i8** %36, align 16
  %37 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %35, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds [3 x %struct.m_sub_property], [3 x %struct.m_sub_property]* %10, i64 0, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @m_property_read_sub(%struct.m_sub_property* %38, i32 %39, i8* %40)
  ret i32 %41
}

declare dso_local i32 @SUB_PROP_STR(i32) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
