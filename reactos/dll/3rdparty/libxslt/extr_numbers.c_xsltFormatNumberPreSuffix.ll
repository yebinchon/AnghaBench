; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltFormatNumberPreSuffix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltFormatNumberPreSuffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@SYMBOL_QUOTE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64**, %struct.TYPE_6__*)* @xsltFormatNumberPreSuffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltFormatNumberPreSuffix(%struct.TYPE_7__* %0, i64** %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64** %1, i64*** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %3, %88
  %11 = load i64**, i64*** %6, align 8
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %10
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYMBOL_QUOTE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64**, i64*** %6, align 8
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %24, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %97

30:                                               ; preds = %23
  br label %82

31:                                               ; preds = %17
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load i64**, i64*** %6, align 8
  %34 = load i64*, i64** %33, align 8
  %35 = call i64 @IS_SPECIAL(%struct.TYPE_7__* %32, i64* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %97

39:                                               ; preds = %31
  %40 = load i64**, i64*** %6, align 8
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @xsltUTF8Charcmp(i64* %41, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %97

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 100, i32* %55, align 8
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %80

59:                                               ; preds = %39
  %60 = load i64**, i64*** %6, align 8
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @xsltUTF8Charcmp(i64* %61, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %97

73:                                               ; preds = %67
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 1000, i32* %75, align 8
  %76 = load i8*, i8** @TRUE, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %73, %59
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i64**, i64*** %6, align 8
  %84 = load i64*, i64** %83, align 8
  %85 = call i32 @xmlUTF8Strsize(i64* %84, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %97

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i64**, i64*** %6, align 8
  %94 = load i64*, i64** %93, align 8
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64* %96, i64** %93, align 8
  br label %10

97:                                               ; preds = %87, %72, %52, %37, %29, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @IS_SPECIAL(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @xsltUTF8Charcmp(i64*, i32) #1

declare dso_local i32 @xmlUTF8Strsize(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
