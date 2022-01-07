; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_appendContextKeyword.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_appendContextKeyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@PRETTYINDENT_LIMIT = common dso_local global i32 0, align 4
@PRETTYINDENT_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32, i32, i32)* @appendContextKeyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appendContextKeyword(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = call i64 @PRETTY_INDENT(%struct.TYPE_4__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @removeStringInfoSpaces(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @appendStringInfoChar(i32 %27, i8 signext 10)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PRETTYINDENT_LIMIT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @Max(i32 %37, i32 0)
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  br label %58

41:                                               ; preds = %19
  %42 = load i32, i32* @PRETTYINDENT_LIMIT, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PRETTYINDENT_LIMIT, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32, i32* @PRETTYINDENT_STD, align 4
  %49 = sdiv i32 %48, 2
  %50 = sdiv i32 %47, %49
  %51 = add nsw i32 %42, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* @PRETTYINDENT_LIMIT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = srem i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %41, %34
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @appendStringInfoSpaces(i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @appendStringInfoString(i32 %62, i8* %63)
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %58
  br label %82

78:                                               ; preds = %5
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @appendStringInfoString(i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %77
  ret void
}

declare dso_local i64 @PRETTY_INDENT(%struct.TYPE_4__*) #1

declare dso_local i32 @removeStringInfoSpaces(i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
