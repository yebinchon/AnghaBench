; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_find_dir_in_subdirs.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_find_dir_in_subdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"searching for directories in '%s' (base '%s')\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CGROUP: cannot read directory '%s'\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@enabled_cgroup_paths = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"search for cgroups under %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"plugin:cgroups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, void (i8*)*)* @find_dir_in_subdirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dir_in_subdirs(i8* %0, i8* %1, void (i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (i8*)* %2, void (i8*)** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i32, i32* @D_CGROUP, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  br label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %31 ]
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @debug(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i8*, i8** %6, align 8
  %49 = call i32* @opendir(i8* %48)
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %185

56:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  %57 = load void (i8*)*, void (i8*)** %7, align 8
  %58 = load i8*, i8** %12, align 8
  call void %57(i8* %58)
  store %struct.dirent* null, %struct.dirent** %14, align 8
  br label %59

59:                                               ; preds = %180, %109, %56
  %60 = load i32*, i32** %13, align 8
  %61 = call %struct.dirent* @readdir(i32* %60)
  store %struct.dirent* %61, %struct.dirent** %14, align 8
  %62 = icmp ne %struct.dirent* %61, null
  br i1 %62, label %63, label %181

63:                                               ; preds = %59
  %64 = load %struct.dirent*, %struct.dirent** %14, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DT_DIR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %63
  %70 = load %struct.dirent*, %struct.dirent** %14, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.dirent*, %struct.dirent** %14, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %77, %69
  %86 = load %struct.dirent*, %struct.dirent** %14, align 8
  %87 = getelementptr inbounds %struct.dirent, %struct.dirent* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %93, label %110

93:                                               ; preds = %85
  %94 = load %struct.dirent*, %struct.dirent** %14, align 8
  %95 = getelementptr inbounds %struct.dirent, %struct.dirent* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 46
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.dirent*, %struct.dirent** %14, align 8
  %103 = getelementptr inbounds %struct.dirent, %struct.dirent* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101, %77
  br label %59

110:                                              ; preds = %101, %93, %85, %63
  %111 = load %struct.dirent*, %struct.dirent** %14, align 8
  %112 = getelementptr inbounds %struct.dirent, %struct.dirent* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DT_DIR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %180

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load i8*, i8** %12, align 8
  store i8* %120, i8** %15, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %126

126:                                              ; preds = %125, %119
  %127 = load i32, i32* @enabled_cgroup_paths, align 4
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 @simple_pattern_matches(i32 %127, i8* %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* @FILENAME_MAX, align 4
  %131 = add nsw i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = call i8* @llvm.stacksave()
  store i8* %133, i8** %17, align 8
  %134 = alloca i8, i64 %132, align 16
  store i64 %132, i64* %18, align 8
  %135 = load i32, i32* @FILENAME_MAX, align 4
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @snprintfz(i8* %134, i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* @FILENAME_MAX, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %134, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %134, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %143)
  br label %144

144:                                              ; preds = %126, %116
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %144
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.dirent*, %struct.dirent** %14, align 8
  %150 = getelementptr inbounds %struct.dirent, %struct.dirent* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strlen(i8* %151)
  %153 = add i64 %148, %152
  %154 = add i64 %153, 2
  %155 = call i8* @mallocz(i64 %154)
  store i8* %155, i8** %19, align 8
  %156 = load i8*, i8** %19, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @strcpy(i8* %156, i8* %157)
  %159 = load i8*, i8** %19, align 8
  %160 = call i32 @strcat(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i8*, i8** %19, align 8
  %162 = load %struct.dirent*, %struct.dirent** %14, align 8
  %163 = getelementptr inbounds %struct.dirent, %struct.dirent* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strcat(i8* %161, i8* %164)
  %166 = load i8*, i8** %5, align 8
  %167 = load i8*, i8** %19, align 8
  %168 = load void (i8*)*, void (i8*)** %7, align 8
  %169 = call i32 @find_dir_in_subdirs(i8* %166, i8* %167, void (i8*)* %168)
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %147
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %172, %147
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @freez(i8* %177)
  br label %179

179:                                              ; preds = %176, %144
  br label %180

180:                                              ; preds = %179, %110
  br label %59

181:                                              ; preds = %59
  %182 = load i32*, i32** %13, align 8
  %183 = call i32 @closedir(i32* %182)
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %181, %52
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @simple_pattern_matches(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @mallocz(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
