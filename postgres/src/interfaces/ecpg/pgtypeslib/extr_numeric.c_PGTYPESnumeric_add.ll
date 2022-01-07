; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_add.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i8* }

@NUMERIC_POS = common dso_local global i64 0, align 8
@NUMERIC_NEG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPESnumeric_add(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NUMERIC_POS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %80

13:                                               ; preds = %3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NUMERIC_POS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = call i64 @add_abs(%struct.TYPE_14__* %20, %struct.TYPE_14__* %21, %struct.TYPE_14__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %149

26:                                               ; preds = %19
  %27 = load i64, i64* @NUMERIC_POS, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %79

30:                                               ; preds = %13
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @cmp_abs(%struct.TYPE_14__* %31, %struct.TYPE_14__* %32)
  switch i32 %33, label %78 [
    i32 0, label %34
    i32 1, label %55
    i32 -1, label %66
  ]

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = call i32 @zero_var(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @Max(i8* %39, i8* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @Max(i8* %48, i8* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %78

55:                                               ; preds = %30
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = call i32 @sub_abs(%struct.TYPE_14__* %56, %struct.TYPE_14__* %57, %struct.TYPE_14__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %149

62:                                               ; preds = %55
  %63 = load i64, i64* @NUMERIC_POS, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %78

66:                                               ; preds = %30
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = call i32 @sub_abs(%struct.TYPE_14__* %67, %struct.TYPE_14__* %68, %struct.TYPE_14__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %149

73:                                               ; preds = %66
  %74 = load i8*, i8** @NUMERIC_NEG, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %30, %73, %62, %34
  br label %79

79:                                               ; preds = %78, %26
  br label %148

80:                                               ; preds = %3
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NUMERIC_POS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %135

86:                                               ; preds = %80
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = call i32 @cmp_abs(%struct.TYPE_14__* %87, %struct.TYPE_14__* %88)
  switch i32 %89, label %134 [
    i32 0, label %90
    i32 1, label %111
    i32 -1, label %123
  ]

90:                                               ; preds = %86
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = call i32 @zero_var(%struct.TYPE_14__* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @Max(i8* %95, i8* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @Max(i8* %104, i8* %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %134

111:                                              ; preds = %86
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = call i32 @sub_abs(%struct.TYPE_14__* %112, %struct.TYPE_14__* %113, %struct.TYPE_14__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 -1, i32* %4, align 4
  br label %149

118:                                              ; preds = %111
  %119 = load i8*, i8** @NUMERIC_NEG, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %134

123:                                              ; preds = %86
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %127 = call i32 @sub_abs(%struct.TYPE_14__* %124, %struct.TYPE_14__* %125, %struct.TYPE_14__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %149

130:                                              ; preds = %123
  %131 = load i64, i64* @NUMERIC_POS, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %86, %130, %118, %90
  br label %147

135:                                              ; preds = %80
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = call i64 @add_abs(%struct.TYPE_14__* %136, %struct.TYPE_14__* %137, %struct.TYPE_14__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 -1, i32* %4, align 4
  br label %149

142:                                              ; preds = %135
  %143 = load i8*, i8** @NUMERIC_NEG, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %134
  br label %148

148:                                              ; preds = %147, %79
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %141, %129, %117, %72, %61, %25
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @add_abs(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @cmp_abs(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @zero_var(%struct.TYPE_14__*) #1

declare dso_local i8* @Max(i8*, i8*) #1

declare dso_local i32 @sub_abs(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
