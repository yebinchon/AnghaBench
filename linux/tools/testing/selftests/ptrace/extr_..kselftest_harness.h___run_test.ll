; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_..kselftest_harness.h___run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_..kselftest_harness.h___run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__test_metadata = type { i32, i8*, i32, i32, i32 (%struct.__test_metadata*)*, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"[ RUN      ] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ERROR SPAWNING TEST CHILD\0A\00", align 1
@TH_LOG_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"%s: Test exited normally instead of by signal (code: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Test failed at step #%d\0A\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: Test terminated by assertion\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: Test terminated unexpectedly by signal %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: Test ended in some other way [%u]\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"[     %4s ] %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__run_test(%struct.__test_metadata* %0) #0 {
  %2 = alloca %struct.__test_metadata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.__test_metadata* %0, %struct.__test_metadata** %2, align 8
  %5 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %6 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %8 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %14 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @alarm(i32 %15)
  %17 = call i64 (...) @fork()
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %23 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %141

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %29 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %28, i32 0, i32 4
  %30 = load i32 (%struct.__test_metadata*)*, i32 (%struct.__test_metadata*)** %29, align 8
  %31 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %32 = call i32 %30(%struct.__test_metadata* %31)
  %33 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %34 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %42

38:                                               ; preds = %27
  %39 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %40 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ 0, %37 ], [ %41, %38 ]
  %44 = call i32 @_exit(i32 %43) #3
  unreachable

45:                                               ; preds = %24
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @waitpid(i64 %46, i32* %4, i32 0)
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @WIFEXITED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %45
  %52 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %53 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @WEXITSTATUS(i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ %61, %56 ], [ 0, %62 ]
  %65 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %66 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %68 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load i32, i32* @TH_LOG_STREAM, align 4
  %73 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %74 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @WEXITSTATUS(i32 %76)
  %78 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %77)
  br label %93

79:                                               ; preds = %63
  %80 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %81 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @TH_LOG_STREAM, align 4
  %86 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %87 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @WEXITSTATUS(i32 %89)
  %91 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %71
  br label %139

94:                                               ; preds = %45
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @WIFSIGNALED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %100 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @WTERMSIG(i32 %101)
  %103 = load i32, i32* @SIGABRT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @TH_LOG_STREAM, align 4
  %107 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %108 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %109)
  br label %130

111:                                              ; preds = %98
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @WTERMSIG(i32 %112)
  %114 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %115 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %120 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %129

121:                                              ; preds = %111
  %122 = load i32, i32* @TH_LOG_STREAM, align 4
  %123 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %124 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @WTERMSIG(i32 %126)
  %128 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %125, i32 %127)
  br label %129

129:                                              ; preds = %121, %118
  br label %130

130:                                              ; preds = %129, %105
  br label %138

131:                                              ; preds = %94
  %132 = load i32, i32* @TH_LOG_STREAM, align 4
  %133 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %134 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %130
  br label %139

139:                                              ; preds = %138, %93
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140, %20
  %142 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %143 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %148 = load %struct.__test_metadata*, %struct.__test_metadata** %2, align 8
  %149 = getelementptr inbounds %struct.__test_metadata, %struct.__test_metadata* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %147, i8* %150)
  %152 = call i32 @alarm(i32 0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
