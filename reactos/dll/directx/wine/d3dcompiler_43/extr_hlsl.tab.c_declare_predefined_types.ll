; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_declare_predefined_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_declare_predefined_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_scope = type { i32 }
%struct.hlsl_type = type { i32 }

@declare_predefined_types.names = internal constant [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@HLSL_TYPE_LAST_SCALAR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%s%ux%u\00", align 1
@HLSL_CLASS_MATRIX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@HLSL_CLASS_VECTOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HLSL_CLASS_SCALAR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"DWORD\00", align 1
@HLSL_TYPE_INT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@HLSL_TYPE_FLOAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"MATRIX\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@HLSL_CLASS_OBJECT = common dso_local global i32 0, align 4
@HLSL_TYPE_STRING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@HLSL_TYPE_TEXTURE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"PIXELSHADER\00", align 1
@HLSL_TYPE_PIXELSHADER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"VERTEXSHADER\00", align 1
@HLSL_TYPE_VERTEXSHADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_scope*)* @declare_predefined_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @declare_predefined_types(%struct.hlsl_scope* %0) #0 {
  %2 = alloca %struct.hlsl_scope*, align 8
  %3 = alloca %struct.hlsl_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  store %struct.hlsl_scope* %0, %struct.hlsl_scope** %2, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %88, %1
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @HLSL_TYPE_LAST_SCALAR, align 4
  %11 = icmp ule i32 %9, %10
  br i1 %11, label %12, label %91

12:                                               ; preds = %8
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %84, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp ule i32 %14, 4
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %80, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ule i32 %18, 4
  br i1 %19, label %20, label %83

20:                                               ; preds = %17
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* @declare_predefined_types.names, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %25, i32 %26, i32 %27)
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %30 = call i32 @d3dcompiler_strdup(i8* %29)
  %31 = load i32, i32* @HLSL_CLASS_MATRIX, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.hlsl_type* @new_hlsl_type(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store %struct.hlsl_type* %35, %struct.hlsl_type** %3, align 8
  %36 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %37 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %38 = call i32 @add_type_to_scope(%struct.hlsl_scope* %36, %struct.hlsl_type* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %79

41:                                               ; preds = %20
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i8*], [6 x i8*]* @declare_predefined_types.names, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %46, i32 %47)
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %50 = call i32 @d3dcompiler_strdup(i8* %49)
  %51 = load i32, i32* @HLSL_CLASS_VECTOR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.hlsl_type* @new_hlsl_type(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store %struct.hlsl_type* %55, %struct.hlsl_type** %3, align 8
  %56 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %57 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %58 = call i32 @add_type_to_scope(%struct.hlsl_scope* %56, %struct.hlsl_type* %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %78

61:                                               ; preds = %41
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [6 x i8*], [6 x i8*]* @declare_predefined_types.names, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %66)
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %69 = call i32 @d3dcompiler_strdup(i8* %68)
  %70 = load i32, i32* @HLSL_CLASS_SCALAR, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call %struct.hlsl_type* @new_hlsl_type(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store %struct.hlsl_type* %74, %struct.hlsl_type** %3, align 8
  %75 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %76 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %77 = call i32 @add_type_to_scope(%struct.hlsl_scope* %75, %struct.hlsl_type* %76)
  br label %78

78:                                               ; preds = %61, %41
  br label %79

79:                                               ; preds = %78, %20
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %17

83:                                               ; preds = %17
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %13

87:                                               ; preds = %13
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %8

91:                                               ; preds = %8
  %92 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %93 = load i32, i32* @HLSL_CLASS_SCALAR, align 4
  %94 = load i32, i32* @HLSL_TYPE_INT, align 4
  %95 = call %struct.hlsl_type* @new_hlsl_type(i32 %92, i32 %93, i32 %94, i32 1, i32 1)
  store %struct.hlsl_type* %95, %struct.hlsl_type** %3, align 8
  %96 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %97 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %98 = call i32 @add_type_to_scope(%struct.hlsl_scope* %96, %struct.hlsl_type* %97)
  %99 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %100 = load i32, i32* @HLSL_CLASS_SCALAR, align 4
  %101 = load i32, i32* @HLSL_TYPE_FLOAT, align 4
  %102 = call %struct.hlsl_type* @new_hlsl_type(i32 %99, i32 %100, i32 %101, i32 1, i32 1)
  store %struct.hlsl_type* %102, %struct.hlsl_type** %3, align 8
  %103 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %104 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %105 = call i32 @add_type_to_scope(%struct.hlsl_scope* %103, %struct.hlsl_type* %104)
  %106 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %107 = load i32, i32* @HLSL_CLASS_VECTOR, align 4
  %108 = load i32, i32* @HLSL_TYPE_FLOAT, align 4
  %109 = call %struct.hlsl_type* @new_hlsl_type(i32 %106, i32 %107, i32 %108, i32 4, i32 1)
  store %struct.hlsl_type* %109, %struct.hlsl_type** %3, align 8
  %110 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %111 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %112 = call i32 @add_type_to_scope(%struct.hlsl_scope* %110, %struct.hlsl_type* %111)
  %113 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %114 = load i32, i32* @HLSL_CLASS_MATRIX, align 4
  %115 = load i32, i32* @HLSL_TYPE_FLOAT, align 4
  %116 = call %struct.hlsl_type* @new_hlsl_type(i32 %113, i32 %114, i32 %115, i32 4, i32 4)
  store %struct.hlsl_type* %116, %struct.hlsl_type** %3, align 8
  %117 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %118 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %119 = call i32 @add_type_to_scope(%struct.hlsl_scope* %117, %struct.hlsl_type* %118)
  %120 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %121 = load i32, i32* @HLSL_CLASS_OBJECT, align 4
  %122 = load i32, i32* @HLSL_TYPE_STRING, align 4
  %123 = call %struct.hlsl_type* @new_hlsl_type(i32 %120, i32 %121, i32 %122, i32 1, i32 1)
  store %struct.hlsl_type* %123, %struct.hlsl_type** %3, align 8
  %124 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %125 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %126 = call i32 @add_type_to_scope(%struct.hlsl_scope* %124, %struct.hlsl_type* %125)
  %127 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %128 = load i32, i32* @HLSL_CLASS_OBJECT, align 4
  %129 = load i32, i32* @HLSL_TYPE_TEXTURE, align 4
  %130 = call %struct.hlsl_type* @new_hlsl_type(i32 %127, i32 %128, i32 %129, i32 1, i32 1)
  store %struct.hlsl_type* %130, %struct.hlsl_type** %3, align 8
  %131 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %132 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %133 = call i32 @add_type_to_scope(%struct.hlsl_scope* %131, %struct.hlsl_type* %132)
  %134 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %135 = load i32, i32* @HLSL_CLASS_OBJECT, align 4
  %136 = load i32, i32* @HLSL_TYPE_PIXELSHADER, align 4
  %137 = call %struct.hlsl_type* @new_hlsl_type(i32 %134, i32 %135, i32 %136, i32 1, i32 1)
  store %struct.hlsl_type* %137, %struct.hlsl_type** %3, align 8
  %138 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %139 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %140 = call i32 @add_type_to_scope(%struct.hlsl_scope* %138, %struct.hlsl_type* %139)
  %141 = call i32 @d3dcompiler_strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %142 = load i32, i32* @HLSL_CLASS_OBJECT, align 4
  %143 = load i32, i32* @HLSL_TYPE_VERTEXSHADER, align 4
  %144 = call %struct.hlsl_type* @new_hlsl_type(i32 %141, i32 %142, i32 %143, i32 1, i32 1)
  store %struct.hlsl_type* %144, %struct.hlsl_type** %3, align 8
  %145 = load %struct.hlsl_scope*, %struct.hlsl_scope** %2, align 8
  %146 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %147 = call i32 @add_type_to_scope(%struct.hlsl_scope* %145, %struct.hlsl_type* %146)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local %struct.hlsl_type* @new_hlsl_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3dcompiler_strdup(i8*) #1

declare dso_local i32 @add_type_to_scope(%struct.hlsl_scope*, %struct.hlsl_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
