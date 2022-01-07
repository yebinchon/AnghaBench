; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_gc_addspecial.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_gc_addspecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { %struct.gc_entry_special* }
%struct.gc_entry_special = type { void (i8*)*, %struct.gc_entry_special*, i8* }

@file = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gc_addspecial(i8* %0, void (i8*)* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca %struct.gc_arena*, align 8
  %7 = alloca %struct.gc_entry_special*, align 8
  store i8* %0, i8** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  %8 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %9 = call i32 @ASSERT(%struct.gc_arena* %8)
  %10 = call i64 @malloc(i32 24)
  %11 = inttoptr i64 %10 to %struct.gc_entry_special*
  store %struct.gc_entry_special* %11, %struct.gc_entry_special** %7, align 8
  %12 = load %struct.gc_entry_special*, %struct.gc_entry_special** %7, align 8
  %13 = call i32 @check_malloc_return(%struct.gc_entry_special* %12)
  %14 = load void (i8*)*, void (i8*)** %5, align 8
  %15 = load %struct.gc_entry_special*, %struct.gc_entry_special** %7, align 8
  %16 = getelementptr inbounds %struct.gc_entry_special, %struct.gc_entry_special* %15, i32 0, i32 0
  store void (i8*)* %14, void (i8*)** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.gc_entry_special*, %struct.gc_entry_special** %7, align 8
  %19 = getelementptr inbounds %struct.gc_entry_special, %struct.gc_entry_special* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %21 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %20, i32 0, i32 0
  %22 = load %struct.gc_entry_special*, %struct.gc_entry_special** %21, align 8
  %23 = load %struct.gc_entry_special*, %struct.gc_entry_special** %7, align 8
  %24 = getelementptr inbounds %struct.gc_entry_special, %struct.gc_entry_special* %23, i32 0, i32 1
  store %struct.gc_entry_special* %22, %struct.gc_entry_special** %24, align 8
  %25 = load %struct.gc_entry_special*, %struct.gc_entry_special** %7, align 8
  %26 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %27 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %26, i32 0, i32 0
  store %struct.gc_entry_special* %25, %struct.gc_entry_special** %27, align 8
  ret void
}

declare dso_local i32 @ASSERT(%struct.gc_arena*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @check_malloc_return(%struct.gc_entry_special*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
