; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_directory_list_generator.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_directory_list_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.file_list = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i32 }

@directory_list_generator.zebra_classes = internal global [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"folder\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coro*, i8*)* @directory_list_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_list_generator(%struct.coro* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coro*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file_list*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  store %struct.coro* %0, %struct.coro** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.file_list*
  store %struct.file_list* %13, %struct.file_list** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.file_list*, %struct.file_list** %6, align 8
  %15 = getelementptr inbounds %struct.file_list, %struct.file_list* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @opendir(i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %163

21:                                               ; preds = %2
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @dirfd(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %160

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %158, %83, %48, %40, %27
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %7, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %159

32:                                               ; preds = %28
  %33 = load %struct.dirent*, %struct.dirent** %7, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %28

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.dirent*, %struct.dirent** %7, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @fstatat(i32 %42, i8* %45, %struct.stat* %11, i32 0)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %28

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @S_ISDIR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.file_list*, %struct.file_list** %6, align 8
  %56 = getelementptr inbounds %struct.file_list, %struct.file_list* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.file_list*, %struct.file_list** %6, align 8
  %59 = getelementptr inbounds %struct.file_list, %struct.file_list* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.file_list*, %struct.file_list** %6, align 8
  %62 = getelementptr inbounds %struct.file_list, %struct.file_list* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 8
  br label %85

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISREG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.file_list*, %struct.file_list** %6, align 8
  %71 = getelementptr inbounds %struct.file_list, %struct.file_list* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %72, align 8
  %73 = load %struct.file_list*, %struct.file_list** %6, align 8
  %74 = getelementptr inbounds %struct.file_list, %struct.file_list* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %75, align 8
  %76 = load %struct.dirent*, %struct.dirent** %7, align 8
  %77 = getelementptr inbounds %struct.dirent, %struct.dirent* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @lwan_determine_mime_type_for_file_name(i8* %78)
  %80 = load %struct.file_list*, %struct.file_list** %6, align 8
  %81 = getelementptr inbounds %struct.file_list, %struct.file_list* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i8* %79, i8** %82, align 8
  br label %84

83:                                               ; preds = %64
  br label %28

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %54
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 1024
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.file_list*, %struct.file_list** %6, align 8
  %93 = getelementptr inbounds %struct.file_list, %struct.file_list* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 8
  %95 = load %struct.file_list*, %struct.file_list** %6, align 8
  %96 = getelementptr inbounds %struct.file_list, %struct.file_list* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %97, align 8
  br label %138

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 1048576
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 1024
  %106 = load %struct.file_list*, %struct.file_list** %6, align 8
  %107 = getelementptr inbounds %struct.file_list, %struct.file_list* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load %struct.file_list*, %struct.file_list** %6, align 8
  %110 = getelementptr inbounds %struct.file_list, %struct.file_list* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %111, align 8
  br label %137

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1073741824
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, 1048576
  %120 = load %struct.file_list*, %struct.file_list** %6, align 8
  %121 = getelementptr inbounds %struct.file_list, %struct.file_list* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 8
  %123 = load %struct.file_list*, %struct.file_list** %6, align 8
  %124 = getelementptr inbounds %struct.file_list, %struct.file_list* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %125, align 8
  br label %136

126:                                              ; preds = %112
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 1073741824
  %130 = load %struct.file_list*, %struct.file_list** %6, align 8
  %131 = getelementptr inbounds %struct.file_list, %struct.file_list* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load %struct.file_list*, %struct.file_list** %6, align 8
  %134 = getelementptr inbounds %struct.file_list, %struct.file_list* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %135, align 8
  br label %136

136:                                              ; preds = %126, %116
  br label %137

137:                                              ; preds = %136, %102
  br label %138

138:                                              ; preds = %137, %89
  %139 = load %struct.dirent*, %struct.dirent** %7, align 8
  %140 = getelementptr inbounds %struct.dirent, %struct.dirent* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.file_list*, %struct.file_list** %6, align 8
  %143 = getelementptr inbounds %struct.file_list, %struct.file_list* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 5
  store i8* %141, i8** %144, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  %147 = srem i32 %145, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [2 x i8*], [2 x i8*]* @directory_list_generator.zebra_classes, i64 0, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.file_list*, %struct.file_list** %6, align 8
  %152 = getelementptr inbounds %struct.file_list, %struct.file_list* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 6
  store i8* %150, i8** %153, align 8
  %154 = load %struct.coro*, %struct.coro** %4, align 8
  %155 = call i64 @coro_yield(%struct.coro* %154, i32 1)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %138
  br label %159

158:                                              ; preds = %138
  br label %28

159:                                              ; preds = %157, %28
  br label %160

160:                                              ; preds = %159, %26
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @closedir(i32* %161)
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %160, %20
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @lwan_determine_mime_type_for_file_name(i8*) #1

declare dso_local i64 @coro_yield(%struct.coro*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
