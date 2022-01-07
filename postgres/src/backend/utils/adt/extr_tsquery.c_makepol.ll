; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_makepol.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_makepol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i8**, i32*, i32*)*, i32 }

@STACKDEPTH = common dso_local global i32 0, align 4
@PT_END = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"syntax error in tsquery: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)*, i32)* @makepol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makepol(%struct.TYPE_7__* %0, i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)* %1, i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %17 = load i32, i32* @STACKDEPTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = call i32 (...) @check_stack_depth()
  br label %22

22:                                               ; preds = %66, %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_7__*, i32*, i32*, i8**, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i8**, i32*, i32*)** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 %25(%struct.TYPE_7__* %26, i32* %7, i32* %9, i8** %10, i32* %14, i32* %15)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @PT_END, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %57 [
    i32 128, label %32
    i32 129, label %41
    i32 130, label %48
    i32 132, label %52
    i32 131, label %56
  ]

32:                                               ; preds = %30
  %33 = load i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)*, i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 %33(i32 %34, %struct.TYPE_7__* %35, i8* %36, i32 %37, i32 %38, i32 %39)
  br label %66

41:                                               ; preds = %30
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cleanOpStack(%struct.TYPE_7__* %42, i32* %20, i32* %13, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @pushOpStack(i32* %20, i32* %13, i32 %45, i32 %46)
  br label %66

48:                                               ; preds = %30
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)*, i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)** %5, align 8
  %51 = load i32, i32* %6, align 4
  call void @makepol(%struct.TYPE_7__* %49, i32 (i32, %struct.TYPE_7__*, i8*, i32, i32, i32)* %50, i32 %51)
  br label %66

52:                                               ; preds = %30
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = load i32, i32* @OP_OR, align 4
  %55 = call i32 @cleanOpStack(%struct.TYPE_7__* %53, i32* %20, i32* %13, i32 %54)
  store i32 1, i32* %16, align 4
  br label %71

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %30, %56
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 @ereport(i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %57, %48, %41, %32
  br label %22

67:                                               ; preds = %22
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = load i32, i32* @OP_OR, align 4
  %70 = call i32 @cleanOpStack(%struct.TYPE_7__* %68, i32* %20, i32* %13, i32 %69)
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %67, %52
  %72 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %16, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_stack_depth(...) #2

declare dso_local i32 @cleanOpStack(%struct.TYPE_7__*, i32*, i32*, i32) #2

declare dso_local i32 @pushOpStack(i32*, i32*, i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
