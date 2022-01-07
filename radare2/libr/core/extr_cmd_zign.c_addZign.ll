; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_addZign.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_addZign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"error: unknown zignature type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32)* @addZign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addZign(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %75 [
    i32 136, label %13
    i32 138, label %13
    i32 134, label %20
    i32 135, label %26
    i32 133, label %32
    i32 132, label %38
    i32 131, label %44
    i32 128, label %50
    i32 129, label %56
    i32 130, label %62
    i32 137, label %68
  ]

13:                                               ; preds = %5, %5
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @addBytesZign(i32* %14, i8* %15, i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %78

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @addGraphZign(i32* %21, i8* %22, i8* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %78

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @addCommentZign(i32* %27, i8* %28, i8* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %78

32:                                               ; preds = %5
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @addNameZign(i32* %33, i8* %34, i8* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %78

38:                                               ; preds = %5
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @addOffsetZign(i32* %39, i8* %40, i8* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %78

44:                                               ; preds = %5
  %45 = load i32*, i32** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @addRefsZign(i32* %45, i8* %46, i8* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %78

50:                                               ; preds = %5
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @addXRefsZign(i32* %51, i8* %52, i8* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %78

56:                                               ; preds = %5
  %57 = load i32*, i32** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @addVarsZign(i32* %57, i8* %58, i8* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %78

62:                                               ; preds = %5
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @addTypesZign(i32* %63, i8* %64, i8* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %78

68:                                               ; preds = %5
  %69 = load i32*, i32** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @addHashZign(i32* %69, i8* %70, i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %6, align 4
  br label %78

75:                                               ; preds = %5
  %76 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %68, %62, %56, %50, %44, %38, %32, %26, %20, %13
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @addBytesZign(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @addGraphZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addCommentZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addNameZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addOffsetZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addRefsZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addXRefsZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addVarsZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addTypesZign(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addHashZign(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
