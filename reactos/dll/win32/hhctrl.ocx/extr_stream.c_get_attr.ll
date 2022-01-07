; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_stream.c_get_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_stream.c_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"name not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_attr(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = call i8* @heap_alloc(i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %123

26:                                               ; preds = %3
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @memcpy(i8* %27, i8* %28, i32 %29)
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %46, %26
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call signext i8 @tolower(i8 signext %40)
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 %41, i8* %45, align 1
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @memcpy(i8* %52, i8* %53, i32 %54)
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %69, %49
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call signext i8 @tolower(i8 signext %64)
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %67
  store i8 %65, i8* %68, align 1
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %75
  store i8 61, i8* %76, align 1
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %79
  store i8 34, i8* %80, align 1
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %86 = call i8* @strstr(i8* %84, i8* %85)
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %72
  %90 = call i32 @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @heap_free(i8* %91)
  store i8* null, i8** %4, align 8
  br label %123

93:                                               ; preds = %72
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i8* @strchr(i8* %98, i8 signext 34)
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @heap_free(i8* %103)
  store i8* null, i8** %4, align 8
  br label %123

105:                                              ; preds = %93
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = getelementptr inbounds i8, i8* %113, i64 %118
  store i8* %119, i8** %8, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @heap_free(i8* %120)
  %122 = load i8*, i8** %8, align 8
  store i8* %122, i8** %4, align 8
  br label %123

123:                                              ; preds = %105, %102, %89, %25
  %124 = load i8*, i8** %4, align 8
  ret i8* %124
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
