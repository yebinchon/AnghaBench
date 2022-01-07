; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_ddraw.c_ddraw_find_decl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_ddraw.c_ddraw_find_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_vertex_declaration = type { i32 }
%struct.ddraw = type { i32, i32, %struct.FvfToDecl*, i32 }
%struct.FvfToDecl = type { i64, %struct.wined3d_vertex_declaration* }

@.str = private unnamed_addr constant [43 x i8] c"Searching for declaration for fvf %08x... \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"found %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"not found. Creating and inserting at position %d.\0A\00", align 1
@ddraw_null_wined3d_parent_ops = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Returning %p. %d decls in array\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wined3d_vertex_declaration* @ddraw_find_decl(%struct.ddraw* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_vertex_declaration*, align 8
  %4 = alloca %struct.ddraw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wined3d_vertex_declaration*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.FvfToDecl*, align 8
  %12 = alloca i32, align 4
  store %struct.ddraw* %0, %struct.ddraw** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wined3d_vertex_declaration* null, %struct.wined3d_vertex_declaration** %6, align 8
  %13 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %14 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %13, i32 0, i32 2
  %15 = load %struct.FvfToDecl*, %struct.FvfToDecl** %14, align 8
  store %struct.FvfToDecl* %15, %struct.FvfToDecl** %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 0, i32* %9, align 4
  %18 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %19 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %73, %2
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %34, i64 %36
  %38 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %26
  %43 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %43, i64 %45
  %47 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %46, i32 0, i32 1
  %48 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %47, align 8
  %49 = ptrtoint %struct.wined3d_vertex_declaration* %48 to i64
  %50 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %51, i64 %53
  %55 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %54, i32 0, i32 1
  %56 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %55, align 8
  store %struct.wined3d_vertex_declaration* %56, %struct.wined3d_vertex_declaration** %3, align 8
  br label %167

57:                                               ; preds = %26
  %58 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %58, i64 %60
  %62 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %72

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72
  br label %22

74:                                               ; preds = %22
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %79 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %83 = call i64 @wined3d_vertex_declaration_create_from_fvf(i32 %80, i64 %81, %struct.ddraw* %82, i32* @ddraw_null_wined3d_parent_ops, %struct.wined3d_vertex_declaration** %6)
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store %struct.wined3d_vertex_declaration* null, %struct.wined3d_vertex_declaration** %3, align 8
  br label %167

88:                                               ; preds = %74
  %89 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %90 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %93 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %88
  %97 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %98 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 2
  %101 = call i32 @max(i32 %100, i32 8)
  store i32 %101, i32* %12, align 4
  %102 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %103 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %104 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = mul i64 %108, 16
  %110 = trunc i64 %109 to i32
  %111 = call %struct.FvfToDecl* @heap_realloc(%struct.FvfToDecl* %102, i32 %110)
  store %struct.FvfToDecl* %111, %struct.FvfToDecl** %11, align 8
  %112 = icmp ne %struct.FvfToDecl* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %96
  %114 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %6, align 8
  %115 = call i32 @wined3d_vertex_declaration_decref(%struct.wined3d_vertex_declaration* %114)
  store %struct.wined3d_vertex_declaration* null, %struct.wined3d_vertex_declaration** %3, align 8
  br label %167

116:                                              ; preds = %96
  %117 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %118 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %119 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %118, i32 0, i32 2
  store %struct.FvfToDecl* %117, %struct.FvfToDecl** %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %122 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %88
  %126 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %126, i64 %128
  %130 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %129, i64 1
  %131 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %131, i64 %133
  %135 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %136 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = mul i64 16, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memmove(%struct.FvfToDecl* %130, %struct.FvfToDecl* %134, i32 %142)
  %144 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %6, align 8
  %145 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %145, i64 %147
  %149 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %148, i32 0, i32 1
  store %struct.wined3d_vertex_declaration* %144, %struct.wined3d_vertex_declaration** %149, align 8
  %150 = load i64, i64* %5, align 8
  %151 = load %struct.FvfToDecl*, %struct.FvfToDecl** %11, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %151, i64 %153
  %155 = getelementptr inbounds %struct.FvfToDecl, %struct.FvfToDecl* %154, i32 0, i32 0
  store i64 %150, i64* %155, align 8
  %156 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %157 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %6, align 8
  %161 = ptrtoint %struct.wined3d_vertex_declaration* %160 to i64
  %162 = load %struct.ddraw*, %struct.ddraw** %4, align 8
  %163 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %161, i32 %164)
  %166 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %6, align 8
  store %struct.wined3d_vertex_declaration* %166, %struct.wined3d_vertex_declaration** %3, align 8
  br label %167

167:                                              ; preds = %125, %113, %87, %42
  %168 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %3, align 8
  ret %struct.wined3d_vertex_declaration* %168
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i64 @wined3d_vertex_declaration_create_from_fvf(i32, i64, %struct.ddraw*, i32*, %struct.wined3d_vertex_declaration**) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.FvfToDecl* @heap_realloc(%struct.FvfToDecl*, i32) #1

declare dso_local i32 @wined3d_vertex_declaration_decref(%struct.wined3d_vertex_declaration*) #1

declare dso_local i32 @memmove(%struct.FvfToDecl*, %struct.FvfToDecl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
