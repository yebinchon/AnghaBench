; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendShellStringNoError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendShellStringNoError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_./:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"'\22'\22'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appendShellStringNoError(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strspn(i8* %13, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @appendPQExpBufferStr(i32 %19, i8* %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %12, %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @appendPQExpBufferChar(i32 %24, i8 signext 39)
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %56, %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  store i32 0, i32* %6, align 4
  br label %56

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 39
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @appendPQExpBufferStr(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %55

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @appendPQExpBufferChar(i32 %51, i8 signext %53)
  br label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %27

59:                                               ; preds = %27
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @appendPQExpBufferChar(i32 %60, i8 signext 39)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
