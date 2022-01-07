; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_classes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"No new class name given.\0A\00", align 1
@R_ANAL_CLASS_ERR_NONEXISTENT_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Class does not exist.\0A\00", align 1
@R_ANAL_CLASS_ERR_CLASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"A class with this name already exists.\0A\00", align 1
@help_msg_ac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @cmd_anal_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_anal_classes(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %121 [
    i32 108, label %14
    i32 32, label %22
    i32 45, label %22
    i32 110, label %22
    i32 118, label %106
    i32 98, label %111
    i32 109, label %116
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @r_anal_class_list(i32 %17, i8 signext %20)
  br label %125

22:                                               ; preds = %2, %2, %2
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i8* @r_str_trim_ro(i8* %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %125

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %125

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 32)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @r_anal_class_delete(i32 %52, i8* %53)
  br label %103

55:                                               ; preds = %43
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %61, label %96

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %95

66:                                               ; preds = %61
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 32)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i8*, i8** %7, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %66
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @r_anal_class_rename(i32 %78, i8* %79, i8* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @R_ANAL_CLASS_ERR_NONEXISTENT_CLASS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %94

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @R_ANAL_CLASS_ERR_CLASH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %94, %64
  br label %102

96:                                               ; preds = %55
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @r_anal_class_create(i32 %99, i8* %100)
  br label %102

102:                                              ; preds = %96, %95
  br label %103

103:                                              ; preds = %102, %49
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  br label %125

106:                                              ; preds = %2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i32 @cmd_anal_class_vtable(%struct.TYPE_7__* %107, i8* %109)
  br label %125

111:                                              ; preds = %2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = call i32 @cmd_anal_class_base(%struct.TYPE_7__* %112, i8* %114)
  br label %125

116:                                              ; preds = %2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = call i32 @cmd_anal_class_method(%struct.TYPE_7__* %117, i8* %119)
  br label %125

121:                                              ; preds = %2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = load i32, i32* @help_msg_ac, align 4
  %124 = call i32 @r_core_cmd_help(%struct.TYPE_7__* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %116, %111, %106, %103, %35, %29, %14
  ret void
}

declare dso_local i32 @r_anal_class_list(i32, i8 signext) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_anal_class_delete(i32, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_anal_class_rename(i32, i8*, i8*) #1

declare dso_local i32 @r_anal_class_create(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmd_anal_class_vtable(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @cmd_anal_class_base(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @cmd_anal_class_method(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
