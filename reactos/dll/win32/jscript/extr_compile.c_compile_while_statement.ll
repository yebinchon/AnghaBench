; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_while_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_while_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OP_jmp_z = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*)* @compile_while_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_while_statement(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = call i8* @alloc_label(%struct.TYPE_14__* %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %24, i32* %3, align 4
  br label %131

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i8* @alloc_label(%struct.TYPE_14__* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %34, i32* %3, align 4
  br label %131

35:                                               ; preds = %25
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @label_set_addr(%struct.TYPE_14__* %44, i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @compile_expression(%struct.TYPE_14__* %48, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %43
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = load i32, i32* @OP_jmp_z, align 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @push_instr_uint(%struct.TYPE_14__* %60, i32 %61, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %131

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @compile_statement(%struct.TYPE_14__* %72, %struct.TYPE_13__* %6, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %131

82:                                               ; preds = %71
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @label_set_addr(%struct.TYPE_14__* %88, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @compile_expression(%struct.TYPE_14__* %92, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %131

103:                                              ; preds = %87
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = load i32, i32* @OP_jmp_z, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @push_instr_uint(%struct.TYPE_14__* %104, i32 %105, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @FAILED(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %131

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %82
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = load i32, i32* @OP_jmp, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @push_instr_uint(%struct.TYPE_14__* %116, i32 %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @FAILED(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %131

125:                                              ; preds = %115
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @label_set_addr(%struct.TYPE_14__* %126, i32 %128)
  %130 = load i32, i32* @S_OK, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %123, %112, %101, %80, %68, %57, %33, %23
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i8* @alloc_label(%struct.TYPE_14__*) #1

declare dso_local i32 @label_set_addr(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @compile_expression(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr_uint(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @compile_statement(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
