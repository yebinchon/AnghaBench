; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @compile_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_statement(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %9 = icmp ne %struct.TYPE_24__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %15, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %18, align 8
  br label %19

19:                                               ; preds = %10, %3
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %102 [
    i32 143, label %23
    i32 142, label %30
    i32 141, label %35
    i32 140, label %40
    i32 139, label %42
    i32 138, label %47
    i32 137, label %52
    i32 136, label %57
    i32 135, label %62
    i32 134, label %67
    i32 133, label %72
    i32 132, label %77
    i32 131, label %82
    i32 130, label %87
    i32 129, label %92
    i32 128, label %97
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = bitcast %struct.TYPE_23__* %25 to %struct.TYPE_26__*
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @compile_block_statement(%struct.TYPE_25__* %24, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %102

30:                                               ; preds = %19
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = bitcast %struct.TYPE_23__* %32 to i32*
  %34 = call i32 @compile_break_statement(%struct.TYPE_25__* %31, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %102

35:                                               ; preds = %19
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = bitcast %struct.TYPE_23__* %37 to i32*
  %39 = call i32 @compile_continue_statement(%struct.TYPE_25__* %36, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %102

40:                                               ; preds = %19
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %7, align 4
  br label %102

42:                                               ; preds = %19
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = bitcast %struct.TYPE_23__* %44 to i32*
  %46 = call i32 @compile_expression_statement(%struct.TYPE_25__* %43, i32* %45)
  store i32 %46, i32* %7, align 4
  br label %102

47:                                               ; preds = %19
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = bitcast %struct.TYPE_23__* %49 to i32*
  %51 = call i32 @compile_for_statement(%struct.TYPE_25__* %48, i32* %50)
  store i32 %51, i32* %7, align 4
  br label %102

52:                                               ; preds = %19
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = bitcast %struct.TYPE_23__* %54 to i32*
  %56 = call i32 @compile_forin_statement(%struct.TYPE_25__* %53, i32* %55)
  store i32 %56, i32* %7, align 4
  br label %102

57:                                               ; preds = %19
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = bitcast %struct.TYPE_23__* %59 to i32*
  %61 = call i32 @compile_if_statement(%struct.TYPE_25__* %58, i32* %60)
  store i32 %61, i32* %7, align 4
  br label %102

62:                                               ; preds = %19
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = bitcast %struct.TYPE_23__* %64 to i32*
  %66 = call i32 @compile_labelled_statement(%struct.TYPE_25__* %63, i32* %65)
  store i32 %66, i32* %7, align 4
  br label %102

67:                                               ; preds = %19
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %70 = bitcast %struct.TYPE_23__* %69 to i32*
  %71 = call i32 @compile_return_statement(%struct.TYPE_25__* %68, i32* %70)
  store i32 %71, i32* %7, align 4
  br label %102

72:                                               ; preds = %19
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = bitcast %struct.TYPE_23__* %74 to i32*
  %76 = call i32 @compile_switch_statement(%struct.TYPE_25__* %73, i32* %75)
  store i32 %76, i32* %7, align 4
  br label %102

77:                                               ; preds = %19
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %80 = bitcast %struct.TYPE_23__* %79 to i32*
  %81 = call i32 @compile_throw_statement(%struct.TYPE_25__* %78, i32* %80)
  store i32 %81, i32* %7, align 4
  br label %102

82:                                               ; preds = %19
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = bitcast %struct.TYPE_23__* %84 to i32*
  %86 = call i32 @compile_try_statement(%struct.TYPE_25__* %83, i32* %85)
  store i32 %86, i32* %7, align 4
  br label %102

87:                                               ; preds = %19
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = bitcast %struct.TYPE_23__* %89 to i32*
  %91 = call i32 @compile_var_statement(%struct.TYPE_25__* %88, i32* %90)
  store i32 %91, i32* %7, align 4
  br label %102

92:                                               ; preds = %19
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = bitcast %struct.TYPE_23__* %94 to i32*
  %96 = call i32 @compile_while_statement(%struct.TYPE_25__* %93, i32* %95)
  store i32 %96, i32* %7, align 4
  br label %102

97:                                               ; preds = %19
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = bitcast %struct.TYPE_23__* %99 to i32*
  %101 = call i32 @compile_with_statement(%struct.TYPE_25__* %98, i32* %100)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %19, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %40, %35, %30, %23
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = icmp ne %struct.TYPE_24__* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = icmp eq %struct.TYPE_24__* %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  store %struct.TYPE_24__* %115, %struct.TYPE_24__** %117, align 8
  br label %118

118:                                              ; preds = %105, %102
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @compile_block_statement(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @compile_break_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_continue_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_expression_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_for_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_forin_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_if_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_labelled_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_return_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_switch_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_throw_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_try_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_var_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_while_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @compile_with_statement(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
