; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_tasks.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"This command is disabled in sandbox mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Cannot find task\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_tasks(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %123 [
    i32 0, label %18
    i32 106, label %18
    i32 98, label %23
    i32 38, label %42
    i32 61, label %66
    i32 45, label %98
    i32 63, label %122
    i32 32, label %126
    i32 95, label %126
    i32 116, label %126
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @r_core_task_list(%struct.TYPE_18__* %19, i8 signext %21)
  br label %152

23:                                               ; preds = %2
  %24 = call i32 @r_sandbox_enable(i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %153

28:                                               ; preds = %23
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @r_num_math(i32 %31, i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @r_core_task_break(%struct.TYPE_18__* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %152

42:                                               ; preds = %2
  %43 = call i32 @r_sandbox_enable(i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %153

47:                                               ; preds = %42
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @r_num_math(i32 %50, i8* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  br label %63

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ -1, %62 ]
  %65 = call i32 @r_core_task_join(%struct.TYPE_18__* %54, i32 %57, i32 %64)
  br label %152

66:                                               ; preds = %2
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call i32 @r_num_math(i32 %69, i8* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %66
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.TYPE_17__* @r_core_task_get_incref(%struct.TYPE_18__* %76, i32 %77)
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %10, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = icmp ne %struct.TYPE_17__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @r_cons_println(i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = call i32 @r_core_task_decref(%struct.TYPE_17__* %92)
  br label %96

94:                                               ; preds = %75
  %95 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %97

97:                                               ; preds = %96, %66
  br label %152

98:                                               ; preds = %2
  %99 = call i32 @r_sandbox_enable(i32 0)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %153

103:                                              ; preds = %98
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 42
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = call i32 @r_core_task_del_all_done(%struct.TYPE_18__* %110)
  br label %121

112:                                              ; preds = %103
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = call i32 @r_num_math(i32 %116, i8* %118)
  %120 = call i32 @r_core_task_del(%struct.TYPE_18__* %113, i32 %119)
  br label %121

121:                                              ; preds = %112, %109
  br label %152

122:                                              ; preds = %2
  br label %123

123:                                              ; preds = %2, %122
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %125 = call i32 @helpCmdTasks(%struct.TYPE_18__* %124)
  br label %152

126:                                              ; preds = %2, %2, %2
  %127 = call i32 @r_sandbox_enable(i32 0)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %153

131:                                              ; preds = %126
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %136 = call %struct.TYPE_17__* @r_core_task_new(%struct.TYPE_18__* %132, i32 1, i8* %134, i32* null, %struct.TYPE_18__* %135)
  store %struct.TYPE_17__* %136, %struct.TYPE_17__** %11, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %138 = icmp ne %struct.TYPE_17__* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %152

140:                                              ; preds = %131
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 116
  %146 = zext i1 %145 to i32
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %151 = call i32 @r_core_task_enqueue(%struct.TYPE_18__* %149, %struct.TYPE_17__* %150)
  br label %152

152:                                              ; preds = %140, %139, %123, %121, %97, %63, %41, %18
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %129, %101, %45, %26
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @r_core_task_list(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @r_sandbox_enable(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i32 @r_core_task_break(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @r_core_task_join(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @r_core_task_get_incref(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @r_cons_println(i32) #1

declare dso_local i32 @r_core_task_decref(%struct.TYPE_17__*) #1

declare dso_local i32 @r_core_task_del_all_done(%struct.TYPE_18__*) #1

declare dso_local i32 @r_core_task_del(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @helpCmdTasks(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @r_core_task_new(%struct.TYPE_18__*, i32, i8*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @r_core_task_enqueue(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
