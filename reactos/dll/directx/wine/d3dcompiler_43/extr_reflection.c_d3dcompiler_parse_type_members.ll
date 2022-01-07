; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_type_members.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_type_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection = type { i32 }
%struct.d3dcompiler_shader_reflection_type_member = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Failed to copy name.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Member name: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Member type offset: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get member type\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Member offset %x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection_type_member*, i8*, i8**)* @d3dcompiler_parse_type_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dcompiler_parse_type_members(%struct.d3dcompiler_shader_reflection* %0, %struct.d3dcompiler_shader_reflection_type_member* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dcompiler_shader_reflection*, align 8
  %7 = alloca %struct.d3dcompiler_shader_reflection_type_member*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.d3dcompiler_shader_reflection* %0, %struct.d3dcompiler_shader_reflection** %6, align 8
  store %struct.d3dcompiler_shader_reflection_type_member* %1, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8**, i8*** %9, align 8
  %12 = call i32 @read_dword(i8** %11, i32* %10)
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %18 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %17, i32 0, i32 1
  %19 = call i32 @copy_name(i8* %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %26 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @debugstr_a(i32 %27)
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8**, i8*** %9, align 8
  %31 = call i32 @read_dword(i8** %30, i32* %10)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @get_reflection_type(%struct.d3dcompiler_shader_reflection* %34, i8* %35, i32 %36)
  %38 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %39 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %41 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %24
  %45 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %48 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HeapFree(i32 %46, i32 0, i32 %49)
  %51 = load i32, i32* @E_FAIL, align 4
  store i32 %51, i32* %5, align 4
  br label %62

52:                                               ; preds = %24
  %53 = load i8**, i8*** %9, align 8
  %54 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %55 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %54, i32 0, i32 0
  %56 = call i32 @read_dword(i8** %53, i32* %55)
  %57 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %7, align 8
  %58 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %44, %21
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @copy_name(i8*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @get_reflection_type(%struct.d3dcompiler_shader_reflection*, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
