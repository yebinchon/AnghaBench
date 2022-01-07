; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_assign_target_to_pid.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_assign_target_to_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i64, i64, i32, i64, %struct.target*, i32, i64, i64, %struct.target* }
%struct.pid_stat = type { %struct.target*, i32*, i64 }

@targets_assignment_counter = common dso_local global i32 0, align 4
@apps_groups_root_target = common dso_local global %struct.target* null, align 8
@proc_pid_cmdline_is_needed = common dso_local global i64 0, align 8
@debug_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s linked to target %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_stat*)* @assign_target_to_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_target_to_pid(%struct.pid_stat* %0) #0 {
  %2 = alloca %struct.pid_stat*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.target*, align 8
  store %struct.pid_stat* %0, %struct.pid_stat** %2, align 8
  %6 = load i32, i32* @targets_assignment_counter, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @targets_assignment_counter, align 4
  %8 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %9 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @simple_hash(i32* %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %13 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @strlen(i32* %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.target*, %struct.target** @apps_groups_root_target, align 8
  store %struct.target* %16, %struct.target** %5, align 8
  br label %17

17:                                               ; preds = %174, %1
  %18 = load %struct.target*, %struct.target** %5, align 8
  %19 = icmp ne %struct.target* %18, null
  br i1 %19, label %20, label %178

20:                                               ; preds = %17
  %21 = load %struct.target*, %struct.target** %5, align 8
  %22 = getelementptr inbounds %struct.target, %struct.target* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = load %struct.target*, %struct.target** %5, align 8
  %27 = getelementptr inbounds %struct.target, %struct.target* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load %struct.target*, %struct.target** %5, align 8
  %32 = getelementptr inbounds %struct.target, %struct.target* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.target*, %struct.target** %5, align 8
  %38 = getelementptr inbounds %struct.target, %struct.target* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %41 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @strcmp(i32 %39, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %127

45:                                               ; preds = %36, %30, %25, %20
  %46 = load %struct.target*, %struct.target** %5, align 8
  %47 = getelementptr inbounds %struct.target, %struct.target* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.target*, %struct.target** %5, align 8
  %52 = getelementptr inbounds %struct.target, %struct.target* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load %struct.target*, %struct.target** %5, align 8
  %57 = getelementptr inbounds %struct.target, %struct.target* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %60 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.target*, %struct.target** %5, align 8
  %63 = getelementptr inbounds %struct.target, %struct.target* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @strncmp(i32 %58, i32* %61, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %127

67:                                               ; preds = %55, %50, %45
  %68 = load %struct.target*, %struct.target** %5, align 8
  %69 = getelementptr inbounds %struct.target, %struct.target* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %67
  %73 = load %struct.target*, %struct.target** %5, align 8
  %74 = getelementptr inbounds %struct.target, %struct.target* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.target*, %struct.target** %5, align 8
  %80 = getelementptr inbounds %struct.target, %struct.target* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp uge i64 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.target*, %struct.target** %5, align 8
  %85 = getelementptr inbounds %struct.target, %struct.target* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %88 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load %struct.target*, %struct.target** %5, align 8
  %92 = getelementptr inbounds %struct.target, %struct.target* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = call i32 @strcmp(i32 %86, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %83, %77, %72, %67
  %99 = load i64, i64* @proc_pid_cmdline_is_needed, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = load %struct.target*, %struct.target** %5, align 8
  %103 = getelementptr inbounds %struct.target, %struct.target* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load %struct.target*, %struct.target** %5, align 8
  %108 = getelementptr inbounds %struct.target, %struct.target* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %113 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %118 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.target*, %struct.target** %5, align 8
  %121 = getelementptr inbounds %struct.target, %struct.target* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @strstr(i64 %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %116, %111, %106, %101, %98
  %126 = phi i1 [ false, %111 ], [ false, %106 ], [ false, %101 ], [ false, %98 ], [ %124, %116 ]
  br label %127

127:                                              ; preds = %125, %83, %55, %36
  %128 = phi i1 [ true, %83 ], [ true, %55 ], [ true, %36 ], [ %126, %125 ]
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %173

132:                                              ; preds = %127
  %133 = load %struct.target*, %struct.target** %5, align 8
  %134 = getelementptr inbounds %struct.target, %struct.target* %133, i32 0, i32 4
  %135 = load %struct.target*, %struct.target** %134, align 8
  %136 = icmp ne %struct.target* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.target*, %struct.target** %5, align 8
  %139 = getelementptr inbounds %struct.target, %struct.target* %138, i32 0, i32 4
  %140 = load %struct.target*, %struct.target** %139, align 8
  %141 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %142 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %141, i32 0, i32 0
  store %struct.target* %140, %struct.target** %142, align 8
  br label %147

143:                                              ; preds = %132
  %144 = load %struct.target*, %struct.target** %5, align 8
  %145 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %146 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %145, i32 0, i32 0
  store %struct.target* %144, %struct.target** %146, align 8
  br label %147

147:                                              ; preds = %143, %137
  %148 = load i64, i64* @debug_enabled, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %147
  %151 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %152 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %151, i32 0, i32 0
  %153 = load %struct.target*, %struct.target** %152, align 8
  %154 = icmp ne %struct.target* %153, null
  br i1 %154, label %155, label %172

155:                                              ; preds = %150
  %156 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %157 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %156, i32 0, i32 0
  %158 = load %struct.target*, %struct.target** %157, align 8
  %159 = getelementptr inbounds %struct.target, %struct.target* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %155, %147
  %163 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %164 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.pid_stat*, %struct.pid_stat** %2, align 8
  %167 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %166, i32 0, i32 0
  %168 = load %struct.target*, %struct.target** %167, align 8
  %169 = getelementptr inbounds %struct.target, %struct.target* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @debug_log_int(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %165, i32 %170)
  br label %172

172:                                              ; preds = %162, %155, %150
  br label %178

173:                                              ; preds = %127
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.target*, %struct.target** %5, align 8
  %176 = getelementptr inbounds %struct.target, %struct.target* %175, i32 0, i32 8
  %177 = load %struct.target*, %struct.target** %176, align 8
  store %struct.target* %177, %struct.target** %5, align 8
  br label %17

178:                                              ; preds = %172, %17
  ret void
}

declare dso_local i64 @simple_hash(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i32, i32*) #1

declare dso_local i32 @strncmp(i32, i32*, i64) #1

declare dso_local i64 @strstr(i64, i32) #1

declare dso_local i32 @debug_log_int(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
