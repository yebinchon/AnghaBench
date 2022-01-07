; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_inherit_test.c_dscr_inherit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_inherit_test.c_dscr_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COUNT = common dso_local global i64 0, align 8
@DSCR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"waitpid() failed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Child didn't exit cleanly\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Kernel DSCR should be %ld but is %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"User DSCR should be %ld but is %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dscr_inherit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  %8 = call i32 (...) @getpid()
  %9 = call i32 @srand(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @set_dscr(i64 %10)
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %92, %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @COUNT, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %95

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @DSCR_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %22, %16
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
  %45 = call i32 @waitpid(i32 %44, i32* %7, i32 0)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @WIFEXITED(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @WEXITSTATUS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %96

65:                                               ; preds = %58
  br label %90

66:                                               ; preds = %40
  %67 = call i64 (...) @get_dscr()
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %73, i64 %74)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %66
  %78 = call i64 (...) @get_dscr_usr()
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %3, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @stderr, align 4
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %84, i64 %85)
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %77
  %89 = call i32 @exit(i32 0) #3
  unreachable

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %2, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %2, align 8
  br label %12

95:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @set_dscr(i64) #1

declare dso_local i32 @set_dscr_usr(i64) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @get_dscr(...) #1

declare dso_local i64 @get_dscr_usr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
