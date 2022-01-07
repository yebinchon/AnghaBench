; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_obj_settings_list.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_obj_settings_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64*, i32, i64* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"@%s:\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @print_obj_settings_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_obj_settings_list(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.TYPE_3__* @VAL(i8* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  %12 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %127, %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi i1 [ false, %13 ], [ %23, %16 ]
  br i1 %25, label %26, label %130

26:                                               ; preds = %24
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @talloc_strdup_append(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = call i8* @talloc_asprintf_append(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %52)
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %48, %41, %36
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @talloc_strdup_append(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @talloc_strdup_append(i8* %63, i8* %66)
  store i8* %67, i8** %6, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %126

72:                                               ; preds = %62
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @talloc_strdup_append(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %81, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %122, %79
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %87, 0
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @talloc_strdup_append(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %104, 0
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @append_param(i8** %6, i64 %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i8* @talloc_strdup_append(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %111, i8** %6, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %114, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @append_param(i8** %6, i64 %120)
  br label %122

122:                                              ; preds = %99
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %82

125:                                              ; preds = %82
  br label %126

126:                                              ; preds = %125, %72, %62
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %13

130:                                              ; preds = %24
  %131 = load i8*, i8** %6, align 8
  ret i8* %131
}

declare dso_local %struct.TYPE_3__* @VAL(i8*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i64*) #1

declare dso_local i32 @append_param(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
