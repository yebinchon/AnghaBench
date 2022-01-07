; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_strdupz_path_subpath.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_strdupz_path_subpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%.*s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strdupz_path_subpath(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ true, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %46, %30
  %34 = load i64, i64* %5, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi i1 [ false, %33 ], [ %43, %36 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %5, align 8
  br label %33

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %56, %49
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  br label %50

59:                                               ; preds = %50
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 47
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %66
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %83

77:                                               ; preds = %71, %59
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %82

82:                                               ; preds = %81, %77
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i32, i32* @FILENAME_MAX, align 4
  %85 = add nsw i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %7, align 8
  %88 = alloca i8, i64 %86, align 16
  store i64 %86, i64* %8, align 8
  %89 = load i32, i32* @FILENAME_MAX, align 4
  %90 = load i64, i64* %5, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i8*, i8** %3, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @snprintfz(i8* %88, i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %92, i8* %93, i8* %94)
  %96 = call i8* @strdupz(i8* %88)
  %97 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i8* %96
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
