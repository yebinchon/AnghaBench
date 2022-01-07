; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_expand_variables_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_expand_variables_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_file*, i8*, i8*)* @expand_variables_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_variables_buffer(%struct.inf_file* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.inf_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inf_file* %0, %struct.inf_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %104, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 37
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %40

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %26
  br label %104

41:                                               ; preds = %18
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %104

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 37, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  store i8* null, i8** %8, align 8
  br label %104

58:                                               ; preds = %46
  %59 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i32, i32* %9, align 4
  %63 = call i8* @get_substitution(%struct.inf_file* %59, i8* %61, i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 2
  %74 = call i32 @memcpy(i8* %70, i8* %71, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 2
  %77 = load i8*, i8** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %69, %66
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %103

85:                                               ; preds = %58
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @strlen(i8* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %90, %85
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %80
  store i8* null, i8** %8, align 8
  br label %104

104:                                              ; preds = %103, %55, %44, %40
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  br label %14

107:                                              ; preds = %14
  %108 = load i8*, i8** %6, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i8*, i8** %6, align 8
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  ret i32 %114
}

declare dso_local i8* @get_substitution(%struct.inf_file*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
