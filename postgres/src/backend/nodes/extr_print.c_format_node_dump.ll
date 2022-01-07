; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_print.c_format_node_dump.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_print.c_format_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@LINELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_node_dump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [79 x i8], align 16
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i32 @initStringInfo(%struct.TYPE_4__* %4)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %87, %1
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %32, %9
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 78
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %13, %10
  %22 = phi i1 [ false, %10 ], [ %20, %13 ]
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %30
  store i8 %28, i8* %31, align 1
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %10

37:                                               ; preds = %21
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %93

46:                                               ; preds = %37
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %87

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %72, %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %75

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  br label %60

75:                                               ; preds = %70, %60
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %78, %75
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %89
  store i8 0, i8* %90, align 1
  %91 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %92 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %91)
  br label %9

93:                                               ; preds = %45
  %94 = load i32, i32* %6, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %101 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  ret i8* %104
}

declare dso_local i32 @initStringInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
