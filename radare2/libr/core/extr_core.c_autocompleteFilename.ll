; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_core.c_autocompleteFilename.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_core.c_autocompleteFilename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@R_SYS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8**, i32)* @autocompleteFilename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autocompleteFilename(i32* %0, %struct.TYPE_3__* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 62)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** %13, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i8* @r_str_new(i8* %24)
  store i8* %25, i8** %9, align 8
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @r_str_new(i8* %29)
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %105

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @r_str_word_set0(i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %105

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @r_str_word_get0(i8* %43, i32 %44)
  %46 = call i8* @r_str_new(i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %105

50:                                               ; preds = %42
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @r_str_trim_ro(i8* %51)
  store i8* %52, i8** %14, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @autocomplete_process_path(i32* %53, i8* %56, i8* %57)
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %73, label %64

64:                                               ; preds = %50
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i8**, i8*** %7, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %64, %50
  br label %105

74:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i8**, i8*** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  %83 = load i8**, i8*** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @R_SYS_DIR, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = call i8* @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %87, i32 %88, i8* %89)
  store i8* %90, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  br label %104

94:                                               ; preds = %82
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @autocomplete_process_path(i32* %95, i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %75

104:                                              ; preds = %93, %75
  br label %105

105:                                              ; preds = %104, %73, %49, %41, %34
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @free(i8* %108)
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i32 @r_str_word_set0(i8*) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @autocomplete_process_path(i32*, i8*, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
