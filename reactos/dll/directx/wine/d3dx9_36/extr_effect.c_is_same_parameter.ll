; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_is_same_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_is_same_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i64, i64, i64, i64, i64, i32, %struct.d3dx_parameter*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.d3dx_parameter*)* @is_same_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_parameter(i8* %0, %struct.d3dx_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.d3dx_parameter*, align 8
  %6 = alloca %struct.d3dx_parameter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.d3dx_parameter*
  store %struct.d3dx_parameter* %11, %struct.d3dx_parameter** %6, align 8
  %12 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %13 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %16 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strcmp(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %68, label %20

20:                                               ; preds = %2
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %25 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  %29 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %30 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %33 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %38 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %46 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %49 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %54 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %57 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %62 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %65 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br label %68

68:                                               ; preds = %60, %52, %44, %36, %28, %20, %2
  %69 = phi i1 [ false, %52 ], [ false, %44 ], [ false, %36 ], [ false, %28 ], [ false, %20 ], [ false, %2 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %72 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %77 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  br label %84

79:                                               ; preds = %68
  %80 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %81 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = zext i32 %82 to i64
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i64 [ %78, %75 ], [ %83, %79 ]
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %123

94:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %118, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %101 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %100, i32 0, i32 6
  %102 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %102, i64 %104
  %106 = bitcast %struct.d3dx_parameter* %105 to i8*
  %107 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %108 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %107, i32 0, i32 6
  %109 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %109, i64 %111
  %113 = call i32 @is_same_parameter(i8* %106, %struct.d3dx_parameter* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %95

121:                                              ; preds = %95
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %115, %92
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
