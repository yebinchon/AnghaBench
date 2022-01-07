; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_sshfs_mount.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_sshfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sshfs\00", align 1
@messages = common dso_local global i32* null, align 8
@UTIL_MISSING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"host: \00", align 1
@cfgdir = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"NNN_SSHFS_OPTS\00", align 1
@F_MULTI = common dso_local global i32 0, align 4
@OPERATION_FAILED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @sshfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshfs_mount(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @F_NORMAL, align 4
  store i32 %11, i32* %6, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = call i32 @getutil(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** @messages, align 8
  %17 = load i64, i64* @UTIL_MISSING, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @printwait(i32 %19, i32* %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = call i8* @xreadline(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %23
  %32 = load i32, i32* @cfgdir, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @mkpath(i32 %32, i8* %33, i8* %34)
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @create_dir(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @printwait(i32 %41, i32* %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %31
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 58, i8* %51, align 1
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 0, i8* %56, align 1
  %57 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @F_MULTI, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %66

64:                                               ; preds = %45
  %65 = load i8*, i8** %10, align 8
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @spawn(i8* %67, i8* %68, i8* %69, i32* null, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32*, i32** @messages, align 8
  %75 = load i64, i64* @OPERATION_FAILED, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @printwait(i32 %77, i32* %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %66
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %73, %39, %29, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @getutil(i8*) #1

declare dso_local i32 @printwait(i32, i32*) #1

declare dso_local i8* @xreadline(i32*, i8*) #1

declare dso_local i32 @mkpath(i32, i8*, i8*) #1

declare dso_local i32 @create_dir(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @spawn(i8*, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
