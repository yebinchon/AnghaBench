; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pgmkdirp.c_pg_mkdir_p.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pgmkdirp.c_pg_mkdir_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_mkdir_p(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %10, align 8
  %12 = call i32 @umask(i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @S_IWUSR, align 4
  %15 = load i32, i32* @S_IXUSR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @umask(i32 %19)
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %26, %2
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %108, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %111

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %49

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %108

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i8*, i8** %10, align 8
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %53, %49
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @umask(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %3, align 8
  %68 = call i64 @stat(i8* %67, %struct.stat* %5)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @S_ISDIR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @EEXIST, align 4
  store i32 %79, i32* @errno, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @ENOTDIR, align 4
  store i32 %81, i32* @errno, align 4
  br label %82

82:                                               ; preds = %80, %78
  store i32 -1, i32* %9, align 4
  br label %111

83:                                               ; preds = %70
  br label %102

84:                                               ; preds = %66
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %4, align 4
  br label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @S_IRWXU, align 4
  %92 = load i32, i32* @S_IRWXG, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @S_IRWXO, align 4
  %95 = or i32 %93, %94
  br label %96

96:                                               ; preds = %90, %88
  %97 = phi i32 [ %89, %88 ], [ %95, %90 ]
  %98 = call i64 @mkdir(i8* %85, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 -1, i32* %9, align 4
  br label %111

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %10, align 8
  store i8 47, i8* %106, align 1
  br label %107

107:                                              ; preds = %105, %102
  br label %108

108:                                              ; preds = %107, %47
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  br label %30

111:                                              ; preds = %100, %82, %30
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @umask(i32 %112)
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
