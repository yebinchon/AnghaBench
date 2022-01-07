; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_cmd_debug_reg_print_packed_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_cmd_debug_reg_print_packed_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NUM_PACK_TYPES = common dso_local global i32 0, align 4
@pack_sizes = common dso_local global i32* null, align 8
@NUM_INT_PACK_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i8, i8*)* @cmd_debug_reg_print_packed_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_debug_reg_print_packed_reg(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca double, align 8
  %13 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %105, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NUM_PACK_TYPES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %108

18:                                               ; preds = %14
  %19 = load i8, i8* %7, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %104

29:                                               ; preds = %21, %18
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %99, %29
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @pack_sizes, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %34, %39
  %41 = icmp slt i32 %31, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %30
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** @pack_sizes, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call float @r_reg_get_pack(i32 %47, %struct.TYPE_8__* %48, i32 %49, i32 %54)
  store float %55, float* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @NUM_INT_PACK_TYPES, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %42
  %61 = load i32*, i32** @pack_sizes, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = bitcast double* %12 to i8*
  %69 = bitcast float* %11 to i8*
  %70 = call i32 @memcpy(i8* %68, i8* %69, i32 8)
  %71 = load i32, i32* %10, align 4
  %72 = load double, double* %12, align 8
  %73 = fptrunc double %72 to float
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @pack_print(i32 %71, float %73, i32 %74)
  br label %92

76:                                               ; preds = %60
  %77 = load i32*, i32** @pack_sizes, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = bitcast float* %13 to i8*
  %85 = bitcast float* %11 to i8*
  %86 = call i32 @memcpy(i8* %84, i8* %85, i32 4)
  %87 = load i32, i32* %10, align 4
  %88 = load float, float* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @pack_print(i32 %87, float %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %76
  br label %92

92:                                               ; preds = %91, %67
  br label %98

93:                                               ; preds = %42
  %94 = load i32, i32* %10, align 4
  %95 = load float, float* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @pack_print(i32 %94, float %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %92
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %30

102:                                              ; preds = %30
  %103 = call i32 (...) @r_cons_newline()
  br label %104

104:                                              ; preds = %102, %21
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %14

108:                                              ; preds = %14
  ret void
}

declare dso_local float @r_reg_get_pack(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pack_print(i32, float, i32) #1

declare dso_local i32 @r_cons_newline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
