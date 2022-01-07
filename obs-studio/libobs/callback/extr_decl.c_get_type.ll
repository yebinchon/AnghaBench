; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_get_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@CALL_PARAM_TYPE_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@CALL_PARAM_TYPE_FLOAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@CALL_PARAM_TYPE_BOOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@CALL_PARAM_TYPE_PTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@CALL_PARAM_TYPE_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@CALL_PARAM_TYPE_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strref*, i32*, i32)* @get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_type(%struct.strref* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strref*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.strref* %0, %struct.strref** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.strref*, %struct.strref** %5, align 8
  %9 = call i64 @strref_cmp(%struct.strref* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @CALL_PARAM_TYPE_INT, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  br label %58

14:                                               ; preds = %3
  %15 = load %struct.strref*, %struct.strref** %5, align 8
  %16 = call i64 @strref_cmp(%struct.strref* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @CALL_PARAM_TYPE_FLOAT, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %57

21:                                               ; preds = %14
  %22 = load %struct.strref*, %struct.strref** %5, align 8
  %23 = call i64 @strref_cmp(%struct.strref* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @CALL_PARAM_TYPE_BOOL, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.strref*, %struct.strref** %5, align 8
  %30 = call i64 @strref_cmp(%struct.strref* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @CALL_PARAM_TYPE_PTR, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %55

35:                                               ; preds = %28
  %36 = load %struct.strref*, %struct.strref** %5, align 8
  %37 = call i64 @strref_cmp(%struct.strref* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @CALL_PARAM_TYPE_STRING, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.strref*, %struct.strref** %5, align 8
  %47 = call i64 @strref_cmp(%struct.strref* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @CALL_PARAM_TYPE_VOID, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %53

52:                                               ; preds = %45, %42
  store i32 0, i32* %4, align 4
  br label %59

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %25
  br label %57

57:                                               ; preds = %56, %18
  br label %58

58:                                               ; preds = %57, %11
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @strref_cmp(%struct.strref*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
