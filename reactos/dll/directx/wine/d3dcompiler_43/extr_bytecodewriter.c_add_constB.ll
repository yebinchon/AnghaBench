; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_add_constB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_add_constB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32, %struct.constant** }
%struct.constant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to grow the constants array\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate the constants array\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate a new constant\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_constB(%struct.bwriter_shader* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwriter_shader*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.constant*, align 8
  %9 = alloca %struct.constant**, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %11 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %16 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %15, i32 0, i32 1
  %17 = load %struct.constant**, %struct.constant*** %16, align 8
  %18 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %19 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.constant** @d3dcompiler_realloc(%struct.constant** %17, i32 %24)
  store %struct.constant** %25, %struct.constant*** %9, align 8
  %26 = load %struct.constant**, %struct.constant*** %9, align 8
  %27 = icmp ne %struct.constant** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %14
  %32 = load %struct.constant**, %struct.constant*** %9, align 8
  %33 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %34 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %33, i32 0, i32 1
  store %struct.constant** %32, %struct.constant*** %34, align 8
  br label %48

35:                                               ; preds = %3
  %36 = call i8* @d3dcompiler_alloc(i32 8)
  %37 = bitcast i8* %36 to %struct.constant**
  %38 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %39 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %38, i32 0, i32 1
  store %struct.constant** %37, %struct.constant*** %39, align 8
  %40 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %41 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %40, i32 0, i32 1
  %42 = load %struct.constant**, %struct.constant*** %41, align 8
  %43 = icmp ne %struct.constant** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %80

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %31
  %49 = call i8* @d3dcompiler_alloc(i32 16)
  %50 = bitcast i8* %49 to %struct.constant*
  store %struct.constant* %50, %struct.constant** %8, align 8
  %51 = load %struct.constant*, %struct.constant** %8, align 8
  %52 = icmp ne %struct.constant* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %80

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.constant*, %struct.constant** %8, align 8
  %59 = getelementptr inbounds %struct.constant, %struct.constant* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.constant*, %struct.constant** %8, align 8
  %62 = getelementptr inbounds %struct.constant, %struct.constant* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.constant*, %struct.constant** %8, align 8
  %67 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %68 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %67, i32 0, i32 1
  %69 = load %struct.constant**, %struct.constant*** %68, align 8
  %70 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %71 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.constant*, %struct.constant** %69, i64 %73
  store %struct.constant* %66, %struct.constant** %74, align 8
  %75 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %76 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %56, %53, %44, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.constant** @d3dcompiler_realloc(%struct.constant**, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @d3dcompiler_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
