; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_core.c_autocomplete_pfele.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_core.c_autocomplete_pfele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"pf%s.%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i8*, i32, i8*)* @autocomplete_pfele to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autocomplete_pfele(%struct.TYPE_5__* %0, i32* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @sdb_get(i32 %28, i8* %29, i32* null)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %85

33:                                               ; preds = %6
  %34 = load i8*, i8** %16, align 8
  %35 = call i32 @r_str_word_set0_stack(i8* %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %84

38:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %80, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i8*, i8** %16, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i8* @r_str_word_get0(i8* %44, i32 %45)
  store i8* %46, i8** %18, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 40)
  store i8* %48, i8** %19, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 41)
  store i8* %50, i8** %20, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i8*, i8** %20, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %19, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %18, align 8
  %59 = load i8*, i8** %20, align 8
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %56, %53, %43
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @strncmp(i8* %64, i8* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %63, %60
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = call i8* @r_str_newf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %70, i8* %71, i8* %72)
  store i8* %73, i8** %21, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i8*, i8** %21, align 8
  %76 = call i32 @r_line_completion_push(i32* %74, i8* %75)
  %77 = load i8*, i8** %21, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %69, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %39

83:                                               ; preds = %39
  br label %84

84:                                               ; preds = %83, %33
  br label %85

85:                                               ; preds = %84, %6
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32, i32* %14, align 4
  ret i32 %88
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sdb_get(i32, i8*, i32*) #1

declare dso_local i32 @r_str_word_set0_stack(i8*) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @r_line_completion_push(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
