; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.c_MACRO_DoLookUp.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_macro.c_MACRO_DoLookUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MacroDesc = type { i64, i32, i32, i32*, i32* }
%struct.lexret = type { i32, i32 }

@BOOL_FUNCTION = common dso_local global i32 0, align 4
@VOID_FUNCTION = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MacroDesc*, i8*, %struct.lexret*, i32)* @MACRO_DoLookUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MACRO_DoLookUp(%struct.MacroDesc* %0, i8* %1, %struct.lexret* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MacroDesc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lexret*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.MacroDesc*, align 8
  store %struct.MacroDesc* %0, %struct.MacroDesc** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.lexret* %2, %struct.lexret** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.MacroDesc*, %struct.MacroDesc** %6, align 8
  store %struct.MacroDesc* %11, %struct.MacroDesc** %10, align 8
  br label %12

12:                                               ; preds = %63, %4
  %13 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %14 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i1 [ false, %12 ], [ %19, %17 ]
  br i1 %21, label %22, label %68

22:                                               ; preds = %20
  %23 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %24 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcasecmp(i32* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %31 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %36 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcasecmp(i32* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %34, %22
  %42 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %43 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lexret*, %struct.lexret** %8, align 8
  %46 = getelementptr inbounds %struct.lexret, %struct.lexret* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %48 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.lexret*, %struct.lexret** %8, align 8
  %51 = getelementptr inbounds %struct.lexret, %struct.lexret* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %53 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @BOOL_FUNCTION, align 4
  br label %60

58:                                               ; preds = %41
  %59 = load i32, i32* @VOID_FUNCTION, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %5, align 4
  br label %70

62:                                               ; preds = %34, %29
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.MacroDesc*, %struct.MacroDesc** %10, align 8
  %65 = getelementptr inbounds %struct.MacroDesc, %struct.MacroDesc* %64, i32 1
  store %struct.MacroDesc* %65, %struct.MacroDesc** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %12

68:                                               ; preds = %20
  %69 = load i32, i32* @EMPTY, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
