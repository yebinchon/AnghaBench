; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendStringLiteral.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendStringLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendStringLiteral(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul i64 2, %20
  %22 = add i64 %21, 2
  %23 = trunc i64 %22 to i32
  %24 = call i32 @enlargePQExpBuffer(%struct.TYPE_4__* %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %135

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  store i8 39, i8* %36, align 1
  br label %38

38:                                               ; preds = %120, %61, %27
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %121

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %12, align 1
  %46 = load i8, i8* %12, align 1
  %47 = call i32 @IS_HIGHBIT_SET(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %43
  %50 = load i8, i8* %12, align 1
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @SQL_STR_DOUBLE(i8 signext %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i8, i8* %12, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i8, i8* %12, align 1
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %11, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  br label %38

67:                                               ; preds = %43
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @PQmblen(i8* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %87, %67
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %90

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  %84 = load i8, i8* %82, align 1
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  store i8 %84, i8* %85, align 1
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %71

90:                                               ; preds = %80, %71
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 -2
  store i8* %103, i8** %15, align 8
  br label %104

104:                                              ; preds = %116, %94
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = icmp uge i8* %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %119

113:                                              ; preds = %108
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  store i8 32, i8* %114, align 1
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %104

119:                                              ; preds = %112, %104
  br label %121

120:                                              ; preds = %90
  br label %38

121:                                              ; preds = %119, %38
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  store i8 39, i8* %122, align 1
  %124 = load i8*, i8** %11, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %125 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %121, %26
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @enlargePQExpBuffer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i64 @SQL_STR_DOUBLE(i8 signext, i32) #1

declare dso_local i32 @PQmblen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
