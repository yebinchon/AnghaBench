; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_get_xbm.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_get_xbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"#define %s %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@IMAGE_FILETYPE_XBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.gfxinfo**)* @php_get_xbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_get_xbm(i32* %0, %struct.gfxinfo** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gfxinfo**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.gfxinfo** %1, %struct.gfxinfo*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.gfxinfo**, %struct.gfxinfo*** %5, align 8
  %13 = icmp ne %struct.gfxinfo** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.gfxinfo**, %struct.gfxinfo*** %5, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %15, align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @php_stream_rewind(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %102

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %67, %21
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @php_stream_gets(i32* %23, i32* null, i32 0)
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @estrdup(i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %30, i32* %9)
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %67

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 95)
  store i8* %35, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %8, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @efree(i8* %51)
  br label %72

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @efree(i8* %63)
  br label %72

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @efree(i8* %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @efree(i8* %70)
  br label %22

72:                                               ; preds = %62, %50, %22
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @efree(i8* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load %struct.gfxinfo**, %struct.gfxinfo*** %5, align 8
  %86 = icmp ne %struct.gfxinfo** %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = call i64 @ecalloc(i32 1, i32 8)
  %89 = inttoptr i64 %88 to %struct.gfxinfo*
  %90 = load %struct.gfxinfo**, %struct.gfxinfo*** %5, align 8
  store %struct.gfxinfo* %89, %struct.gfxinfo** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.gfxinfo**, %struct.gfxinfo*** %5, align 8
  %93 = load %struct.gfxinfo*, %struct.gfxinfo** %92, align 8
  %94 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.gfxinfo**, %struct.gfxinfo*** %5, align 8
  %97 = load %struct.gfxinfo*, %struct.gfxinfo** %96, align 8
  %98 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %87, %84
  %100 = load i32, i32* @IMAGE_FILETYPE_XBM, align 4
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %81, %78
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %99, %20
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @php_stream_rewind(i32*) #1

declare dso_local i8* @php_stream_gets(i32*, i32*, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @ecalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
