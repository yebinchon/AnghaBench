; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_api.c_SN_create_env.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_api.c_SN_create_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i8*, i32**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SN_env* @SN_create_env(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SN_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.SN_env*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i64 @calloc(i32 1, i32 32)
  %11 = inttoptr i64 %10 to %struct.SN_env*
  store %struct.SN_env* %11, %struct.SN_env** %8, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %13 = icmp eq %struct.SN_env* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.SN_env* null, %struct.SN_env** %4, align 8
  br label %103

15:                                               ; preds = %3
  %16 = call i8* (...) @create_s()
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %99

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @calloc(i32 %29, i32 8)
  %31 = inttoptr i64 %30 to i32**
  %32 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 2
  store i32** %31, i32*** %33, align 8
  %34 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = icmp eq i32** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %99

39:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = call i8* (...) @create_s()
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* %46, i32** %52, align 8
  %53 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %99

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %40

66:                                               ; preds = %40
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @calloc(i32 %71, i32 4)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %99

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @calloc(i32 %86, i32 1)
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %99

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  store %struct.SN_env* %98, %struct.SN_env** %4, align 8
  br label %103

99:                                               ; preds = %95, %80, %61, %38, %24
  %100 = load %struct.SN_env*, %struct.SN_env** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @SN_close_env(%struct.SN_env* %100, i32 %101)
  store %struct.SN_env* null, %struct.SN_env** %4, align 8
  br label %103

103:                                              ; preds = %99, %97, %14
  %104 = load %struct.SN_env*, %struct.SN_env** %4, align 8
  ret %struct.SN_env* %104
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @create_s(...) #1

declare dso_local i32 @SN_close_env(%struct.SN_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
