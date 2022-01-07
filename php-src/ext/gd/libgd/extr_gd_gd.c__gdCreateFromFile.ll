; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd.c__gdCreateFromFile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd.c__gdCreateFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Image is %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @_gdCreateFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gdCreateFromFile(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @gdGetWord(i32* %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %79

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 65534
  br i1 %23, label %24, label %36

24:                                               ; preds = %20, %16
  store i32 1, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 65534
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @gdGetWord(i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %79

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @gdGetWord(i32* %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %79

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  %48 = call i32 @GD2_DBG(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gdImageCreateTrueColor(i32 %53, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %63

57:                                               ; preds = %42
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gdImageCreate(i32 %59, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %79

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @_gdGetColors(i32* %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @gdImageDestroy(i32 %77)
  br label %79

79:                                               ; preds = %76, %66, %41, %34, %15
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @gdGetWord(i32*, i32*) #1

declare dso_local i32 @GD2_DBG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImageCreate(i32, i32) #1

declare dso_local i32 @_gdGetColors(i32*, i32, i32) #1

declare dso_local i32 @gdImageDestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
