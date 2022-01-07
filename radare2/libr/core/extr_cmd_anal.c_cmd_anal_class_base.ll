; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_class_base.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_class_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@R_ANAL_CLASS_ERR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"No class name given.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No base id given.\0A\00", align 1
@help_msg_ac = common dso_local global i32 0, align 4
@R_ANAL_CLASS_ERR_NONEXISTENT_CLASS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Class does not exist.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @cmd_anal_class_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_anal_class_base(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i64, i64* @R_ANAL_CLASS_ERR_SUCCESS, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %112 [
    i32 32, label %18
    i32 45, label %18
  ]

18:                                               ; preds = %2, %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i8* @r_str_trim_ro(i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %122

27:                                               ; preds = %18
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %116

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 32)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45, %42
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @r_anal_class_list_bases(i32 %57, i8* %58)
  br label %62

60:                                               ; preds = %50
  %61 = call i32 @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  br label %116

65:                                               ; preds = %45
  %66 = load i8*, i8** %9, align 8
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 32)
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i8, i8* %6, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i64 @r_anal_class_base_delete(i32 %80, i8* %81, i8* %82)
  store i64 %83, i64* %5, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @free(i8* %84)
  br label %116

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i8* null, i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 @r_num_get(i32 %96, i8* %98)
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  br label %101

101:                                              ; preds = %93, %86
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @r_anal_class_base_set(i32 %104, i8* %105, %struct.TYPE_7__* %11)
  store i64 %106, i64* %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @free(i8* %110)
  br label %116

112:                                              ; preds = %2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = load i32, i32* @help_msg_ac, align 4
  %115 = call i32 @r_core_cmd_help(%struct.TYPE_6__* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %101, %77, %62, %32
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @R_ANAL_CLASS_ERR_NONEXISTENT_CLASS, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %25, %120, %116
  ret void
}

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_anal_class_list_bases(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @r_anal_class_base_delete(i32, i8*, i8*) #1

declare dso_local i32 @r_num_get(i32, i8*) #1

declare dso_local i64 @r_anal_class_base_set(i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
