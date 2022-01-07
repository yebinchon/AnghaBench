; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaD_precall.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaD_precall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, i64, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_27__ }
%struct.TYPE_21__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_25__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i64, i32)* @luaD_precall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaD_precall(%struct.TYPE_25__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ttisfunction(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @tryfuncTM(%struct.TYPE_25__* %21, i64 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @savestack(%struct.TYPE_25__* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_22__* @clvalue(i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %8, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %151, label %42

42:                                               ; preds = %24
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %13, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @luaD_checkstack(%struct.TYPE_25__* %46, i32 %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @restorestack(%struct.TYPE_25__* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %42
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %71, %59
  br label %96

80:                                               ; preds = %42
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @cast_int(i64 %85)
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @adjust_varargs(%struct.TYPE_25__* %88, %struct.TYPE_26__* %89, i32 %90)
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @restorestack(%struct.TYPE_25__* %92, i32 %93)
  %95 = ptrtoint i8* %94 to i64
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %80, %79
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = call %struct.TYPE_28__* @inc_ci(%struct.TYPE_25__* %97)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %10, align 8
  %99 = load i64, i64* %6, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* %12, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 4
  store i64 0, i64* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %11, align 8
  br label %131

131:                                              ; preds = %141, %96
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %132, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @setnilvalue(i64 %139)
  br label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %11, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %11, align 8
  br label %131

144:                                              ; preds = %131
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  store i32 0, i32* %4, align 4
  br label %199

151:                                              ; preds = %24
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %153 = call i32 @luaD_checkstack(%struct.TYPE_25__* %152, i32 20)
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %155 = call %struct.TYPE_28__* @inc_ci(%struct.TYPE_25__* %154)
  store %struct.TYPE_28__* %155, %struct.TYPE_28__** %15, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i8* @restorestack(%struct.TYPE_25__* %156, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 20
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %181 = call %struct.TYPE_21__* @curr_func(%struct.TYPE_25__* %180)
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %183, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %186 = call i32 %184(%struct.TYPE_25__* %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %151
  store i32 2, i32* %4, align 4
  br label %199

190:                                              ; preds = %151
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = call i32 @luaD_poscall(%struct.TYPE_25__* %191, i64 %197)
  store i32 1, i32* %4, align 4
  br label %199

199:                                              ; preds = %190, %189, %144
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @ttisfunction(i64) #1

declare dso_local i64 @tryfuncTM(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @savestack(%struct.TYPE_25__*, i64) #1

declare dso_local %struct.TYPE_22__* @clvalue(i64) #1

declare dso_local i32 @luaD_checkstack(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @restorestack(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @cast_int(i64) #1

declare dso_local i64 @adjust_varargs(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_28__* @inc_ci(%struct.TYPE_25__*) #1

declare dso_local i32 @setnilvalue(i64) #1

declare dso_local %struct.TYPE_21__* @curr_func(%struct.TYPE_25__*) #1

declare dso_local i32 @luaD_poscall(%struct.TYPE_25__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
