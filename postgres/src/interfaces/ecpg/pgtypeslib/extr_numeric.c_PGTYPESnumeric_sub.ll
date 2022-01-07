; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_sub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i8* }

@NUMERIC_POS = common dso_local global i64 0, align 8
@NUMERIC_NEG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPESnumeric_sub(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
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
  br i1 %12, label %13, label %79

13:                                               ; preds = %3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NUMERIC_NEG, align 8
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
  br label %146

26:                                               ; preds = %19
  %27 = load i64, i64* @NUMERIC_POS, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %78

30:                                               ; preds = %13
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @cmp_abs(%struct.TYPE_14__* %31, %struct.TYPE_14__* %32)
  switch i32 %33, label %77 [
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
  br label %77

55:                                               ; preds = %30
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = call i32 @sub_abs(%struct.TYPE_14__* %56, %struct.TYPE_14__* %57, %struct.TYPE_14__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %146

62:                                               ; preds = %55
  %63 = load i64, i64* @NUMERIC_POS, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %77

66:                                               ; preds = %30
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = call i32 @sub_abs(%struct.TYPE_14__* %67, %struct.TYPE_14__* %68, %struct.TYPE_14__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %146

73:                                               ; preds = %66
  %74 = load i64, i64* @NUMERIC_NEG, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %30, %73, %62, %34
  br label %78

78:                                               ; preds = %77, %26
  br label %145

79:                                               ; preds = %3
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NUMERIC_NEG, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %133

85:                                               ; preds = %79
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = call i32 @cmp_abs(%struct.TYPE_14__* %86, %struct.TYPE_14__* %87)
  switch i32 %88, label %132 [
    i32 0, label %89
    i32 1, label %110
    i32 -1, label %121
  ]

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = call i32 @zero_var(%struct.TYPE_14__* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @Max(i8* %94, i8* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @Max(i8* %103, i8* %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %132

110:                                              ; preds = %85
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = call i32 @sub_abs(%struct.TYPE_14__* %111, %struct.TYPE_14__* %112, %struct.TYPE_14__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 -1, i32* %4, align 4
  br label %146

117:                                              ; preds = %110
  %118 = load i64, i64* @NUMERIC_NEG, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %132

121:                                              ; preds = %85
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = call i32 @sub_abs(%struct.TYPE_14__* %122, %struct.TYPE_14__* %123, %struct.TYPE_14__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 -1, i32* %4, align 4
  br label %146

128:                                              ; preds = %121
  %129 = load i64, i64* @NUMERIC_POS, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %85, %128, %117, %89
  br label %144

133:                                              ; preds = %79
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = call i64 @add_abs(%struct.TYPE_14__* %134, %struct.TYPE_14__* %135, %struct.TYPE_14__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  store i32 -1, i32* %4, align 4
  br label %146

140:                                              ; preds = %133
  %141 = load i64, i64* @NUMERIC_NEG, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %132
  br label %145

145:                                              ; preds = %144, %78
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %139, %127, %116, %72, %61, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
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
