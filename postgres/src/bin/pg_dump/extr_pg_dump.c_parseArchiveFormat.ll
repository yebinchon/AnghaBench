; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_parseArchiveFormat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_parseArchiveFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@archModeWrite = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@archNull = common dso_local global i32 0, align 4
@archModeAppend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@archCustom = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@archDirectory = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@archTar = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"invalid output format \22%s\22 specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parseArchiveFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseArchiveFormat(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @archModeWrite, align 4
  %7 = load i32*, i32** %4, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @pg_strcasecmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @pg_strcasecmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @archNull, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @archModeAppend, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %78

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @pg_strcasecmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @archCustom, align 4
  store i32 %24, i32* %5, align 4
  br label %77

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @pg_strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @archCustom, align 4
  store i32 %30, i32* %5, align 4
  br label %76

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @pg_strcasecmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @archDirectory, align 4
  store i32 %36, i32* %5, align 4
  br label %75

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @pg_strcasecmp(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @archDirectory, align 4
  store i32 %42, i32* %5, align 4
  br label %74

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @pg_strcasecmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @archNull, align 4
  store i32 %48, i32* %5, align 4
  br label %73

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @pg_strcasecmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @archNull, align 4
  store i32 %54, i32* %5, align 4
  br label %72

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @pg_strcasecmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @archTar, align 4
  store i32 %60, i32* %5, align 4
  br label %71

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = call i64 @pg_strcasecmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @archTar, align 4
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %65
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %73, %41
  br label %75

75:                                               ; preds = %74, %35
  br label %76

76:                                               ; preds = %75, %29
  br label %77

77:                                               ; preds = %76, %23
  br label %78

78:                                               ; preds = %77, %15
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
