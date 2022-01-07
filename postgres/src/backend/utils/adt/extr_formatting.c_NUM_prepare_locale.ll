; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_prepare_locale.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_prepare_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @NUM_prepare_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NUM_prepare_locale(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.lconv*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %136

10:                                               ; preds = %1
  %11 = call %struct.lconv* (...) @PGLC_localeconv()
  store %struct.lconv* %11, %struct.lconv** %3, align 8
  %12 = load %struct.lconv*, %struct.lconv** %3, align 8
  %13 = getelementptr inbounds %struct.lconv, %struct.lconv* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.lconv*, %struct.lconv** %3, align 8
  %18 = getelementptr inbounds %struct.lconv, %struct.lconv* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.lconv*, %struct.lconv** %3, align 8
  %25 = getelementptr inbounds %struct.lconv, %struct.lconv* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %32

29:                                               ; preds = %16, %10
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.lconv*, %struct.lconv** %3, align 8
  %34 = getelementptr inbounds %struct.lconv, %struct.lconv* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.lconv*, %struct.lconv** %3, align 8
  %39 = getelementptr inbounds %struct.lconv, %struct.lconv* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.lconv*, %struct.lconv** %3, align 8
  %46 = getelementptr inbounds %struct.lconv, %struct.lconv* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %53

50:                                               ; preds = %37, %32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.lconv*, %struct.lconv** %3, align 8
  %55 = getelementptr inbounds %struct.lconv, %struct.lconv* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.lconv*, %struct.lconv** %3, align 8
  %60 = getelementptr inbounds %struct.lconv, %struct.lconv* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.lconv*, %struct.lconv** %3, align 8
  %67 = getelementptr inbounds %struct.lconv, %struct.lconv* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %74

71:                                               ; preds = %58, %53
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = call i32 @IS_LDECIMAL(%struct.TYPE_5__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.lconv*, %struct.lconv** %3, align 8
  %85 = getelementptr inbounds %struct.lconv, %struct.lconv* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.lconv*, %struct.lconv** %3, align 8
  %90 = getelementptr inbounds %struct.lconv, %struct.lconv* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.lconv*, %struct.lconv** %3, align 8
  %97 = getelementptr inbounds %struct.lconv, %struct.lconv* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  br label %114

101:                                              ; preds = %88, %83
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %109, align 8
  br label %113

110:                                              ; preds = %101
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.lconv*, %struct.lconv** %3, align 8
  %116 = getelementptr inbounds %struct.lconv, %struct.lconv* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.lconv*, %struct.lconv** %3, align 8
  %121 = getelementptr inbounds %struct.lconv, %struct.lconv* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.lconv*, %struct.lconv** %3, align 8
  %128 = getelementptr inbounds %struct.lconv, %struct.lconv* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  br label %135

132:                                              ; preds = %119, %114
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %134, align 8
  br label %135

135:                                              ; preds = %132, %126
  br label %147

136:                                              ; preds = %1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %138, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %140, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %146, align 8
  br label %147

147:                                              ; preds = %136, %135
  ret void
}

declare dso_local %struct.lconv* @PGLC_localeconv(...) #1

declare dso_local i32 @IS_LDECIMAL(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
