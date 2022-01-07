; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_expand_tilde.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_expand_tilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_tilde(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %10 = load i8**, i8*** %2, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %1
  br label %85

17:                                               ; preds = %12
  %18 = load i8**, i8*** %2, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 126
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load i32, i32* @MAXPGPATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load i8**, i8*** %2, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  store i8 0, i8* %27, align 16
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %44, %23
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %4, align 1
  %50 = load i8*, i8** %5, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @get_home_path(i8* %27)
  br label %70

58:                                               ; preds = %47
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call %struct.passwd* @getpwnam(i8* %60)
  store %struct.passwd* %61, %struct.passwd** %6, align 8
  %62 = icmp ne %struct.passwd* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.passwd*, %struct.passwd** %6, align 8
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = trunc i64 %25 to i32
  %68 = call i32 @strlcpy(i8* %27, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %58
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i8, i8* %4, align 1
  %72 = load i8*, i8** %5, align 8
  store i8 %71, i8* %72, align 1
  %73 = call i64 @strlen(i8* %27)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %9, align 8
  %81 = load i8**, i8*** %2, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %84

84:                                               ; preds = %82, %17
  br label %85

85:                                               ; preds = %84, %16
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_home_path(i8*) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @psprintf(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
