; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_string_modifier_check.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_string_modifier_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.r_magic = type { i32, i32, i32 }

@R_MAGIC_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"no modifiers allowed for 16-bit strings\0A\00", align 1
@REGEX_OFFSET_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"'/%c' only allowed on regex and search\0A\00", align 1
@CHAR_REGEX_OFFSET_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"missing range; defaulting to %d\0A\00", align 1
@STRING_DEFAULT_RANGE = common dso_local global i32 0, align 4
@STRING_COMPACT_BLANK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"'/%c' not allowed on regex\0A\00", align 1
@CHAR_COMPACT_BLANK = common dso_local global i32 0, align 4
@STRING_COMPACT_OPTIONAL_BLANK = common dso_local global i32 0, align 4
@CHAR_COMPACT_OPTIONAL_BLANK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"coding error: m->type=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.r_magic*)* @string_modifier_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_modifier_check(%struct.TYPE_4__* %0, %struct.r_magic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.r_magic*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.r_magic* %1, %struct.r_magic** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @R_MAGIC_CHECK, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

13:                                               ; preds = %2
  %14 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %15 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %74 [
    i32 133, label %17
    i32 132, label %17
    i32 128, label %26
    i32 131, label %26
    i32 129, label %38
    i32 130, label %51
  ]

17:                                               ; preds = %13, %13
  %18 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %19 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i32 (%struct.TYPE_4__*, i8*, ...) @file_magwarn(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %81

25:                                               ; preds = %17
  br label %80

26:                                               ; preds = %13, %13
  %27 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %28 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REGEX_OFFSET_START, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i32, i32* @CHAR_REGEX_OFFSET_START, align 4
  %36 = call i32 (%struct.TYPE_4__*, i8*, ...) @file_magwarn(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %81

37:                                               ; preds = %26
  br label %80

38:                                               ; preds = %13
  %39 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %40 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load i32, i32* @STRING_DEFAULT_RANGE, align 4
  %46 = call i32 (%struct.TYPE_4__*, i8*, ...) @file_magwarn(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @STRING_DEFAULT_RANGE, align 4
  %48 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %49 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  store i32 -1, i32* %3, align 4
  br label %81

50:                                               ; preds = %38
  br label %80

51:                                               ; preds = %13
  %52 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %53 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @STRING_COMPACT_BLANK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load i32, i32* @CHAR_COMPACT_BLANK, align 4
  %61 = call i32 (%struct.TYPE_4__*, i8*, ...) @file_magwarn(%struct.TYPE_4__* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %3, align 4
  br label %81

62:                                               ; preds = %51
  %63 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %64 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @STRING_COMPACT_OPTIONAL_BLANK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load i32, i32* @CHAR_COMPACT_OPTIONAL_BLANK, align 4
  %72 = call i32 (%struct.TYPE_4__*, i8*, ...) @file_magwarn(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %3, align 4
  br label %81

73:                                               ; preds = %62
  br label %80

74:                                               ; preds = %13
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %77 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.TYPE_4__*, i8*, ...) @file_magwarn(%struct.TYPE_4__* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %3, align 4
  br label %81

80:                                               ; preds = %73, %50, %37, %25
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %74, %69, %58, %43, %33, %22, %12
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @file_magwarn(%struct.TYPE_4__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
