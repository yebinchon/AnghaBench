; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_format_function_arguments_old.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_format_function_arguments_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@zeroAsOpaque = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"INOUT \00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"bogus value in proargmodes array\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_10__*, i32, i8**, i8**, i8**)* @format_function_arguments_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_function_arguments_old(i32* %0, %struct.TYPE_10__* %1, i32 %2, i8** %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %19 = call i32 @initPQExpBuffer(%struct.TYPE_9__* %13)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @fmtId(i8* %23)
  %25 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @appendPQExpBuffer(%struct.TYPE_9__* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %115, %6
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %118

30:                                               ; preds = %26
  %31 = load i8**, i8*** %10, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8**, i8*** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atooid(i8* %38)
  br label %48

40:                                               ; preds = %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = phi i32 [ %39, %33 ], [ %47, %40 ]
  store i32 %49, i32* %15, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @zeroAsOpaque, align 4
  %53 = call i8* @getFormattedTypeName(i32* %50, i32 %51, i32 %52)
  store i8* %53, i8** %16, align 8
  %54 = load i8**, i8*** %11, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load i8**, i8*** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %68 [
    i32 130, label %65
    i32 128, label %66
    i32 129, label %67
  ]

65:                                               ; preds = %56
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %70

66:                                               ; preds = %56
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %70

67:                                               ; preds = %56
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %70

68:                                               ; preds = %56
  %69 = call i32 @pg_log_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %70

70:                                               ; preds = %68, %67, %66, %65
  br label %72

71:                                               ; preds = %48
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i8**, i8*** %12, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i8**, i8*** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi i8* [ %80, %75 ], [ null, %81 ]
  store i8* %83, i8** %18, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i8*, i8** %18, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i8* null, i8** %18, align 8
  br label %93

93:                                               ; preds = %92, %86, %82
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %98 = load i8*, i8** %17, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i8*, i8** %18, align 8
  %103 = call i8* @fmtId(i8* %102)
  br label %105

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi i8* [ %103, %101 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %104 ]
  %107 = load i8*, i8** %18, align 8
  %108 = icmp ne i8* %107, null
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %111 = load i8*, i8** %16, align 8
  %112 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @appendPQExpBuffer(%struct.TYPE_9__* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %97, i8* %98, i8* %106, i8* %110, i8* %111)
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 @free(i8* %113)
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %26

118:                                              ; preds = %26
  %119 = call i32 @appendPQExpBufferChar(%struct.TYPE_9__* %13, i8 signext 41)
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  ret i8* %121
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_9__*, i8*, i8*, ...) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @atooid(i8*) #1

declare dso_local i8* @getFormattedTypeName(i32*, i32, i32) #1

declare dso_local i32 @pg_log_warning(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_9__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
