; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_try_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_try_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OP_push_except = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_pop_except = common dso_local global i32 0, align 4
@OP_enter_catch = common dso_local global i32 0, align 4
@OP_pop_scope = common dso_local global i32 0, align 4
@OP_end_finally = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*)* @compile_try_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_try_statement(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i32 0, i32* %27, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = load i32, i32* @OP_push_except, align 4
  %30 = call i32 @push_instr(%struct.TYPE_21__* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %34, i32* %3, align 4
  br label %217

35:                                               ; preds = %2
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @compiler_alloc_bstr(%struct.TYPE_21__* %41, i32 %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %51, i32* %3, align 4
  br label %217

52:                                               ; preds = %40
  br label %54

53:                                               ; preds = %35
  store i32* null, i32** %13, align 8
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @compile_statement(%struct.TYPE_21__* %55, %struct.TYPE_20__* %6, i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %3, align 4
  br label %217

65:                                               ; preds = %54
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = load i32, i32* @OP_pop_except, align 4
  %68 = call i32 @push_instr(%struct.TYPE_21__* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %72, i32* %3, align 4
  br label %217

73:                                               ; preds = %65
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = icmp ne %struct.TYPE_16__* %76, null
  br i1 %77, label %78, label %144

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %82, align 4
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  store i32 0, i32* %88, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i32, i32* @TRUE, align 4
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %78
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = load i32, i32* @OP_enter_catch, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @push_instr_bstr(%struct.TYPE_21__* %100, i32 %101, i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %3, align 4
  br label %217

109:                                              ; preds = %96
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @compile_statement(%struct.TYPE_21__* %110, %struct.TYPE_20__* %15, i32* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i64 @FAILED(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %3, align 4
  br label %217

122:                                              ; preds = %109
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = load i32, i32* @OP_pop_scope, align 4
  %125 = call i32 @push_instr(%struct.TYPE_21__* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %128, i32* %3, align 4
  br label %217

129:                                              ; preds = %122
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = load i32, i32* @OP_pop_except, align 4
  %137 = call i32 @push_instr(%struct.TYPE_21__* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %141, i32* %3, align 4
  br label %217

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143, %73
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %9, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @compile_statement(%struct.TYPE_21__* %153, %struct.TYPE_20__* %7, i32* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i64 @FAILED(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %3, align 4
  br label %217

163:                                              ; preds = %149
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %165 = load i32, i32* @OP_end_finally, align 4
  %166 = call i32 @push_instr(%struct.TYPE_21__* %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %169, i32* %3, align 4
  br label %217

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %144
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call %struct.TYPE_22__* @instr_ptr(%struct.TYPE_21__* %175, i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store i32 %174, i32* %182, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %171
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call %struct.TYPE_22__* @instr_ptr(%struct.TYPE_21__* %189, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  store i32 %188, i32* %196, align 4
  br label %197

197:                                              ; preds = %185, %171
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call %struct.TYPE_22__* @instr_ptr(%struct.TYPE_21__* %199, i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  store i32 %198, i32* %206, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call %struct.TYPE_22__* @instr_ptr(%struct.TYPE_21__* %208, i32 %209)
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i64 1
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  store i32 %207, i32* %215, align 4
  %216 = load i32, i32* @S_OK, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %197, %168, %161, %140, %127, %120, %107, %71, %63, %50, %33
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @push_instr(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @compiler_alloc_bstr(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @compile_statement(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr_bstr(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @instr_ptr(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
