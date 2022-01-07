; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSubplan.c_execTuplesUnequal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSubplan.c_execTuplesUnequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*, i32*, i32)* @execTuplesUnequal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execTuplesUnequal(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @MemoryContextReset(i32 %23)
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @MemoryContextSwitchTo(i32 %25)
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %67, %50, %43, %7
  %29 = load i32, i32* %17, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %17, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @slot_getattr(i32* %38, i32 %39, i32* %21)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %21, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %28

44:                                               ; preds = %32
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @slot_getattr(i32* %45, i32 %46, i32* %22)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %28

51:                                               ; preds = %44
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @FunctionCall2Coll(i32* %55, i32 %60, i32 %61, i32 %62)
  %64 = call i32 @DatumGetBool(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  store i32 1, i32* %16, align 4
  br label %68

67:                                               ; preds = %51
  br label %28

68:                                               ; preds = %66, %28
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @MemoryContextSwitchTo(i32 %69)
  %71 = load i32, i32* %16, align 4
  ret i32 %71
}

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @slot_getattr(i32*, i32, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
