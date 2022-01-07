; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_handle_quoter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_handle_quoter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@PDO_PARAM_STR_NATL = common dso_local global i32 0, align 4
@PDO_PARAM_STR_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8**, i64*, i32)* @dblib_handle_quoter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dblib_handle_quoter(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8** %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64*, i64** %11, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 1, i32* %14, align 4
  br label %27

27:                                               ; preds = %26, %6
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @PDO_PARAM_STR_NATL, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @PDO_PARAM_STR_NATL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %14, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @PDO_PARAM_STR_CHAR, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @PDO_PARAM_STR_CHAR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %40, %34
  store i64 0, i64* %15, align 8
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 39
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i64*, i64** %11, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %15, align 8
  br label %42

64:                                               ; preds = %42
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 2
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = call i8* @emalloc(i64 %77)
  %79 = load i8**, i8*** %10, align 8
  store i8* %78, i8** %79, align 8
  store i8* %78, i8** %16, align 8
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  store i8 78, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %74
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %16, align 8
  store i8 39, i8* %86, align 1
  store i64 0, i64* %15, align 8
  br label %88

88:                                               ; preds = %112, %85
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 39
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i8*, i8** %16, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %16, align 8
  store i8 39, i8* %100, align 1
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %16, align 8
  store i8 39, i8* %102, align 1
  br label %111

104:                                              ; preds = %92
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %16, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %16, align 8
  store i8 %108, i8* %109, align 1
  br label %111

111:                                              ; preds = %104, %99
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %15, align 8
  br label %88

115:                                              ; preds = %88
  %116 = load i8*, i8** %16, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %16, align 8
  store i8 39, i8* %116, align 1
  %118 = load i8*, i8** %16, align 8
  store i8 0, i8* %118, align 1
  ret i32 1
}

declare dso_local i8* @emalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
