; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_a2f.c_addTarget.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_a2f.c_addTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate memory for address stack\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to push address on stack\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addTarget(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @Fhandled(i32 %11)
  %13 = call i32 @sdb_num_get(i32* %10, i32 %12, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %4
  %16 = call i64 @malloc(i32 4)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %39

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @r_stack_push(i32* %25, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @free(i32* %32)
  br label %39

34:                                               ; preds = %22
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @Fhandled(i32 %36)
  %38 = call i32 @sdb_num_set(i32* %35, i32 %37, i32 1, i32 0)
  br label %39

39:                                               ; preds = %20, %30, %34, %4
  ret void
}

declare dso_local i32 @sdb_num_get(i32*, i32, i32*) #1

declare dso_local i32 @Fhandled(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_stack_push(i32*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sdb_num_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
