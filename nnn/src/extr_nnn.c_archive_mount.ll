; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_archive_mount.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_archive_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"archivemount\00", align 1
@messages = common dso_local global i32* null, align 8
@UTIL_MISSING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@cfgdir = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_NORMAL = common dso_local global i32 0, align 4
@OPERATION_FAILED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*)* @archive_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_mount(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = call i32 @getutil(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** @messages, align 8
  %18 = load i64, i64* @UTIL_MISSING, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @printwait(i32 %20, i32* %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %5, align 4
  br label %90

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %90

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %49, %31
  %35 = load i64, i64* %12, align 8
  %36 = icmp ugt i64 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  br label %50

49:                                               ; preds = %37
  br label %34

50:                                               ; preds = %45, %34
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @DPRINTF_S(i8* %51)
  %53 = load i32, i32* @cfgdir, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @mkpath(i32 %53, i8* %54, i8* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @create_dir(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @printwait(i32 %64, i32* %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %90

68:                                               ; preds = %50
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @DPRINTF_S(i8* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @DPRINTF_S(i8* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @F_NORMAL, align 4
  %78 = call i64 @spawn(i8* %73, i8* %74, i8* %75, i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = load i32*, i32** @messages, align 8
  %82 = load i64, i64* @OPERATION_FAILED, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @printwait(i32 %84, i32* %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %68
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %80, %62, %29, %16
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @getutil(i8*) #1

declare dso_local i32 @printwait(i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DPRINTF_S(i8*) #1

declare dso_local i32 @mkpath(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @create_dir(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @spawn(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
