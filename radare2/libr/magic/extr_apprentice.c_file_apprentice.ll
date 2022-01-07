; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_apprentice.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_apprentice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist = type { %struct.mlist*, %struct.mlist* }

@.str = private unnamed_addr constant [6 x i8] c"MAGIC\00", align 1
@MAGICFILE = common dso_local global i8* null, align 8
@PATHSEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not find any magic files!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlist* @file_apprentice(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlist*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  %13 = call i32 (...) @init_file_tables()
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** @MAGICFILE, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @file_oomem(i32* %28, i32 %30)
  store %struct.mlist* null, %struct.mlist** %4, align 8
  br label %89

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %6, align 8
  %34 = call %struct.mlist* @malloc(i32 16)
  store %struct.mlist* %34, %struct.mlist** %12, align 8
  %35 = icmp ne %struct.mlist* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @file_oomem(i32* %39, i32 16)
  store %struct.mlist* null, %struct.mlist** %4, align 8
  br label %89

41:                                               ; preds = %32
  %42 = load %struct.mlist*, %struct.mlist** %12, align 8
  %43 = load %struct.mlist*, %struct.mlist** %12, align 8
  %44 = getelementptr inbounds %struct.mlist, %struct.mlist* %43, i32 0, i32 0
  store %struct.mlist* %42, %struct.mlist** %44, align 8
  %45 = load %struct.mlist*, %struct.mlist** %12, align 8
  %46 = getelementptr inbounds %struct.mlist, %struct.mlist* %45, i32 0, i32 1
  store %struct.mlist* %42, %struct.mlist** %46, align 8
  br label %47

47:                                               ; preds = %65, %41
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @PATHSEP, align 4
  %53 = call i8* @strchr(i8* %51, i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  store i8 0, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %75

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.mlist*, %struct.mlist** %12, align 8
  %70 = call i32 @apprentice_1(i32* %66, i8* %67, i32 %68, %struct.mlist* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @R_MAX(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %6, align 8
  br label %47

75:                                               ; preds = %64, %47
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.mlist*, %struct.mlist** %12, align 8
  %82 = call i32 @R_FREE(%struct.mlist* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @file_error(i32* %83, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mlist* null, %struct.mlist** %4, align 8
  br label %89

85:                                               ; preds = %75
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.mlist*, %struct.mlist** %12, align 8
  store %struct.mlist* %88, %struct.mlist** %4, align 8
  br label %89

89:                                               ; preds = %85, %78, %36, %27
  %90 = load %struct.mlist*, %struct.mlist** %4, align 8
  ret %struct.mlist* %90
}

declare dso_local i32 @init_file_tables(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @file_oomem(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.mlist* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @apprentice_1(i32*, i8*, i32, %struct.mlist*) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32 @R_FREE(%struct.mlist*) #1

declare dso_local i32 @file_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
