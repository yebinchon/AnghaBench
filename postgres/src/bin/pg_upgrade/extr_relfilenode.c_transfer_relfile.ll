; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_relfilenode.c_transfer_relfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_relfilenode.c_transfer_relfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32 }
%struct.stat = type { i64 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%s/%u/%u%s%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"error while checking for file existence \22%s.%s\22 (\22%s\22 to \22%s\22): %s\0A\00", align 1
@PG_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"_vm\00", align 1
@PG_VERBOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"rewriting \22%s\22 to \22%s\22\0A\00", align 1
@user_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"cloning \22%s\22 to \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"copying \22%s\22 to \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"linking \22%s\22 to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32)* @transfer_relfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_relfile(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [65 x i8], align 16
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %150, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %25, align 16
  br label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %27, i32 65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = trunc i64 %15 to i32
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %37, i32 %40, i8* %43, i8* %44, i8* %45)
  %47 = trunc i64 %19 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %53, i32 %56, i8* %59, i8* %60, i8* %61)
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %30
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %68, %30
  %72 = call i64 @stat(i8* %17, %struct.stat* %12)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @ENOENT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %13, align 4
  br label %153

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* @errno, align 8
  %87 = call i32 @strerror(i64 %86)
  %88 = call i32 @pg_fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %85, i8* %17, i8* %20, i32 %87)
  br label %89

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %71
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %13, align 4
  br label %153

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %68
  %97 = call i32 @unlink(i8* %20)
  %98 = load i32, i32* @PG_STATUS, align 4
  %99 = call i32 (i32, i8*, i8*, ...) @pg_log(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32, i32* @PG_VERBOSE, align 4
  %108 = call i32 (i32, i8*, i8*, ...) @pg_log(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %17, i8* %20)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @rewriteVisibilityMap(i8* %17, i8* %20, i32 %111, i32 %114)
  br label %149

116:                                              ; preds = %102, %96
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_opts, i32 0, i32 0), align 4
  switch i32 %117, label %148 [
    i32 130, label %118
    i32 129, label %128
    i32 128, label %138
  ]

118:                                              ; preds = %116
  %119 = load i32, i32* @PG_VERBOSE, align 4
  %120 = call i32 (i32, i8*, i8*, ...) @pg_log(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %17, i8* %20)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @cloneFile(i8* %17, i8* %20, i32 %123, i32 %126)
  br label %148

128:                                              ; preds = %116
  %129 = load i32, i32* @PG_VERBOSE, align 4
  %130 = call i32 (i32, i8*, i8*, ...) @pg_log(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %17, i8* %20)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @copyFile(i8* %17, i8* %20, i32 %133, i32 %136)
  br label %148

138:                                              ; preds = %116
  %139 = load i32, i32* @PG_VERBOSE, align 4
  %140 = call i32 (i32, i8*, i8*, ...) @pg_log(i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %17, i8* %20)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @linkFile(i8* %17, i8* %20, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %138, %116, %128, %118
  br label %149

149:                                              ; preds = %148, %106
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %21

153:                                              ; preds = %94, %78
  %154 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %154)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @pg_fatal(i8*, i32, i32, i8*, i8*, i32) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @pg_log(i32, i8*, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @rewriteVisibilityMap(i8*, i8*, i32, i32) #2

declare dso_local i32 @cloneFile(i8*, i8*, i32, i32) #2

declare dso_local i32 @copyFile(i8*, i8*, i32, i32) #2

declare dso_local i32 @linkFile(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
