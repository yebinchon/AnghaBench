; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_editselection.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_editselection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@selbufpos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"empty selection\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"couldn't create tmp file\00", align 1
@editor = common dso_local global i32 0, align 4
@g_tmpfpath = common dso_local global i32* null, align 8
@F_CLI = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"couldn't read tmp file\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"edited buffer larger than pervious\00", align 1
@pselbuf = common dso_local global i8* null, align 8
@selbuflen = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"error reading tmp file\00", align 1
@nselected = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"files added to selection\00", align 1
@copier = common dso_local global i32 0, align 4
@F_NOTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @editselection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editselection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* @selbufpos, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %1, align 4
  br label %125

13:                                               ; preds = %0
  %14 = call i32 (...) @create_tmp_file()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %1, align 4
  br label %125

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @seltofile(i32 %21, i32* null)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @close(i32 %23)
  %25 = load i32, i32* @editor, align 4
  %26 = load i32*, i32** @g_tmpfpath, align 8
  %27 = load i32, i32* @F_CLI, align 4
  %28 = call i32 @spawn(i32 %25, i32* %26, i32* null, i32* null, i32 %27)
  %29 = load i32*, i32** @g_tmpfpath, align 8
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i32 @open(i32* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** @g_tmpfpath, align 8
  %37 = call i32 @unlink(i32* %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %1, align 4
  br label %125

39:                                               ; preds = %20
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @fstat(i32 %40, %struct.stat* %6)
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @selbufpos, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %121

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = load i8*, i8** @pselbuf, align 8
  %51 = load i32, i32* @selbuflen, align 4
  %52 = call i64 @read(i32 %49, i8* %50, i32 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32*, i32** @g_tmpfpath, align 8
  %56 = call i32 @unlink(i32* %55)
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %2, align 4
  br label %121

61:                                               ; preds = %48
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %121

66:                                               ; preds = %61
  %67 = call i32 (...) @resetselind()
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* @selbufpos, align 8
  %69 = load i8*, i8** @pselbuf, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %5, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %100, %66
  %76 = load i64, i64* %5, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load i8*, i8** @pselbuf, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load i8*, i8** @pselbuf, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 47
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  %96 = load i8*, i8** @pselbuf, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %93, %85, %78
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %5, align 8
  br label %75

103:                                              ; preds = %75
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @nselected, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = call i32 @DPRINTF_S(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %121

111:                                              ; preds = %103
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* @nselected, align 4
  %113 = load i8*, i8** @pselbuf, align 8
  %114 = load i64, i64* @selbufpos, align 8
  %115 = sub nsw i64 %114, 1
  %116 = call i32 @writesel(i8* %113, i64 %115)
  %117 = load i32, i32* @copier, align 4
  %118 = load i32, i32* @F_NOTRACE, align 4
  %119 = call i32 @spawn(i32 %117, i32* null, i32* null, i32* null, i32 %118)
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %1, align 4
  br label %125

121:                                              ; preds = %109, %64, %59, %46
  %122 = call i32 (...) @resetselind()
  %123 = call i32 (...) @clearselection()
  %124 = load i32, i32* %2, align 4
  store i32 %124, i32* %1, align 4
  br label %125

125:                                              ; preds = %121, %111, %34, %17, %10
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i32 @DPRINTF_S(i8*) #1

declare dso_local i32 @create_tmp_file(...) #1

declare dso_local i32 @seltofile(i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @spawn(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @open(i32*, i32) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @resetselind(...) #1

declare dso_local i32 @writesel(i8*, i64) #1

declare dso_local i32 @clearselection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
