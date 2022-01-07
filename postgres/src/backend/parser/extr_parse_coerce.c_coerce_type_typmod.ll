; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_type_typmod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_type_typmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COERCION_PATH_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32, i32, i32)* @coerce_type_typmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @coerce_type_typmod(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @exprTypmod(i32* %22)
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %7
  %26 = load i32*, i32** %9, align 8
  store i32* %26, i32** %8, align 8
  br label %51

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @find_typmod_coercion_function(i32 %28, i32* %17)
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* @COERCION_PATH_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @hide_coercion_node(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32* @build_coercion_expression(i32* %40, i64 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %39, %27
  %50 = load i32*, i32** %9, align 8
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %49, %25
  %52 = load i32*, i32** %8, align 8
  ret i32* %52
}

declare dso_local i32 @exprTypmod(i32*) #1

declare dso_local i64 @find_typmod_coercion_function(i32, i32*) #1

declare dso_local i32 @hide_coercion_node(i32*) #1

declare dso_local i32* @build_coercion_expression(i32*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
