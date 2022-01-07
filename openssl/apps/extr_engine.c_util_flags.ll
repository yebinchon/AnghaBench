; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_engine.c_util_flags.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_engine.c_util_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%s%s(input flags): \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<no flags>\0A\00", align 1
@ENGINE_CMD_FLAG_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"[Internal] \00", align 1
@ENGINE_CMD_FLAG_NUMERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"NUMERIC\00", align 1
@ENGINE_CMD_FLAG_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@ENGINE_CMD_FLAG_NO_INPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"NO_INPUT\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"<0x%04X>\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"  <illegal flags!>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @util_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @util_flags(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %98

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ENGINE_CMD_FLAG_INTERNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ENGINE_CMD_FLAG_NUMERIC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ENGINE_CMD_FLAG_STRING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ENGINE_CMD_FLAG_NO_INPUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ENGINE_CMD_FLAG_NUMERIC, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @ENGINE_CMD_FLAG_STRING, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* @ENGINE_CMD_FLAG_NO_INPUT, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* @ENGINE_CMD_FLAG_INTERNAL, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %63
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %16
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
