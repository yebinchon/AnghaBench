; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_sp_getsampler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_sp_getsampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.shader_sampler* }
%struct.shader_sampler = type { i32 }
%struct.cf_token = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gl_shader_parser*, %struct.cf_token*)* @sp_getsampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sp_getsampler(%struct.gl_shader_parser* %0, %struct.cf_token* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gl_shader_parser*, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.shader_sampler*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %4, align 8
  store %struct.cf_token* %1, %struct.cf_token** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %11 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %9, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %18 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.shader_sampler*, %struct.shader_sampler** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %21, i64 %22
  store %struct.shader_sampler* %23, %struct.shader_sampler** %7, align 8
  %24 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %25 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %24, i32 0, i32 0
  %26 = load %struct.shader_sampler*, %struct.shader_sampler** %7, align 8
  %27 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strref_cmp(i32* %25, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  br label %38

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %8

37:                                               ; preds = %8
  store i64 -1, i64* %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @strref_cmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
