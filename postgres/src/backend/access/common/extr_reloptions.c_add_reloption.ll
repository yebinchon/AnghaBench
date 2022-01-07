; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_add_reloption.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_add_reloption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@add_reloption.max_custom_options = internal global i32 0, align 4
@num_custom_options = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@custom_options = common dso_local global i32** null, align 8
@need_initialization = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @add_reloption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_reloption(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @num_custom_options, align 4
  %5 = load i32, i32* @add_reloption.max_custom_options, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @TopMemoryContext, align 4
  %9 = call i32 @MemoryContextSwitchTo(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @add_reloption.max_custom_options, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  store i32 8, i32* @add_reloption.max_custom_options, align 4
  %13 = load i32, i32* @add_reloption.max_custom_options, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i32** @palloc(i32 %16)
  store i32** %17, i32*** @custom_options, align 8
  br label %27

18:                                               ; preds = %7
  %19 = load i32, i32* @add_reloption.max_custom_options, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* @add_reloption.max_custom_options, align 4
  %21 = load i32**, i32*** @custom_options, align 8
  %22 = load i32, i32* @add_reloption.max_custom_options, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i32** @repalloc(i32** %21, i32 %25)
  store i32** %26, i32*** @custom_options, align 8
  br label %27

27:                                               ; preds = %18, %12
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32*, i32** %2, align 8
  %32 = load i32**, i32*** @custom_options, align 8
  %33 = load i32, i32* @num_custom_options, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @num_custom_options, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  store i32* %31, i32** %36, align 8
  store i32 1, i32* @need_initialization, align 4
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32** @palloc(i32) #1

declare dso_local i32** @repalloc(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
