; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_get_output.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@pager = common dso_local global i32 0, align 4
@F_CLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i8*, i8*, i32)* @get_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_output(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %21 = call i32 @pipe(i32* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = call i32 (...) @errexit()
  br label %25

25:                                               ; preds = %23, %6
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %17, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @F_GETFL, align 4
  %35 = call i32 @fcntl(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = load i32, i32* %18, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @F_SETFL, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @fcntl(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %17, align 4
  br label %26

49:                                               ; preds = %26
  %50 = call i64 (...) @fork()
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @STDOUT_FILENO, align 4
  %60 = call i32 @dup2(i32 %58, i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @STDERR_FILENO, align 4
  %64 = call i32 @dup2(i32 %62, i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @execlp(i8* %68, i8* %69, i8* %70, i8* %71, i32* null)
  %73 = call i32 @_exit(i32 1) #3
  unreachable

74:                                               ; preds = %49
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @waitpid(i64 %75, i32* %17, i32 0)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @fdopen(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %85, i32** %16, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = call i8* @fgets(i8* %89, i64 %90, i32* %91)
  store i8* %92, i8** %19, align 8
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @close(i32 %94)
  br label %96

96:                                               ; preds = %88, %82
  %97 = load i8*, i8** %19, align 8
  store i8* %97, i8** %7, align 8
  br label %120

98:                                               ; preds = %74
  %99 = call i64 (...) @fork()
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @STDIN_FILENO, align 4
  %106 = call i32 @dup2(i32 %104, i32 %105)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @close(i32 %108)
  %110 = load i32, i32* @pager, align 4
  %111 = load i32, i32* @F_CLI, align 4
  %112 = call i32 @spawn(i32 %110, i32* null, i32* null, i32* null, i32 %111)
  %113 = call i32 @_exit(i32 1) #3
  unreachable

114:                                              ; preds = %98
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @waitpid(i64 %115, i32* %17, i32 0)
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @close(i32 %118)
  store i8* null, i8** %7, align 8
  br label %120

120:                                              ; preds = %114, %96
  %121 = load i8*, i8** %7, align 8
  ret i8* %121
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @errexit(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i8* @fgets(i8*, i64, i32*) #1

declare dso_local i32 @spawn(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
