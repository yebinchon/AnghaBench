; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_cpmv_rename.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_cpmv_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@cp = common dso_local global i8* null, align 8
@mv = common dso_local global i8* null, align 8
@cpmv_rename.formatcmd = internal constant [43 x i8] c"sed -i 's|^\\(\\(.*/\\)\\(.*\\)$\\)|#\\1\\n\\3|' %s\00", align 16
@cpmv_rename.renamecmd = internal constant [90 x i8] c"sed 's|^\\([^#][^/]\\?.*\\)$|%s/\\1|;s|^#\\(/.*\\)$|\\1|' %s | tr '\\n' '\\0' | xargs -0 -o -n2 %s\00", align 16
@PATH_MAX = common dso_local global i32 0, align 4
@selbufpos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cat %s | tr '\\0' '\\n' > %s\00", align 1
@g_selpath = common dso_local global i8* null, align 8
@g_tmpfpath = common dso_local global i8* null, align 8
@utils = common dso_local global i32* null, align 8
@SH_EXEC = common dso_local global i64 0, align 8
@F_CLI = common dso_local global i32 0, align 4
@editor = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"num mismatch\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cpmv_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmv_rename(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 99
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** @cp, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i8*, i8** @mv, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8* [ %18, %17 ], [ %20, %19 ]
  store i8* %22, i8** %10, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = shl i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = add i64 98, %25
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = call i32 (...) @create_tmp_file()
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

34:                                               ; preds = %21
  %35 = load i32, i32* @selbufpos, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = trunc i64 %26 to i32
  %39 = load i8*, i8** @g_selpath, align 8
  %40 = load i8*, i8** @g_tmpfpath, align 8
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i32*, i32** @utils, align 8
  %43 = load i64, i64* @SH_EXEC, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @F_CLI, align 4
  %47 = call i32 @spawn(i32 %45, i8* %28, i32* null, i8* null, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = trunc i64 %26 to i32
  %50 = call i32 @lines_in_file(i32 %48, i8* %28, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  br label %113

54:                                               ; preds = %37
  br label %58

55:                                               ; preds = %34
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @seltofile(i32 %56, i32* %7)
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @close(i32 %59)
  %61 = trunc i64 %26 to i32
  %62 = load i8*, i8** @g_tmpfpath, align 8
  %63 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @cpmv_rename.formatcmd, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** @utils, align 8
  %65 = load i64, i64* @SH_EXEC, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @F_CLI, align 4
  %70 = call i32 @spawn(i32 %67, i8* %28, i32* null, i8* %68, i32 %69)
  %71 = load i32, i32* @editor, align 4
  %72 = load i8*, i8** @g_tmpfpath, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @F_CLI, align 4
  %75 = call i32 @spawn(i32 %71, i8* %72, i32* null, i8* %73, i32 %74)
  %76 = load i8*, i8** @g_tmpfpath, align 8
  %77 = load i32, i32* @O_RDONLY, align 4
  %78 = call i32 @open(i8* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  br label %113

82:                                               ; preds = %58
  %83 = load i32, i32* %6, align 4
  %84 = trunc i64 %26 to i32
  %85 = call i32 @lines_in_file(i32 %83, i8* %28, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @DPRINTF_U(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @DPRINTF_U(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 2, %93
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92, %82
  %98 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %113

99:                                               ; preds = %92
  %100 = trunc i64 %26 to i32
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** @g_tmpfpath, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %100, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @cpmv_rename.renamecmd, i64 0, i64 0), i8* %101, i8* %102, i8* %103)
  %105 = load i32*, i32** @utils, align 8
  %106 = load i64, i64* @SH_EXEC, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* @F_CLI, align 4
  %111 = call i32 @spawn(i32 %108, i8* %28, i32* null, i8* %109, i32 %110)
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %99, %97, %81, %53
  %114 = load i32, i32* %6, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @close(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

121:                                              ; preds = %119, %32
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_tmp_file(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @spawn(i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @lines_in_file(i32, i8*, i32) #2

declare dso_local i32 @seltofile(i32, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @DPRINTF_U(i32) #2

declare dso_local i32 @DPRINTF_S(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
