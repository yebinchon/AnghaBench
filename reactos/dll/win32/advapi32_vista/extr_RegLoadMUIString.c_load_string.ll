; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32_vista/extr_RegLoadMUIString.c_load_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32_vista/extr_RegLoadMUIString.c_load_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @load_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_string(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @HIWORD(i32 %14)
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 4
  %24 = call i64 @LOWORD(i32 %23)
  %25 = add nsw i64 %24, 1
  %26 = call i32 @MAKEINTRESOURCEW(i64 %25)
  %27 = load i64, i64* @RT_STRING, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @FindResourceW(i32 %21, i32 %26, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %92

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @LoadResource(i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %92

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = call i32* @LockResource(i32 %41)
  store i32* %42, i32** %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 15
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %49, %40
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %13, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32*, i32** %12, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %12, align 8
  br label %45

56:                                               ; preds = %45
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %92

62:                                               ; preds = %56
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  br label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ %69, %67 ], [ %72, %70 ]
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32* %78, i32* %80, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %77, %73
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %59, %39, %32
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @FindResourceW(i32, i32, i32*) #1

declare dso_local i32 @MAKEINTRESOURCEW(i64) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i32* @LockResource(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
