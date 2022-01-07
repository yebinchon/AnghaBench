; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_copydir.c_copydir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_copydir.c_copydir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not create directory \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@enableFsync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copydir(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = mul nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = mul nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @MakePGDirectory(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 (...) @errcode_for_file_access()
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @ereport(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i8*, i8** %4, align 8
  %35 = call i32* @AllocateDir(i8* %34)
  store i32* %35, i32** %7, align 8
  br label %36

36:                                               ; preds = %93, %54, %33
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call %struct.dirent* @ReadDir(i32* %37, i8* %38)
  store %struct.dirent* %39, %struct.dirent** %8, align 8
  %40 = icmp ne %struct.dirent* %39, null
  br i1 %40, label %41, label %94

41:                                               ; preds = %36
  %42 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %43 = load %struct.dirent*, %struct.dirent** %8, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load %struct.dirent*, %struct.dirent** %8, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %41
  br label %36

55:                                               ; preds = %48
  %56 = trunc i64 %17 to i32
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.dirent*, %struct.dirent** %8, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @snprintf(i8* %19, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %60)
  %62 = trunc i64 %22 to i32
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.dirent*, %struct.dirent** %8, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @snprintf(i8* %23, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %63, i8* %66)
  %68 = call i64 @lstat(i8* %19, %struct.stat* %12)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load i32, i32* @ERROR, align 4
  %72 = call i32 (...) @errcode_for_file_access()
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %74 = call i32 @ereport(i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %70, %55
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @S_ISDIR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @copydir(i8* %19, i8* %23, i32 1)
  br label %84

84:                                               ; preds = %83, %80
  br label %93

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISREG(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @copy_file(i8* %19, i8* %23)
  br label %92

92:                                               ; preds = %90, %85
  br label %93

93:                                               ; preds = %92, %84
  br label %36

94:                                               ; preds = %36
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @FreeDir(i32* %95)
  %97 = load i32, i32* @enableFsync, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 1, i32* %13, align 4
  br label %148

100:                                              ; preds = %94
  %101 = load i8*, i8** %5, align 8
  %102 = call i32* @AllocateDir(i8* %101)
  store i32* %102, i32** %7, align 8
  br label %103

103:                                              ; preds = %142, %120, %100
  %104 = load i32*, i32** %7, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call %struct.dirent* @ReadDir(i32* %104, i8* %105)
  store %struct.dirent* %106, %struct.dirent** %8, align 8
  %107 = icmp ne %struct.dirent* %106, null
  br i1 %107, label %108, label %143

108:                                              ; preds = %103
  %109 = load %struct.dirent*, %struct.dirent** %8, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.dirent*, %struct.dirent** %8, align 8
  %116 = getelementptr inbounds %struct.dirent, %struct.dirent* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108
  br label %103

121:                                              ; preds = %114
  %122 = trunc i64 %22 to i32
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.dirent*, %struct.dirent** %8, align 8
  %125 = getelementptr inbounds %struct.dirent, %struct.dirent* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @snprintf(i8* %23, i32 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %123, i8* %126)
  %128 = call i64 @lstat(i8* %23, %struct.stat* %14)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %121
  %131 = load i32, i32* @ERROR, align 4
  %132 = call i32 (...) @errcode_for_file_access()
  %133 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  %134 = call i32 @ereport(i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %130, %121
  %136 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @S_ISREG(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 @fsync_fname(i8* %23, i32 0)
  br label %142

142:                                              ; preds = %140, %135
  br label %103

143:                                              ; preds = %103
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @FreeDir(i32* %144)
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @fsync_fname(i8* %146, i32 1)
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %99
  %149 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %13, align 4
  switch i32 %150, label %152 [
    i32 0, label %151
    i32 1, label %151
  ]

151:                                              ; preds = %148, %148
  ret void

152:                                              ; preds = %148
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MakePGDirectory(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @copy_file(i8*, i8*) #2

declare dso_local i32 @FreeDir(i32*) #2

declare dso_local i32 @fsync_fname(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
