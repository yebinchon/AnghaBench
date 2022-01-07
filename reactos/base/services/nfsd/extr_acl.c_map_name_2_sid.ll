; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_name_2_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_name_2_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"map_name_2_sid: LookupAccountName for %s returned %d GetLastError %d name len %d domain len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"map_name_2_sid: LookupAccountName for %s failed with %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@WinNullSid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32)* @map_name_2_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_name_2_sid(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %12, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @LookupAccountName(i32* null, i32 %13, i32* null, i32* %14, i32* null, i32* %11, i32* %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ACLLVL, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32, i8*, ...) @dprintf(i32 %16, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = call i32 (...) @GetLastError()
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %74 [
    i32 129, label %31
    i32 128, label %65
  ]

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @malloc(i32 %33)
  %35 = load i32**, i32*** %6, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 (...) @GetLastError()
  store i32 %40, i32* %8, align 4
  br label %75

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  %43 = call i32* @malloc(i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %77

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32**, i32*** %6, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @LookupAccountName(i32* null, i32 %48, i32* %50, i32* %51, i32* %52, i32* %11, i32* %9)
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @free(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 @eprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %77

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %64, i32* %8, align 4
  br label %74

65:                                               ; preds = %28
  %66 = load i32, i32* @WinNullSid, align 4
  %67 = load i32**, i32*** %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @create_unknownsid(i32 %66, i32** %67, i32* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %28, %63
  br label %75

75:                                               ; preds = %77, %74, %39
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %82

77:                                               ; preds = %72, %58, %46
  %78 = call i32 (...) @GetLastError()
  store i32 %78, i32* %8, align 4
  %79 = load i32**, i32*** %6, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @free(i32* %80)
  br label %75

82:                                               ; preds = %75, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @LookupAccountName(i32*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dprintf(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @eprintf(i8*, i32, i32) #1

declare dso_local i32 @create_unknownsid(i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
