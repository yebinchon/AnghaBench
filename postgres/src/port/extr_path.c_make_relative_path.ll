; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_path.c_make_relative_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_path.c_make_relative_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @make_relative_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_relative_path(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %67, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %12, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i1 [ false, %13 ], [ %28, %21 ]
  br i1 %30, label %31, label %70

31:                                               ; preds = %29
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @IS_DIR_SEP(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @IS_DIR_SEP(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %66

50:                                               ; preds = %39, %31
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %70

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %13

70:                                               ; preds = %64, %29
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %130

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* @MAXPGPATH, align 4
  %82 = call i32 @strlcpy(i8* %79, i8* %80, i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @trim_directory(i8* %83)
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @canonicalize_path(i8* %85)
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %74
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @IS_DIR_SEP(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %93
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i64 @dir_strcmp(i8* %106, i8* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %102
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @trim_trailing_separator(i8* %118)
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = call i32 @join_path_components(i8* %120, i8* %121, i8* %125)
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @canonicalize_path(i8* %127)
  br label %137

129:                                              ; preds = %102, %93, %74
  br label %130

130:                                              ; preds = %129, %73
  %131 = load i8*, i8** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* @MAXPGPATH, align 4
  %134 = call i32 @strlcpy(i8* %131, i8* %132, i32 %133)
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @canonicalize_path(i8* %135)
  br label %137

137:                                              ; preds = %130, %113
  ret void
}

declare dso_local i64 @IS_DIR_SEP(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @trim_directory(i8*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i64 @dir_strcmp(i8*, i8*) #1

declare dso_local i32 @trim_trailing_separator(i8*) #1

declare dso_local i32 @join_path_components(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
