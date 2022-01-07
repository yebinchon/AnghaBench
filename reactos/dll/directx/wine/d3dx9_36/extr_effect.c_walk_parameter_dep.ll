; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_parameter_dep.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_parameter_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i64, i32, i32, %struct.TYPE_4__*, %struct.d3dx_sampler*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.d3dx_sampler* }
%struct.d3dx_sampler = type { i32, i32* }
%struct.TYPE_3__ = type { %struct.d3dx_parameter }
%struct.d3dx_parameter.0 = type opaque

@TRUE = common dso_local global i32 0, align 4
@D3DXPC_OBJECT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_parameter*, i64 (i8*, %struct.d3dx_parameter.0*)*, i8*)* @walk_parameter_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_parameter_dep(%struct.d3dx_parameter* %0, i64 (i8*, %struct.d3dx_parameter.0*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx_parameter*, align 8
  %6 = alloca i64 (i8*, %struct.d3dx_parameter.0*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.d3dx_sampler*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %5, align 8
  store i64 (i8*, %struct.d3dx_parameter.0*)* %1, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %14 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %13, i32 0, i32 7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.d3dx_parameter* %16, %struct.d3dx_parameter** %5, align 8
  %17 = load i64 (i8*, %struct.d3dx_parameter.0*)*, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %20 = bitcast %struct.d3dx_parameter* %19 to %struct.d3dx_parameter.0*
  %21 = call i64 %17(i8* %18, %struct.d3dx_parameter.0* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %4, align 4
  br label %148

25:                                               ; preds = %3
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i64 (i8*, %struct.d3dx_parameter.0*)*, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  %30 = bitcast i64 (i8*, %struct.d3dx_parameter.0*)* %29 to i64 (i8*, %struct.d3dx_parameter*)*
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @walk_param_eval_dep(i32 %28, i64 (i8*, %struct.d3dx_parameter*)* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %4, align 4
  br label %148

36:                                               ; preds = %25
  %37 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %38 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @D3DXPC_OBJECT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %107

42:                                               ; preds = %36
  %43 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %44 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @is_param_type_sampler(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %42
  %49 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %50 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @max(i32 %51, i32 1)
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %102, %48
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  %58 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %59 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %64 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %69, align 8
  br label %75

71:                                               ; preds = %57
  %72 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %73 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %72, i32 0, i32 4
  %74 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %73, align 8
  br label %75

75:                                               ; preds = %71, %62
  %76 = phi %struct.d3dx_sampler* [ %70, %62 ], [ %74, %71 ]
  store %struct.d3dx_sampler* %76, %struct.d3dx_sampler** %10, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %98, %75
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %10, align 8
  %80 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %10, align 8
  %85 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i64 (i8*, %struct.d3dx_parameter.0*)*, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  %91 = bitcast i64 (i8*, %struct.d3dx_parameter.0*)* %90 to i64 (i8*, %struct.d3dx_parameter*)*
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @walk_state_dep(i32* %89, i64 (i8*, %struct.d3dx_parameter*)* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %4, align 4
  br label %148

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %77

101:                                              ; preds = %77
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %53

105:                                              ; preds = %53
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %4, align 4
  br label %148

107:                                              ; preds = %42, %36
  %108 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %109 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %114 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  br label %120

116:                                              ; preds = %107
  %117 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %118 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %115, %112 ], [ %119, %116 ]
  store i32 %121, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %143, %120
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %128 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i64 (i8*, %struct.d3dx_parameter.0*)*, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  %136 = bitcast i64 (i8*, %struct.d3dx_parameter.0*)* %135 to i64 (i8*, %struct.d3dx_parameter*)*
  %137 = load i8*, i8** %7, align 8
  %138 = call i64 @walk_param_eval_dep(i32 %134, i64 (i8*, %struct.d3dx_parameter*)* %136, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %126
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %4, align 4
  br label %148

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %122

146:                                              ; preds = %122
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %140, %105, %95, %34, %23
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @walk_param_eval_dep(i32, i64 (i8*, %struct.d3dx_parameter*)*, i8*) #1

declare dso_local i64 @is_param_type_sampler(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @walk_state_dep(i32*, i64 (i8*, %struct.d3dx_parameter*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
