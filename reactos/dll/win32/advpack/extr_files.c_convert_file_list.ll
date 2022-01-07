; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_files.c_convert_file_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_files.c_convert_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @convert_file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_file_list(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %41, %2
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = phi i1 [ true, %27 ], [ true, %22 ], [ %36, %32 ]
  br label %39

39:                                               ; preds = %37, %18
  %40 = phi i1 [ false, %18 ], [ %38, %37 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  br label %18

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ugt i8* %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br label %64

64:                                               ; preds = %59, %54, %49
  %65 = phi i1 [ true, %54 ], [ true, %49 ], [ %63, %59 ]
  br label %66

66:                                               ; preds = %64, %45
  %67 = phi i1 [ false, %45 ], [ %65, %64 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %8, align 8
  br label %45

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8* null, i8** %3, align 8
  br label %127

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = add nsw i64 %81, 3
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i32, i32* %6, align 4
  %86 = call i8* @HeapAlloc(i32 %84, i32 0, i32 %85)
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @lstrcpynA(i8* %87, i8* %88, i32 %90)
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %76
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @HeapFree(i32 %102, i32 0, i8* %103)
  store i8* null, i8** %3, align 8
  br label %127

105:                                              ; preds = %76
  %106 = load i32*, i32** %5, align 8
  store i32 1, i32* %106, align 4
  %107 = load i8*, i8** %9, align 8
  store i8* %107, i8** %10, align 8
  br label %108

108:                                              ; preds = %122, %105
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 58
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i8*, i8** %10, align 8
  store i8 0, i8* %118, align 1
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  br label %108

125:                                              ; preds = %108
  %126 = load i8*, i8** %9, align 8
  store i8* %126, i8** %3, align 8
  br label %127

127:                                              ; preds = %125, %101, %75
  %128 = load i8*, i8** %3, align 8
  ret i8* %128
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpynA(i8*, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
