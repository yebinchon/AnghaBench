; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_inherit_exec_test.c_dscr_inherit_exec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_inherit_exec_test.c_dscr_inherit_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COUNT = common dso_local global i64 0, align 8
@DSCR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"waitpid() failed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Child didn't exit cleanly\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"exec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dscr_inherit_exec() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  store i64 0, i64* %3, align 8
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %77, %0
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @COUNT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %80

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @DSCR_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i64, i64* %3, align 8
  %20 = call i64 (...) @get_default_dscr()
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %77

23:                                               ; preds = %18
  %24 = load i64, i64* %2, align 8
  %25 = urem i64 %24, 2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @set_dscr_usr(i64 %28)
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @set_dscr(i64 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 (...) @fork()
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @waitpid(i32 %44, i32* %5, i32 0)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @WIFEXITED(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @WEXITSTATUS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %81

65:                                               ; preds = %58
  br label %75

66:                                               ; preds = %40
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @prog, align 4
  %71 = load i32, i32* @prog, align 4
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %73 = call i32 @execlp(i32 %70, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32* null)
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %22
  %78 = load i64, i64* %2, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %2, align 8
  br label %7

80:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i64 @get_default_dscr(...) #1

declare dso_local i32 @set_dscr_usr(i64) #1

declare dso_local i32 @set_dscr(i64) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @execlp(i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
