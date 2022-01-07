; ModuleID = '/home/carl/AnghaBench/radare2/shlr/bochs/src/extr_libbochs.c_bochs_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/bochs/src/extr_libbochs.c_bochs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@SIZE_BUF = common dso_local global i32 0, align 4
@lpTmpBuffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Error: allocating pipe for child input redirect\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error: allocating pipe for child output redirect\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error: redirecting stdin\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error: redirecting stdout\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Error: redirecting stderr\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"execl\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"boch_open failed\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Waiting for bochs...\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Ready.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@CREATE_NEW_CONSOLE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@PIPE_READ = common dso_local global i64 0, align 8
@PIPE_WRITE = common dso_local global i64 0, align 8
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bochs_open(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @SIZE_BUF, align 4
  %13 = call i8* @malloc(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

21:                                               ; preds = %3
  %22 = load i32, i32* @SIZE_BUF, align 4
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** @lpTmpBuffer, align 8
  %24 = load i8*, i8** @lpTmpBuffer, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @R_FREE(i8* %29)
  store i32 0, i32* %4, align 4
  br label %159

31:                                               ; preds = %21
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %33 = call i64 @pipe(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @eprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

37:                                               ; preds = %31
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %39 = call i64 @pipe(i32* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

49:                                               ; preds = %37
  %50 = call i32 (...) @fork()
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 0, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @STDIN_FILENO, align 4
  %57 = call i32 @dup2(i32 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

61:                                               ; preds = %53
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @STDOUT_FILENO, align 4
  %65 = call i32 @dup2(i32 %63, i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

69:                                               ; preds = %61
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @STDERR_FILENO, align 4
  %73 = call i32 @dup2(i32 %71, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

77:                                               ; preds = %69
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @close(i32 %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @close(i32 %85)
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @execl(i8* %90, i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %92, i32* null)
  %94 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %49
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %96
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @close(i32 %101)
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @close(i32 %104)
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** @lpTmpBuffer, align 8
  %109 = call i32 @read(i32 %107, i8* %108, i32 1)
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = call i32 @eprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = call i32 @bochs_close(%struct.TYPE_9__* %113)
  br label %141

115:                                              ; preds = %99
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = call i32 @bochs_reset_buffer(%struct.TYPE_9__* %126)
  %128 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = call i64 @bochs_wait(%struct.TYPE_9__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = call i32 @eprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  store i32 1, i32* %8, align 4
  br label %140

137:                                              ; preds = %115
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = call i32 @bochs_close(%struct.TYPE_9__* %138)
  br label %140

140:                                              ; preds = %137, %132
  br label %141

141:                                              ; preds = %140, %111
  br label %156

142:                                              ; preds = %96
  %143 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @close(i32 %145)
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @close(i32 %148)
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @close(i32 %151)
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @close(i32 %154)
  br label %156

156:                                              ; preds = %142, %141
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %75, %67, %59, %41, %35, %26, %20
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @bochs_close(%struct.TYPE_9__*) #1

declare dso_local i32 @bochs_reset_buffer(%struct.TYPE_9__*) #1

declare dso_local i64 @bochs_wait(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
