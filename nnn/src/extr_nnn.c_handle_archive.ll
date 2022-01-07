; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_handle_archive.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_handle_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.handle_archive.arg = private unnamed_addr constant [5 x i8] c"-tvf\00", align 1
@utils = common dso_local global i8** null, align 8
@ATOOL = common dso_local global i64 0, align 8
@BSDTAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@UNZIP = common dso_local global i64 0, align 8
@TAR = common dso_local global i64 0, align 8
@F_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8)* @handle_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_archive(i8* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca [5 x i8], align 1
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.handle_archive.arg, i32 0, i32 0), i64 5, i1 false)
  %10 = load i8**, i8*** @utils, align 8
  %11 = load i64, i64* @ATOOL, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @getutil(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i8**, i8*** @utils, align 8
  %18 = load i64, i64* @ATOOL, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8, i8* %6, align 1
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %23, align 1
  br label %74

24:                                               ; preds = %3
  %25 = load i8**, i8*** @utils, align 8
  %26 = load i64, i64* @BSDTAR, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @getutil(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load i8**, i8*** @utils, align 8
  %33 = load i64, i64* @BSDTAR, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 120
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8, i8* %6, align 1
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %40, i8* %41, align 1
  br label %42

42:                                               ; preds = %39, %31
  br label %73

43:                                               ; preds = %24
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @is_suffix(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i8**, i8*** @utils, align 8
  %49 = load i64, i64* @UNZIP, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 108
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 118, i32 0
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %57, i8* %58, align 1
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %59, align 1
  br label %72

60:                                               ; preds = %43
  %61 = load i8**, i8*** @utils, align 8
  %62 = load i64, i64* @TAR, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i8, i8* %6, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 120
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i8, i8* %6, align 1
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %69, i8* %70, align 1
  br label %71

71:                                               ; preds = %68, %60
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %16
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 120
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* @F_NORMAL, align 4
  %84 = call i32 @spawn(i8* %79, i8* %80, i8* %81, i8* %82, i32 %83)
  br label %93

85:                                               ; preds = %74
  %86 = call i32 (...) @exitcurses()
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i32 @get_output(i32* null, i32 0, i8* %87, i8* %88, i8* %89, i32 %90)
  %92 = call i32 (...) @refresh()
  br label %93

93:                                               ; preds = %85, %78
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getutil(i8*) #2

declare dso_local i64 @is_suffix(i8*, i8*) #2

declare dso_local i32 @spawn(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @exitcurses(...) #2

declare dso_local i32 @get_output(i32*, i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @refresh(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
