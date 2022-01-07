; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_storage_outputs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_storage_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_func = type { i32, i32 }
%struct.shader_var = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"outputval\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_func*)* @gl_write_main_storage_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_main_storage_outputs(%struct.gl_shader_parser* %0, %struct.shader_func* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_func*, align 8
  %5 = alloca %struct.shader_var, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_func* %1, %struct.shader_func** %4, align 8
  %6 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %7 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = bitcast %struct.shader_var* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %14 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %18 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %17, i32 0, i32 0
  %19 = call i32 @dstr_cat(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %21 = call i32 @gl_write_main_storage_assign(%struct.gl_shader_parser* %20, %struct.shader_var* %5, i32* null, i32* null, i32 0)
  br label %22

22:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #2

declare dso_local i32 @gl_write_main_storage_assign(%struct.gl_shader_parser*, %struct.shader_var*, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
