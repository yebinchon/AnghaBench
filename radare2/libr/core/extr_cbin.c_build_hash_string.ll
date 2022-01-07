; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_build_hash_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_build_hash_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\22%s\22:\22%s\22,\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32*, i32)* @build_hash_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_hash_string(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %110, %4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i8*, i8** %12, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i8*, i8** %12, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 44
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 127
  br label %31

31:                                               ; preds = %27, %22, %17
  %32 = phi i1 [ false, %22 ], [ false, %17 ], [ %30, %27 ]
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %38
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %17

43:                                               ; preds = %31
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %48 = call i32 @r_str_trim_head_tail(i8* %47)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @r_hash_to_string(i32* null, i8* %49, i32* %50, i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %43
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 44
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %65, %60, %55
  br label %110

69:                                               ; preds = %43
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @IS_MODE_SIMPLE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %74)
  store i8* %75, i8** %10, align 8
  br label %89

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @IS_MODE_JSON(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %82 = load i8*, i8** %9, align 8
  %83 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %82)
  store i8* %83, i8** %10, align 8
  br label %88

84:                                               ; preds = %76
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %85, i8* %86)
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %73
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i8* @r_str_append(i8* %90, i8* %91)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %12, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 44
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %106, %101, %89
  br label %110

110:                                              ; preds = %109, %68
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %16, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %11, align 8
  ret i8* %115
}

declare dso_local i32 @r_str_trim_head_tail(i8*) #1

declare dso_local i8* @r_hash_to_string(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_MODE_SIMPLE(i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, ...) #1

declare dso_local i64 @IS_MODE_JSON(i32) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
