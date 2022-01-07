; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/extr_utils.c_read_thread_id.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/extr_utils.c_read_thread_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_thread_id(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 112
  br i1 %17, label %18, label %70

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 46)
  store i8* %22, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @r_str_startswith(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @r_str_startswith(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  store i32 -1, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 -1, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %88

38:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %88

39:                                               ; preds = %25
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @isxdigit(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %88

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @r_str_startswith(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strtol(i8* %50, i32* null, i32 16)
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 -1, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %88

55:                                               ; preds = %45
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @isxdigit(i8 signext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %88

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @strtol(i8* %62, i32* null, i32 16)
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i64 @strtol(i8* %66, i32* null, i32 16)
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %5, align 4
  br label %88

70:                                               ; preds = %13, %4
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @r_str_startswith(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  store i32 -1, i32* %75, align 4
  store i32 0, i32* %5, align 4
  br label %88

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @isxdigit(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @strtol(i8* %83, i32* null, i32 16)
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %81, %74, %61, %60, %49, %44, %38, %35, %24
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
