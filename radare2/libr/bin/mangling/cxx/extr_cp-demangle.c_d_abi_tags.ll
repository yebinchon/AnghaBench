; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_abi_tags.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_abi_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { %struct.demangle_component* }
%struct.demangle_component = type { i32 }

@DEMANGLE_COMPONENT_TAGGED_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, %struct.demangle_component*)* @d_abi_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_abi_tags(%struct.d_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = getelementptr inbounds %struct.d_info, %struct.d_info* %8, i32 0, i32 0
  %10 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  store %struct.demangle_component* %10, %struct.demangle_component** %5, align 8
  br label %11

11:                                               ; preds = %17, %2
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call signext i8 @d_peek_char(%struct.d_info* %12)
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 66
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call i32 @d_advance(%struct.d_info* %18, i32 1)
  %20 = load %struct.d_info*, %struct.d_info** %3, align 8
  %21 = call %struct.demangle_component* @d_source_name(%struct.d_info* %20)
  store %struct.demangle_component* %21, %struct.demangle_component** %7, align 8
  %22 = load %struct.d_info*, %struct.d_info** %3, align 8
  %23 = load i32, i32* @DEMANGLE_COMPONENT_TAGGED_NAME, align 4
  %24 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %25 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %26 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %22, i32 %23, %struct.demangle_component* %24, %struct.demangle_component* %25)
  store %struct.demangle_component* %26, %struct.demangle_component** %4, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %29 = load %struct.d_info*, %struct.d_info** %3, align 8
  %30 = getelementptr inbounds %struct.d_info, %struct.d_info* %29, i32 0, i32 0
  store %struct.demangle_component* %28, %struct.demangle_component** %30, align 8
  %31 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  ret %struct.demangle_component* %31
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_source_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
