; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_decoder_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_decoder_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder_list = type { %struct.mp_decoder_entry* }
%struct.mp_decoder_entry = type { i32, i32, i32 }
%struct.m_sub_property = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @get_decoder_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_decoder_entry(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mp_decoder_list*, align 8
  %10 = alloca %struct.mp_decoder_entry*, align 8
  %11 = alloca [4 x %struct.m_sub_property], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.mp_decoder_list*
  store %struct.mp_decoder_list* %13, %struct.mp_decoder_list** %9, align 8
  %14 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %9, align 8
  %15 = getelementptr inbounds %struct.mp_decoder_list, %struct.mp_decoder_list* %14, i32 0, i32 0
  %16 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %16, i64 %18
  store %struct.mp_decoder_entry* %19, %struct.mp_decoder_entry** %10, align 8
  %20 = getelementptr inbounds [4 x %struct.m_sub_property], [4 x %struct.m_sub_property]* %11, i64 0, i64 0
  %21 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %20, i32 0, i32 1
  %23 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %24 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SUB_PROP_STR(i32 %25)
  store i32 %26, i32* %22, align 8
  %27 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %20, i64 1
  %28 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %27, i32 0, i32 1
  %30 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %31 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SUB_PROP_STR(i32 %32)
  store i32 %33, i32* %29, align 8
  %34 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %27, i64 1
  %35 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i32 0, i32 1
  %37 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %38 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SUB_PROP_STR(i32 %39)
  store i32 %40, i32* %36, align 8
  %41 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i64 1
  %42 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %41, i32 0, i32 0
  store i8* null, i8** %42, align 16
  %43 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %41, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds [4 x %struct.m_sub_property], [4 x %struct.m_sub_property]* %11, i64 0, i64 0
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @m_property_read_sub(%struct.m_sub_property* %44, i32 %45, i8* %46)
  ret i32 %47
}

declare dso_local i32 @SUB_PROP_STR(i32) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
