; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltScanLiteral.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltScanLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @xsltScanLiteral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xsltScanLiteral(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* @SKIP_BLANKS, align 4
  %10 = load i8, i8* @CUR, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  %14 = load i32, i32* @NEXT, align 4
  %15 = load i32*, i32** @CUR_PTR, align 8
  store i32* %15, i32** %4, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @xmlStringCurrentChar(i32* null, i32* %16, i32* %8)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %27, %13
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @IS_CHAR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 34
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @xmlStringCurrentChar(i32* null, i32* %32, i32* %8)
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @IS_CHAR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  store i32* null, i32** %2, align 8
  br label %111

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32* @xmlStrndup(i32* %42, i32 %49)
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  store i32* %56, i32** @CUR_PTR, align 8
  br label %109

57:                                               ; preds = %1
  %58 = load i8, i8* @CUR, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 39
  br i1 %60, label %61, label %105

61:                                               ; preds = %57
  %62 = load i32, i32* @NEXT, align 4
  %63 = load i32*, i32** @CUR_PTR, align 8
  store i32* %63, i32** %4, align 8
  store i32* %63, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @xmlStringCurrentChar(i32* null, i32* %64, i32* %8)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %75, %61
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @IS_CHAR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 39
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i1 [ false, %66 ], [ %72, %70 ]
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @xmlStringCurrentChar(i32* null, i32* %80, i32* %8)
  store i32 %81, i32* %7, align 4
  br label %66

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @IS_CHAR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  store i32* null, i32** %2, align 8
  br label %111

89:                                               ; preds = %82
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32* @xmlStrndup(i32* %90, i32 %97)
  store i32* %98, i32** %6, align 8
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %5, align 8
  %104 = load i32*, i32** %5, align 8
  store i32* %104, i32** @CUR_PTR, align 8
  br label %108

105:                                              ; preds = %57
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  store i32* null, i32** %2, align 8
  br label %111

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %51
  %110 = load i32*, i32** %6, align 8
  store i32* %110, i32** %2, align 8
  br label %111

111:                                              ; preds = %109, %105, %86, %38
  %112 = load i32*, i32** %2, align 8
  ret i32* %112
}

declare dso_local i32 @xmlStringCurrentChar(i32*, i32*, i32*) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32* @xmlStrndup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
