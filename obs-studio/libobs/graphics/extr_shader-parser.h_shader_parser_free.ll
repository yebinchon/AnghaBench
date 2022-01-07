; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_parser_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_parser_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_parser*)* @shader_parser_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_parser_free(%struct.shader_parser* %0) #0 {
  %2 = alloca %struct.shader_parser*, align 8
  %3 = alloca i64, align 8
  store %struct.shader_parser* %0, %struct.shader_parser** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %7 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %13 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @shader_var_free(i64 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %4

22:                                               ; preds = %4
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %26 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %32 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @shader_struct_free(i64 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %23

41:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %45 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %51 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @shader_sampler_free(i64 %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %42

60:                                               ; preds = %42
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %64 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %70 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @shader_func_free(i64 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %3, align 8
  br label %61

79:                                               ; preds = %61
  %80 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %81 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %80, i32 0, i32 4
  %82 = call i32 @cf_parser_free(i32* %81)
  %83 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %84 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %83, i32 0, i32 3
  %85 = bitcast %struct.TYPE_2__* %84 to { i64, i64 }*
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @da_free(i64 %87, i64 %89)
  %91 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %92 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %91, i32 0, i32 2
  %93 = bitcast %struct.TYPE_2__* %92 to { i64, i64 }*
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @da_free(i64 %95, i64 %97)
  %99 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %100 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %99, i32 0, i32 1
  %101 = bitcast %struct.TYPE_2__* %100 to { i64, i64 }*
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @da_free(i64 %103, i64 %105)
  %107 = load %struct.shader_parser*, %struct.shader_parser** %2, align 8
  %108 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %107, i32 0, i32 0
  %109 = bitcast %struct.TYPE_2__* %108 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @da_free(i64 %111, i64 %113)
  ret void
}

declare dso_local i32 @shader_var_free(i64) #1

declare dso_local i32 @shader_struct_free(i64) #1

declare dso_local i32 @shader_sampler_free(i64) #1

declare dso_local i32 @shader_func_free(i64) #1

declare dso_local i32 @cf_parser_free(i32*) #1

declare dso_local i32 @da_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
