; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendPsqlMetaConnect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendPsqlMetaConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"database name contains a newline or carriage return: \22%s\22\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"\\connect \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"-reuse-previous=on \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendPsqlMetaConnect(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %72, %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @fprintf(i32 %24, i8* %25, i8* %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 97
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 122
  br i1 %39, label %71, label %40

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 65
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 90
  br i1 %49, label %71, label %50

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %71, label %60

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 95
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %65, %60, %55, %45, %35
  br label %72

72:                                               ; preds = %71
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  br label %9

75:                                               ; preds = %9
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = call i32 @initPQExpBuffer(%struct.TYPE_9__* %7)
  %82 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @appendConnStrVal(%struct.TYPE_9__* %7, i8* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @fmtId(i8* %89)
  %91 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %87, i8* %90)
  %92 = call i32 @termPQExpBuffer(%struct.TYPE_9__* %7)
  br label %98

93:                                               ; preds = %75
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i8* @fmtId(i8* %95)
  %97 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %94, i8* %96)
  br label %98

98:                                               ; preds = %93, %80
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = call i32 @appendPQExpBufferChar(%struct.TYPE_9__* %99, i8 signext 10)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_9__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
