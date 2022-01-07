; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_udec3.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_udec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udec3 = type { i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @weld_udec3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @weld_udec3(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.udec3, align 8
  %11 = alloca %struct.udec3, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  call void @dword_to_udec3(%struct.udec3* sret %10, i32 %23)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  call void @dword_to_udec3(%struct.udec3* sret %11, i32 %25)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %12, align 8
  %28 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %35, %37
  br label %45

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %41, %43
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i64 [ %38, %33 ], [ %44, %39 ]
  store i64 %46, i64* %13, align 8
  %47 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %54, %56
  br label %64

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %60, %62
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i64 [ %57, %52 ], [ %63, %58 ]
  store i64 %65, i64* %14, align 8
  %66 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %73, %75
  br label %83

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %79, %81
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i64 [ %76, %71 ], [ %82, %77 ]
  store i64 %84, i64* %15, align 8
  %85 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %92, %94
  br label %102

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.udec3, %struct.udec3* %11, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.udec3, %struct.udec3* %10, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %98, %100
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i64 [ %95, %90 ], [ %101, %96 ]
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i64 @max(i64 %104, i64 %105)
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i64 @max(i64 %107, i64 %108)
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i64 @max(i64 %110, i64 %111)
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp sle i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load i8*, i8** %5, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @memcpy(i8* %117, i8* %118, i32 4)
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %4, align 4
  br label %123

121:                                              ; preds = %102
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local void @dword_to_udec3(%struct.udec3* sret, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
