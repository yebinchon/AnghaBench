; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_get_chart_name.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_get_chart_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i32, i32, i64, i32 }

@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"looking for the name of cgroup '%s' with chart id '%s' and title '%s'\00", align 1
@CGROUP_CHARTID_LINE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"exec %s '%s'\00", align 1
@cgroups_rename_script = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"executing command \22%s\22 for cgroup '%s'\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cgroup '%s' should be renamed to '%s'\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"cgroup '%s' disabled based due to rename command output\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CGROUP: cannot popen(\22%s\22, \22r\22).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @cgroup_get_chart_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_get_chart_name(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %11 = load i32, i32* @D_CGROUP, align 4
  %12 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %13 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %18 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i8*, ...) @debug(i32 %11, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %22)
  %24 = load i32, i32* @CGROUP_CHARTID_LINE_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %4, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %5, align 8
  %29 = load i32, i32* @CGROUP_CHARTID_LINE_MAX, align 4
  %30 = load i32, i32* @cgroups_rename_script, align 4
  %31 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %32 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snprintfz(i8* %28, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @D_CGROUP, align 4
  %36 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %37 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i8*, ...) @debug(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %38)
  %40 = call i32* @mypopen(i8* %28, i32* %3)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %141

43:                                               ; preds = %1
  %44 = load i32, i32* @CGROUP_CHARTID_LINE_MAX, align 4
  %45 = add nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %7, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %8, align 8
  %49 = load i32, i32* @CGROUP_CHARTID_LINE_MAX, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i8* @fgets(i8* %48, i32 %49, i32* %50)
  store i8* %51, i8** %9, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @mypclose(i32* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %139

57:                                               ; preds = %43
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %139

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 10
  br i1 %66, label %67, label %139

67:                                               ; preds = %62
  %68 = load i32, i32* @D_CGROUP, align 4
  %69 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %70 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 (i32, i8*, i8*, ...) @debug(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i8*, i8** %9, align 8
  %77 = call i8* @trim(i8* %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %138

80:                                               ; preds = %67
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %88 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %106

89:                                               ; preds = %80
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 3
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32, i32* @D_CGROUP, align 4
  %97 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %98 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 (i32, i8*, i8*, ...) @debug(i32 %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %104 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %95, %89
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %108 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 2
  %111 = zext i1 %110 to i32
  %112 = call i64 @likely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %106
  %115 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %116 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @freez(i32 %117)
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @cgroup_title_strdupz(i8* %119)
  %121 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %122 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %124 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @freez(i32 %125)
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @cgroup_chart_id_strdupz(i8* %127)
  %129 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %130 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %132 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @simple_hash(i32 %133)
  %135 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %136 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %114, %106
  br label %138

138:                                              ; preds = %137, %67
  br label %139

139:                                              ; preds = %138, %62, %57, %43
  %140 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %140)
  br label %143

141:                                              ; preds = %1
  %142 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  br label %143

143:                                              ; preds = %141, %139
  %144 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i32) #1

declare dso_local i32* @mypopen(i8*, i32*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @mypclose(i32*, i32) #1

declare dso_local i8* @trim(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @freez(i32) #1

declare dso_local i32 @cgroup_title_strdupz(i8*) #1

declare dso_local i32 @cgroup_chart_id_strdupz(i8*) #1

declare dso_local i32 @simple_hash(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
