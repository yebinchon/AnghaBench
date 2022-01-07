; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_drx.c_drx_set.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_drx.c_drx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DR_CONTROL = common dso_local global i64 0, align 8
@DR_NADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid DRX index (0-%d)\0A\00", align 1
@I386_DR_CONTROL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Invalid DRX length (%d) must be 1, 2, 4, 8 bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drx_set(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* @DR_CONTROL, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @DR_NADDR, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %6
  %26 = load i32, i32* @DR_NADDR, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %7, align 4
  br label %89

29:                                               ; preds = %21
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %34 [
    i32 1, label %31
    i32 2, label %32
    i32 4, label %33
  ]

31:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %35

32:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %35

33:                                               ; preds = %29
  store i32 3, i32* %12, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %33, %32, %31
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %56 [
    i32 1, label %37
    i32 2, label %38
    i32 4, label %39
    i32 8, label %40
    i32 -1, label %41
  ]

37:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %59

38:                                               ; preds = %35
  store i32 4, i32* %11, align 4
  br label %59

39:                                               ; preds = %35
  store i32 12, i32* %11, align 4
  br label %59

40:                                               ; preds = %35
  store i32 8, i32* %11, align 4
  br label %59

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @I386_DR_DISABLE(i32 %42, i32 %43)
  %45 = load i32, i32* @I386_DR_CONTROL_MASK, align 4
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* @DR_CONTROL, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  store i32 1, i32* %7, align 4
  br label %89

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %7, align 4
  br label %89

59:                                               ; preds = %40, %39, %38, %37
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @I386_DR_SET_RW_LEN(i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @I386_DR_GLOBAL_ENABLE(i32 %69, i32 %70)
  br label %76

72:                                               ; preds = %59
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @I386_DR_LOCAL_ENABLE(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* @I386_DR_CONTROL_MASK, align 4
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i64, i64* @DR_CONTROL, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %76, %56, %41, %25
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i32 @I386_DR_DISABLE(i32, i32) #1

declare dso_local i32 @I386_DR_SET_RW_LEN(i32, i32, i32) #1

declare dso_local i32 @I386_DR_GLOBAL_ENABLE(i32, i32) #1

declare dso_local i32 @I386_DR_LOCAL_ENABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
