; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_get_debug.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_get_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_pair = type { %struct.TYPE_13__*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SymDeferred = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@CBA_DEFERRED_SYMBOL_LOAD_START = common dso_local global i32 0, align 4
@CBA_DEFERRED_SYMBOL_LOAD_COMPLETE = common dso_local global i32 0, align 4
@CBA_DEFERRED_SYMBOL_LOAD_FAILURE = common dso_local global i32 0, align 4
@SymNone = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_get_debug(%struct.module_pair* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module_pair*, align 8
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca i32, align 4
  store %struct.module_pair* %0, %struct.module_pair** %3, align 8
  %6 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %7 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %6, i32 0, i32 2
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %168

12:                                               ; preds = %1
  %13 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %14 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %17 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = call %struct.TYPE_13__* @module_get_container(i32 %15, %struct.TYPE_13__* %18)
  %20 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %21 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %20, i32 0, i32 0
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %21, align 8
  %22 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %12
  %24 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %25 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %28 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %27, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %28, align 8
  br label %29

29:                                               ; preds = %23, %12
  %30 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %31 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SymDeferred, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %158

38:                                               ; preds = %29
  %39 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %40 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %126

47:                                               ; preds = %38
  %48 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %49 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %123 [
    i32 130, label %53
    i32 128, label %58
    i32 129, label %118
  ]

53:                                               ; preds = %47
  %54 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %55 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = call i32 @elf_load_debug_info(%struct.TYPE_13__* %56)
  store i32 %57, i32* %5, align 4
  br label %125

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 28, i32* %59, align 4
  %60 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %61 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 6
  store i32 %65, i32* %66, align 4
  %67 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %68 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  store i32 %72, i32* %73, align 4
  %74 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %75 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %84 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %82, i32 %88, i32 4)
  %90 = load i32, i32* @FALSE, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %95 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CBA_DEFERRED_SYMBOL_LOAD_START, align 4
  %98 = call i32 @pcs_callback(i32 %96, i32 %97, %struct.TYPE_12__* %4)
  %99 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %100 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %103 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = call i32 @pe_load_debug_info(i32 %101, %struct.TYPE_13__* %104)
  store i32 %105, i32* %5, align 4
  %106 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %107 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %58
  %112 = load i32, i32* @CBA_DEFERRED_SYMBOL_LOAD_COMPLETE, align 4
  br label %115

113:                                              ; preds = %58
  %114 = load i32, i32* @CBA_DEFERRED_SYMBOL_LOAD_FAILURE, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = call i32 @pcs_callback(i32 %108, i32 %116, %struct.TYPE_12__* %4)
  br label %125

118:                                              ; preds = %47
  %119 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %120 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = call i32 @macho_load_debug_info(%struct.TYPE_13__* %121)
  store i32 %122, i32* %5, align 4
  br label %125

123:                                              ; preds = %47
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %118, %115, %53
  br label %126

126:                                              ; preds = %125, %45
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* @SymNone, align 8
  %131 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %132 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %131, i32 0, i32 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i64 %130, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %126
  %137 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %138 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SymDeferred, align 8
  %144 = icmp ne i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %148 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %154 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 8
  br label %158

158:                                              ; preds = %136, %29
  %159 = load %struct.module_pair*, %struct.module_pair** %3, align 8
  %160 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SymNone, align 8
  %166 = icmp ne i64 %164, %165
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %158, %10
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_13__* @module_get_container(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @elf_load_debug_info(%struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pcs_callback(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @pe_load_debug_info(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @macho_load_debug_info(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
