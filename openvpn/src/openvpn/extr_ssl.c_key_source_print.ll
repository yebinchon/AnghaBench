; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_source_print.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_source_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_source = type { i64, i64, i64 }
%struct.gc_arena = type { i32 }

@D_SHOW_KEY_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s pre_master: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s random1: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s random2: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_source*, i8*)* @key_source_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_source_print(%struct.key_source* %0, i8* %1) #0 {
  %3 = alloca %struct.key_source*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gc_arena, align 4
  store %struct.key_source* %0, %struct.key_source** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @gc_new()
  %7 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.key_source*, %struct.key_source** %3, align 8
  %9 = getelementptr inbounds %struct.key_source, %struct.key_source* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @VALGRIND_MAKE_READABLE(i8* %11, i32 8)
  %13 = load %struct.key_source*, %struct.key_source** %3, align 8
  %14 = getelementptr inbounds %struct.key_source, %struct.key_source* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @VALGRIND_MAKE_READABLE(i8* %16, i32 8)
  %18 = load %struct.key_source*, %struct.key_source** %3, align 8
  %19 = getelementptr inbounds %struct.key_source, %struct.key_source* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @VALGRIND_MAKE_READABLE(i8* %21, i32 8)
  %23 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.key_source*, %struct.key_source** %3, align 8
  %26 = getelementptr inbounds %struct.key_source, %struct.key_source* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @format_hex(i64 %27, i32 8, i32 0, %struct.gc_arena* %5)
  %29 = call i32 @dmsg(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %28)
  %30 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.key_source*, %struct.key_source** %3, align 8
  %33 = getelementptr inbounds %struct.key_source, %struct.key_source* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @format_hex(i64 %34, i32 8, i32 0, %struct.gc_arena* %5)
  %36 = call i32 @dmsg(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %35)
  %37 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.key_source*, %struct.key_source** %3, align 8
  %40 = getelementptr inbounds %struct.key_source, %struct.key_source* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @format_hex(i64 %41, i32 8, i32 0, %struct.gc_arena* %5)
  %43 = call i32 @dmsg(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %42)
  %44 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @VALGRIND_MAKE_READABLE(i8*, i32) #1

declare dso_local i32 @dmsg(i32, i8*, i8*, i32) #1

declare dso_local i32 @format_hex(i64, i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
