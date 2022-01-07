; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_device_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_device_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao_device_list = type { %struct.ao_device_desc* }
%struct.ao_device_desc = type { i32, i32 }
%struct.m_sub_property = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @get_device_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_device_entry(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ao_device_list*, align 8
  %10 = alloca %struct.ao_device_desc*, align 8
  %11 = alloca [3 x %struct.m_sub_property], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.ao_device_list*
  store %struct.ao_device_list* %13, %struct.ao_device_list** %9, align 8
  %14 = load %struct.ao_device_list*, %struct.ao_device_list** %9, align 8
  %15 = getelementptr inbounds %struct.ao_device_list, %struct.ao_device_list* %14, i32 0, i32 0
  %16 = load %struct.ao_device_desc*, %struct.ao_device_desc** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %16, i64 %18
  store %struct.ao_device_desc* %19, %struct.ao_device_desc** %10, align 8
  %20 = getelementptr inbounds [3 x %struct.m_sub_property], [3 x %struct.m_sub_property]* %11, i64 0, i64 0
  %21 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %20, i32 0, i32 1
  %23 = load %struct.ao_device_desc*, %struct.ao_device_desc** %10, align 8
  %24 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SUB_PROP_STR(i32 %25)
  store i32 %26, i32* %22, align 8
  %27 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %20, i64 1
  %28 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %27, i32 0, i32 1
  %30 = load %struct.ao_device_desc*, %struct.ao_device_desc** %10, align 8
  %31 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SUB_PROP_STR(i32 %32)
  store i32 %33, i32* %29, align 8
  %34 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %27, i64 1
  %35 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i32 0, i32 0
  store i8* null, i8** %35, align 16
  %36 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds [3 x %struct.m_sub_property], [3 x %struct.m_sub_property]* %11, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @m_property_read_sub(%struct.m_sub_property* %37, i32 %38, i8* %39)
  ret i32 %40
}

declare dso_local i32 @SUB_PROP_STR(i32) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
