; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_maybe_print_fold_expression.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_maybe_print_fold_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@DEMANGLE_COMPONENT_TRINARY_ARG2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(...\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"...)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_print_info*, i32, %struct.demangle_component*)* @d_maybe_print_fold_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_maybe_print_fold_expression(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d_print_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca %struct.demangle_component*, align 8
  %9 = alloca %struct.demangle_component*, align 8
  %10 = alloca %struct.demangle_component*, align 8
  %11 = alloca %struct.demangle_component*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %7, align 8
  %14 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %15 = call %struct.demangle_component* @d_left(%struct.demangle_component* %14)
  %16 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 102
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

28:                                               ; preds = %3
  %29 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %30 = call %struct.demangle_component* @d_right(%struct.demangle_component* %29)
  store %struct.demangle_component* %30, %struct.demangle_component** %8, align 8
  %31 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %32 = call %struct.demangle_component* @d_left(%struct.demangle_component* %31)
  store %struct.demangle_component* %32, %struct.demangle_component** %9, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %34 = call %struct.demangle_component* @d_right(%struct.demangle_component* %33)
  store %struct.demangle_component* %34, %struct.demangle_component** %10, align 8
  store %struct.demangle_component* null, %struct.demangle_component** %11, align 8
  %35 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %36 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEMANGLE_COMPONENT_TRINARY_ARG2, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %42 = call %struct.demangle_component* @d_right(%struct.demangle_component* %41)
  store %struct.demangle_component* %42, %struct.demangle_component** %11, align 8
  %43 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %44 = call %struct.demangle_component* @d_left(%struct.demangle_component* %43)
  store %struct.demangle_component* %44, %struct.demangle_component** %10, align 8
  br label %45

45:                                               ; preds = %40, %28
  %46 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %47 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %50 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  switch i32 %54, label %104 [
    i32 108, label %55
    i32 114, label %68
    i32 76, label %81
    i32 82, label %81
  ]

55:                                               ; preds = %45
  %56 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %57 = call i32 @d_append_string(%struct.d_print_info* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %61 = call i32 @d_print_expr_op(%struct.d_print_info* %58, i32 %59, %struct.demangle_component* %60)
  %62 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %65 = call i32 @d_print_subexpr(%struct.d_print_info* %62, i32 %63, %struct.demangle_component* %64)
  %66 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %67 = call i32 @d_append_char(%struct.d_print_info* %66, i8 signext 41)
  br label %104

68:                                               ; preds = %45
  %69 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %70 = call i32 @d_append_char(%struct.d_print_info* %69, i8 signext 40)
  %71 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %74 = call i32 @d_print_subexpr(%struct.d_print_info* %71, i32 %72, %struct.demangle_component* %73)
  %75 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %78 = call i32 @d_print_expr_op(%struct.d_print_info* %75, i32 %76, %struct.demangle_component* %77)
  %79 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %80 = call i32 @d_append_string(%struct.d_print_info* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %104

81:                                               ; preds = %45, %45
  %82 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %83 = call i32 @d_append_char(%struct.d_print_info* %82, i8 signext 40)
  %84 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %87 = call i32 @d_print_subexpr(%struct.d_print_info* %84, i32 %85, %struct.demangle_component* %86)
  %88 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %91 = call i32 @d_print_expr_op(%struct.d_print_info* %88, i32 %89, %struct.demangle_component* %90)
  %92 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %93 = call i32 @d_append_string(%struct.d_print_info* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %97 = call i32 @d_print_expr_op(%struct.d_print_info* %94, i32 %95, %struct.demangle_component* %96)
  %98 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %101 = call i32 @d_print_subexpr(%struct.d_print_info* %98, i32 %99, %struct.demangle_component* %100)
  %102 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %103 = call i32 @d_append_char(%struct.d_print_info* %102, i8 signext 41)
  br label %104

104:                                              ; preds = %45, %81, %68, %55
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %107 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %27
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local i32 @d_append_string(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_print_expr_op(%struct.d_print_info*, i32, %struct.demangle_component*) #1

declare dso_local i32 @d_print_subexpr(%struct.d_print_info*, i32, %struct.demangle_component*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
