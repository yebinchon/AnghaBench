; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_ref_qualifier.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_ref_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }
%struct.demangle_component = type { i32 }

@DEMANGLE_COMPONENT_REFERENCE_THIS = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_RVALUE_REFERENCE_THIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, %struct.demangle_component*)* @d_ref_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_ref_qualifier(%struct.d_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %8 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %8, %struct.demangle_component** %5, align 8
  %9 = load %struct.d_info*, %struct.d_info** %3, align 8
  %10 = call signext i8 @d_peek_char(%struct.d_info* %9)
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 82
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 79
  br i1 %17, label %18, label %45

18:                                               ; preds = %14, %2
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 82
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @DEMANGLE_COMPONENT_REFERENCE_THIS, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.d_info*, %struct.d_info** %3, align 8
  %25 = getelementptr inbounds %struct.d_info, %struct.d_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 2
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load i32, i32* @DEMANGLE_COMPONENT_RVALUE_REFERENCE_THIS, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.d_info*, %struct.d_info** %3, align 8
  %33 = getelementptr inbounds %struct.d_info, %struct.d_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 3
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.d_info*, %struct.d_info** %3, align 8
  %40 = call i32 @d_advance(%struct.d_info* %39, i32 1)
  %41 = load %struct.d_info*, %struct.d_info** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %44 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %41, i32 %42, %struct.demangle_component* %43, i32* null)
  store %struct.demangle_component* %44, %struct.demangle_component** %5, align 8
  br label %45

45:                                               ; preds = %38, %14
  %46 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  ret %struct.demangle_component* %46
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
