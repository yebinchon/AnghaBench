; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_exec.c_get_bin_version.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_exec.c_get_bin_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@MAX_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\22%s/pg_ctl\22 --version\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"could not get pg_ctl version data using %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%*s %*s %d.%d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"could not get pg_ctl version output from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @get_bin_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_bin_version(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_STRING, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = trunc i64 %10 to i32
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i8* %12, i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32* @popen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = trunc i64 %14 to i32
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @fgets(i8* %15, i32 %24, i32* %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %12, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @pclose(i32* %33)
  %35 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32* %8)
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 10000
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 100
  %47 = add nsw i32 %44, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %55

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 10000
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %42
  %56 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @pg_fatal(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
