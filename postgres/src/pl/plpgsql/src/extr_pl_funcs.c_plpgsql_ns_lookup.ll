; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_funcs.c_plpgsql_ns_lookup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_funcs.c_plpgsql_ns_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i32 }

@PLPGSQL_NSTYPE_LABEL = common dso_local global i64 0, align 8
@PLPGSQL_NSTYPE_VAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @plpgsql_ns_lookup(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  br label %15

15:                                               ; preds = %107, %6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %111

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  br label %20

20:                                               ; preds = %51, %18
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PLPGSQL_NSTYPE_LABEL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strcmp(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PLPGSQL_NSTYPE_VAR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36, %33
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %13, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %7, align 8
  br label %117

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %14, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @strcmp(i32 %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %103

65:                                               ; preds = %58
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %14, align 8
  br label %67

67:                                               ; preds = %98, %65
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PLPGSQL_NSTYPE_LABEL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %67
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strcmp(i32 %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load i8*, i8** %12, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PLPGSQL_NSTYPE_VAR, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83, %80
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32*, i32** %13, align 8
  store i32 2, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %7, align 8
  br label %117

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %14, align 8
  br label %67

102:                                              ; preds = %67
  br label %103

103:                                              ; preds = %102, %58, %55
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %111

107:                                              ; preds = %103
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %8, align 8
  br label %15

111:                                              ; preds = %106, %15
  %112 = load i32*, i32** %13, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32*, i32** %13, align 8
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %111
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  br label %117

117:                                              ; preds = %116, %94, %47
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %118
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
