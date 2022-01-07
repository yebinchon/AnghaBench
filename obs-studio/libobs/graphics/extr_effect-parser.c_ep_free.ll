; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep_free(%struct.effect_parser* %0) #0 {
  %2 = alloca %struct.effect_parser*, align 8
  %3 = alloca i64, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %7 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %13 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @ep_param_free(i64 %17)
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
  %25 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %26 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %32 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @ep_struct_free(i64 %36)
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
  %44 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %45 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %51 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @ep_func_free(i64 %55)
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
  %63 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %64 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %70 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @ep_sampler_free(i64 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %3, align 8
  br label %61

79:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i64, i64* %3, align 8
  %82 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %83 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %89 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %91, %92
  %94 = call i32 @ep_technique_free(i64 %93)
  br label %95

95:                                               ; preds = %87
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %3, align 8
  br label %80

98:                                               ; preds = %80
  %99 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %100 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %99, i32 0, i32 6
  store i32* null, i32** %100, align 8
  %101 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %102 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %101, i32 0, i32 5
  %103 = call i32 @cf_parser_free(i32* %102)
  %104 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %105 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %104, i32 0, i32 4
  %106 = bitcast %struct.TYPE_2__* %105 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @da_free(i64 %108, i64 %110)
  %112 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %113 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %112, i32 0, i32 3
  %114 = bitcast %struct.TYPE_2__* %113 to { i64, i64 }*
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @da_free(i64 %116, i64 %118)
  %120 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %121 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %120, i32 0, i32 2
  %122 = bitcast %struct.TYPE_2__* %121 to { i64, i64 }*
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @da_free(i64 %124, i64 %126)
  %128 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %129 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %128, i32 0, i32 1
  %130 = bitcast %struct.TYPE_2__* %129 to { i64, i64 }*
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @da_free(i64 %132, i64 %134)
  %136 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %137 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %136, i32 0, i32 0
  %138 = bitcast %struct.TYPE_2__* %137 to { i64, i64 }*
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @da_free(i64 %140, i64 %142)
  ret void
}

declare dso_local i32 @ep_param_free(i64) #1

declare dso_local i32 @ep_struct_free(i64) #1

declare dso_local i32 @ep_func_free(i64) #1

declare dso_local i32 @ep_sampler_free(i64) #1

declare dso_local i32 @ep_technique_free(i64) #1

declare dso_local i32 @cf_parser_free(i32*) #1

declare dso_local i32 @da_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
