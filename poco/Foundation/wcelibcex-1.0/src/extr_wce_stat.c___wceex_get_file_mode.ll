; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_stat.c___wceex_get_file_mode.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_stat.c___wceex_get_file_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__DOSMODE_MASK = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i16 0, align 2
@S_IEXEC = common dso_local global i16 0, align 2
@S_IFREG = common dso_local global i16 0, align 2
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@S_IREAD = common dso_local global i16 0, align 2
@S_IWRITE = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cmd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bat\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".com\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*, i32)* @__wceex_get_file_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__wceex_get_file_mode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @__DOSMODE_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %7, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 58
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @IS_SLASH(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %29, %24
  %39 = load i16, i16* @S_IFDIR, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @S_IEXEC, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %40, %42
  br label %47

44:                                               ; preds = %34
  %45 = load i16, i16* @S_IFREG, align 2
  %46 = zext i16 %45 to i32
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %43, %38 ], [ %46, %44 ]
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %5, align 2
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i16, i16* @S_IREAD, align 2
  %56 = zext i16 %55 to i32
  br label %63

57:                                               ; preds = %47
  %58 = load i16, i16* @S_IREAD, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @S_IWRITE, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %59, %61
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi i32 [ %56, %54 ], [ %62, %57 ]
  %65 = load i16, i16* %5, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %5, align 2
  %69 = load i8*, i8** %3, align 8
  %70 = call i8* @strrchr(i8* %69, i8 signext 46)
  store i8* %70, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %63
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @_stricmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @_stricmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @_stricmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @_stricmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84, %80, %76, %72
  %89 = load i16, i16* @S_IEXEC, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* %5, align 2
  %92 = zext i16 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %5, align 2
  br label %95

95:                                               ; preds = %88, %84
  br label %96

96:                                               ; preds = %95, %63
  %97 = load i16, i16* %5, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 448
  %100 = ashr i32 %99, 3
  %101 = load i16, i16* %5, align 2
  %102 = zext i16 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %5, align 2
  %105 = load i16, i16* %5, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 448
  %108 = ashr i32 %107, 6
  %109 = load i16, i16* %5, align 2
  %110 = zext i16 %109 to i32
  %111 = or i32 %110, %108
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %5, align 2
  %113 = load i16, i16* %5, align 2
  ret i16 %113
}

declare dso_local i64 @IS_SLASH(i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
