; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_parse_tmp_evals.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_parse_tmp_evals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"e %s=%s;\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Missing '=' in e: expression (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @parse_tmp_evals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_tmp_evals(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @r_str_split(i8* %16, i8 signext 44)
  store i32 %17, i32* %8, align 4
  %18 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @free(i8* %27)
  store i8* null, i8** %3, align 8
  br label %93

29:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @r_str_word_get0(i8* %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %89

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 61)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %82

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  store i8 0, i8* %48, align 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @r_config_get(i32 %51, i8* %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %86

57:                                               ; preds = %47
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  store i8* null, i8** %3, align 8
  br label %93

68:                                               ; preds = %57
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i8* @r_str_prepend(i8* %69, i8* %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @r_config_set(i32 %76, i8* %77, i8* %79)
  %81 = load i8*, i8** %10, align 8
  store i8 61, i8* %81, align 1
  br label %85

82:                                               ; preds = %42
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %68
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %30

89:                                               ; preds = %41, %30
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %9, align 8
  store i8* %92, i8** %3, align 8
  br label %93

93:                                               ; preds = %89, %63, %24
  %94 = load i8*, i8** %3, align 8
  ret i8* %94
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_str_split(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @r_str_word_get0(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i8* @r_str_prepend(i8*, i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
