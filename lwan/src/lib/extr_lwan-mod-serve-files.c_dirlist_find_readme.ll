; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_dirlist_find_readme.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_dirlist_find_readme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32 }
%struct.serve_files_priv = type { i32 }

@dirlist_find_readme.candidates = internal global [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"readme\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"readme.txt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"read.me\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"README.TXT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lwan_strbuf*, %struct.serve_files_priv*, i8*)* @dirlist_find_readme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dirlist_find_readme(%struct.lwan_strbuf* %0, %struct.serve_files_priv* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lwan_strbuf*, align 8
  %6 = alloca %struct.serve_files_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.lwan_strbuf* %0, %struct.lwan_strbuf** %5, align 8
  store %struct.serve_files_priv* %1, %struct.serve_files_priv** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  %15 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %16 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %95

20:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %84, %20
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @N_ELEMENTS(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @dirlist_find_readme.candidates, i64 0, i64 0))
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %21
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load i32, i32* @PATH_MAX, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dirlist_find_readme.candidates, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %31, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @PATH_MAX, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %25
  store i32 4, i32* %13, align 4
  br label %81

43:                                               ; preds = %38
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = load i32, i32* @O_CLOEXEC, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @open(i8* %29, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 4, i32* %13, align 4
  br label %81

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %75, %63, %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = trunc i64 %27 to i32
  %56 = call i64 @read(i32 %54, i8* %29, i32 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EINTR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %52

64:                                               ; preds = %59
  store i32 7, i32* %13, align 4
  br label %81

65:                                               ; preds = %53
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %76

69:                                               ; preds = %65
  %70 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %5, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %70, i8* %29, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 7, i32* %13, align 4
  br label %81

75:                                               ; preds = %69
  br label %52

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %5, align 8
  %80 = call i8* @lwan_strbuf_get_buffer(%struct.lwan_strbuf* %79)
  store i8* %80, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %74, %64, %76, %50, %42
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %13, align 4
  switch i32 %83, label %97 [
    i32 4, label %84
    i32 1, label %95
    i32 7, label %88
  ]

84:                                               ; preds = %81
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %21

87:                                               ; preds = %21
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %8, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  store i8* null, i8** %4, align 8
  br label %95

95:                                               ; preds = %94, %81, %19
  %96 = load i8*, i8** %4, align 8
  ret i8* %96

97:                                               ; preds = %81
  unreachable
}

declare dso_local i64 @N_ELEMENTS(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @lwan_strbuf_append_str(%struct.lwan_strbuf*, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @lwan_strbuf_get_buffer(%struct.lwan_strbuf*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
