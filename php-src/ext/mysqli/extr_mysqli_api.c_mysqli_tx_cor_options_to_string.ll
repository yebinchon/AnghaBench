; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_tx_cor_options_to_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_tx_cor_options_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TRANS_COR_AND_CHAIN = common dso_local global i32 0, align 4
@TRANS_COR_AND_NO_CHAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AND CHAIN\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AND NO CHAIN\00", align 1
@TRANS_COR_RELEASE = common dso_local global i32 0, align 4
@TRANS_COR_NO_RELEASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"NO RELEASE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @mysqli_tx_cor_options_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysqli_tx_cor_options_to_string(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TRANS_COR_AND_CHAIN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @TRANS_COR_AND_NO_CHAIN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @ZSTR_LEN(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = call i32 @smart_str_appendl(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %30

30:                                               ; preds = %27, %21, %16
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = call i32 @smart_str_appendl(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  br label %61

33:                                               ; preds = %11, %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @TRANS_COR_AND_NO_CHAIN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TRANS_COR_AND_CHAIN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @ZSTR_LEN(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = call i32 @smart_str_appendl(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %57

57:                                               ; preds = %54, %48, %43
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = call i32 @smart_str_appendl(%struct.TYPE_5__* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  br label %60

60:                                               ; preds = %57, %38, %33
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @TRANS_COR_RELEASE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TRANS_COR_NO_RELEASE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @ZSTR_LEN(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = call i32 @smart_str_appendl(%struct.TYPE_5__* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %85

85:                                               ; preds = %82, %76, %71
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = call i32 @smart_str_appendl(%struct.TYPE_5__* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  br label %116

88:                                               ; preds = %66, %61
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @TRANS_COR_NO_RELEASE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @TRANS_COR_RELEASE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @ZSTR_LEN(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = call i32 @smart_str_appendl(%struct.TYPE_5__* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %112

112:                                              ; preds = %109, %103, %98
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = call i32 @smart_str_appendl(%struct.TYPE_5__* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  br label %115

115:                                              ; preds = %112, %93, %88
  br label %116

116:                                              ; preds = %115, %85
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = call i32 @smart_str_0(%struct.TYPE_5__* %117)
  ret void
}

declare dso_local i64 @ZSTR_LEN(i64) #1

declare dso_local i32 @smart_str_appendl(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
