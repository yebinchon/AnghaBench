; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_detach_variable_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_detach_variable_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__* }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"detaching %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @detach_variable_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach_variable_object(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @S_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %119

23:                                               ; preds = %14
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = icmp eq %struct.TYPE_16__* %26, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %23
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = call i32 @setup_arguments_object(%struct.TYPE_15__* %54, %struct.TYPE_16__* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %119

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %48, %23
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %67, align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %114, %63
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %69, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %68
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @local_off(%struct.TYPE_16__* %93, i32 %103)
  %105 = getelementptr inbounds i32, i32* %92, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @jsdisp_propput_name(i64 %79, i32 %89, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @FAILED(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %76
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %119

113:                                              ; preds = %76
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %68

117:                                              ; preds = %68
  %118 = load i32, i32* @S_OK, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %111, %60, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setup_arguments_object(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsdisp_propput_name(i64, i32, i32) #1

declare dso_local i64 @local_off(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
