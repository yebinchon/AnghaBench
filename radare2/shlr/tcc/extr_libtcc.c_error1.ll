; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_error1.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_error1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64, i32, i32 (i32, i8*)*, %struct.TYPE_6__**, %struct.TYPE_6__** }

@file = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"In file included from %s:%d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"tcc: \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i8*, i32)* @error1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error1(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2048 x i8], align 16
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %12, align 16
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @file, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %11, align 8
  br label %14

14:                                               ; preds = %28, %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 58
  br label %25

25:                                               ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %11, align 8
  br label %14

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  store %struct.TYPE_6__** %38, %struct.TYPE_6__*** %10, align 8
  br label %39

39:                                               ; preds = %56, %35
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = icmp ult %struct.TYPE_6__** %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @strcat_printf(i8* %46, i32 2048, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %50, i64 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i32 1
  store %struct.TYPE_6__** %58, %struct.TYPE_6__*** %10, align 8
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, i32, i8*, ...) @strcat_printf(i8* %65, i32 2048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %68, i64 %71)
  br label %79

73:                                               ; preds = %59
  %74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i32, i8*, ...) @strcat_printf(i8* %74, i32 2048, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %64
  br label %83

80:                                               ; preds = %32
  %81 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %82 = call i32 (i8*, i32, i8*, ...) @strcat_printf(i8* %81, i32 2048, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %88 = call i32 (i8*, i32, i8*, ...) @strcat_printf(i8* %87, i32 2048, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %92

89:                                               ; preds = %83
  %90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %91 = call i32 (i8*, i32, i8*, ...) @strcat_printf(i8* %90, i32 2048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @strcat_vprintf(i8* %93, i32 2048, i8* %94, i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32 (i32, i8*)*, i32 (i32, i8*)** %98, align 8
  %100 = icmp ne i32 (i32, i8*)* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @stderr, align 4
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %104 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  br label %114

105:                                              ; preds = %92
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32 (i32, i8*)*, i32 (i32, i8*)** %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %113 = call i32 %108(i32 %111, i8* %112)
  br label %114

114:                                              ; preds = %105, %101
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117, %114
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %117
  ret void
}

declare dso_local i32 @strcat_printf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strcat_vprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
