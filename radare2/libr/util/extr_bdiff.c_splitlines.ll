; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_bdiff.c_splitlines.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_bdiff.c_splitlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"null pointer received\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.line**)* @splitlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitlines(i8* %0, i32 %1, %struct.line** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.line*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line** %2, %struct.line*** %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

24:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %46, %24
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = icmp ult i8* %27, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  br label %26

49:                                               ; preds = %26
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 24, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @malloc(i32 %53)
  %55 = inttoptr i64 %54 to %struct.line*
  store %struct.line* %55, %struct.line** %13, align 8
  %56 = load %struct.line**, %struct.line*** %7, align 8
  store %struct.line* %55, %struct.line** %56, align 8
  %57 = load %struct.line*, %struct.line** %13, align 8
  %58 = icmp ne %struct.line* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %125

60:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %10, align 8
  br label %62

62:                                               ; preds = %109, %60
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = icmp ult i8* %63, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %70, 1664525
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %75, 1013904223
  store i32 %76, i32* %8, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %85, label %81

81:                                               ; preds = %69
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81, %69
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.line*, %struct.line** %13, align 8
  %88 = getelementptr inbounds %struct.line, %struct.line* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %8, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = add nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = load %struct.line*, %struct.line** %13, align 8
  %97 = getelementptr inbounds %struct.line, %struct.line* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.line*, %struct.line** %13, align 8
  %100 = getelementptr inbounds %struct.line, %struct.line* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @INT_MAX, align 4
  %102 = load %struct.line*, %struct.line** %13, align 8
  %103 = getelementptr inbounds %struct.line, %struct.line* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.line*, %struct.line** %13, align 8
  %105 = getelementptr inbounds %struct.line, %struct.line* %104, i32 1
  store %struct.line* %105, %struct.line** %13, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %11, align 8
  br label %108

108:                                              ; preds = %85, %81
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %10, align 8
  br label %62

112:                                              ; preds = %62
  %113 = load %struct.line*, %struct.line** %13, align 8
  %114 = getelementptr inbounds %struct.line, %struct.line* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.line*, %struct.line** %13, align 8
  %116 = getelementptr inbounds %struct.line, %struct.line* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load %struct.line*, %struct.line** %13, align 8
  %122 = getelementptr inbounds %struct.line, %struct.line* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %112, %59, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
