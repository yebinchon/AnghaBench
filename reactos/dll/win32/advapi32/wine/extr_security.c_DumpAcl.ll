; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_DumpAcl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_DumpAcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SDDL_PROTECTED = common dso_local global i32 0, align 4
@SDDL_AUTO_INHERIT_REQ = common dso_local global i32 0, align 4
@SDDL_AUTO_INHERITED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32**, i32*, i64, i64, i64)* @DumpAcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DumpAcl(%struct.TYPE_5__* %0, i32** %1, i32* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load i32, i32* @SDDL_PROTECTED, align 4
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @DumpString(i32 %20, i32 -1, i32** %21, i32* %22)
  br label %24

24:                                               ; preds = %19, %6
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @SDDL_AUTO_INHERIT_REQ, align 4
  %29 = load i32**, i32*** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @DumpString(i32 %28, i32 -1, i32** %29, i32* %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @SDDL_AUTO_INHERITED, align 4
  %37 = load i32**, i32*** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @DumpString(i32 %36, i32 -1, i32** %37, i32* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = icmp eq %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %7, align 8
  br label %80

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = call i32 @IsValidAcl(%struct.TYPE_5__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %7, align 8
  br label %80

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %75, %51
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @GetAce(%struct.TYPE_5__* %60, i32 %61, i32* %16)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %7, align 8
  br label %80

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  %68 = load i32**, i32*** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @DumpAce(i32 %67, i32** %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %7, align 8
  br label %80

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load i64, i64* @TRUE, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %78, %72, %64, %49, %43
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i32 @DumpString(i32, i32, i32**, i32*) #1

declare dso_local i32 @IsValidAcl(%struct.TYPE_5__*) #1

declare dso_local i32 @GetAce(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @DumpAce(i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
