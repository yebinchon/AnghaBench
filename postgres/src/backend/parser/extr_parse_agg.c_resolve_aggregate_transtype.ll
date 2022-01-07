; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_resolve_aggregate_transtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_resolve_aggregate_transtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_aggregate_transtype(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @IsPolymorphicType(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_func_signature(i32 %15, i32** %9, i32* %10)
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @enforce_generic_type_consistency(i32* %22, i32* %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @pfree(i32* %27)
  br label %29

29:                                               ; preds = %14, %4
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i64 @IsPolymorphicType(i32) #1

declare dso_local i32 @get_func_signature(i32, i32**, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @enforce_generic_type_consistency(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
