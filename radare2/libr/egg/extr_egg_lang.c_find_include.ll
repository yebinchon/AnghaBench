; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_find_include.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_find_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_EGG_INCDIR_ENV = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @find_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_include(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** @R_EGG_INCDIR_ENV, align 8
  %14 = call i8* @r_sys_getenv(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 36
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i8* @r_sys_getenv(i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  br label %33

31:                                               ; preds = %23
  %32 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i8* [ %30, %29 ], [ %32, %31 ]
  store i8* %34, i8** %6, align 8
  br label %44

35:                                               ; preds = %18
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strdup(i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @free(i8* %41)
  store i8* null, i8** %3, align 8
  br label %102

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %94

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 58)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %86, %47
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i8*, i8** %11, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i8* (i32*, i8*, i8*, i8*, ...) @r_str_appendf(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* (i32*, i8*, i8*, i8*, ...) @r_str_appendf(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %66, i8* %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 @r_file_exists(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i8*, i8** %12, align 8
  store i8* %79, i8** %3, align 8
  br label %102

80:                                               ; preds = %59
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %91

86:                                               ; preds = %80
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 58)
  store i8* %90, i8** %11, align 8
  br label %51

91:                                               ; preds = %85, %51
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @free(i8* %92)
  br label %98

94:                                               ; preds = %44
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i8* (i32*, i8*, i8*, i8*, ...) @r_str_appendf(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %96)
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %98, %72, %40
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_appendf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @r_file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
