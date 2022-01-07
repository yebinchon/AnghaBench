; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_recursively_delete_dir.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_recursively_delete_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@.str = private unnamed_addr constant [44 x i8] c"Cannot read %s directory to be deleted '%s'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DT_DIR = common dso_local global i64 0, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Deleting %s file '%s'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Cannot delete %s file '%s'\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Deleting empty directory '%s'\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Cannot delete empty directory '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recursively_delete_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @opendir(i8* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  store i32 -1, i32* %3, align 4
  br label %156

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store %struct.dirent* null, %struct.dirent** %8, align 8
  br label %28

28:                                               ; preds = %136, %133, %78, %27
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %8, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %137

32:                                               ; preds = %28
  %33 = load %struct.dirent*, %struct.dirent** %8, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DT_DIR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %32
  %39 = load %struct.dirent*, %struct.dirent** %8, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.dirent*, %struct.dirent** %8, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.dirent*, %struct.dirent** %8, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load %struct.dirent*, %struct.dirent** %8, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.dirent*, %struct.dirent** %8, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %46
  br label %28

79:                                               ; preds = %70, %62, %54, %32
  %80 = load i32, i32* @FILENAME_MAX, align 4
  %81 = add nsw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %9, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %10, align 8
  %85 = load i32, i32* @FILENAME_MAX, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.dirent*, %struct.dirent** %8, align 8
  %88 = getelementptr inbounds %struct.dirent, %struct.dirent* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @snprintfz(i8* %84, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %89)
  %91 = load %struct.dirent*, %struct.dirent** %8, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DT_DIR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %79
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @recursively_delete_dir(i8* %84, i8* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %96
  store i32 2, i32* %12, align 4
  br label %133

106:                                              ; preds = %79
  %107 = load i8*, i8** %5, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i8*, i8** %5, align 8
  br label %112

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %111 ]
  %114 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8* %84)
  %115 = call i32 @unlink(i8* %84)
  %116 = icmp eq i32 %115, -1
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i8*, i8** %5, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  br label %126

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %125 ]
  %128 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %127, i8* %84)
  br label %132

129:                                              ; preds = %112
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %129, %126
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %132, %105
  %134 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %12, align 4
  switch i32 %135, label %158 [
    i32 0, label %136
    i32 2, label %28
  ]

136:                                              ; preds = %133
  br label %28

137:                                              ; preds = %28
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @rmdir(i8* %140)
  %142 = icmp eq i32 %141, -1
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %147)
  br label %152

149:                                              ; preds = %137
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @closedir(i32* %153)
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %23
  %157 = load i32, i32* %3, align 4
  ret i32 %157

158:                                              ; preds = %133
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @info(i8*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
