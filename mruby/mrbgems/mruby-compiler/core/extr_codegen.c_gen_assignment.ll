; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_assignment.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_22__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }

@OP_SETGV = common dso_local global i32 0, align 4
@OP_NOP = common dso_local global i32 0, align 4
@OP_SETUPVAR = common dso_local global i32 0, align 4
@OP_SETIV = common dso_local global i32 0, align 4
@OP_SETCV = common dso_local global i32 0, align 4
@OP_SETCONST = common dso_local global i32 0, align 4
@VAL = common dso_local global i32 0, align 4
@OP_SETMCNST = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unknown lhs %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32)* @gen_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_assignment(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %16 = call i32 @nint(%struct.TYPE_21__* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %6, align 8
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %179 [
    i32 133, label %21
    i32 138, label %31
    i32 131, label %31
    i32 132, label %89
    i32 134, label %99
    i32 135, label %109
    i32 136, label %119
    i32 137, label %143
    i32 128, label %143
    i32 130, label %170
    i32 129, label %178
  ]

21:                                               ; preds = %4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = call i32 @nsym(%struct.TYPE_21__* %23)
  %25 = call i32 @new_sym(%struct.TYPE_22__* %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = load i32, i32* @OP_SETGV, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @genop_2(%struct.TYPE_22__* %26, i32 %27, i32 %28, i32 %29)
  br label %183

31:                                               ; preds = %4, %4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = call i32 @nsym(%struct.TYPE_21__* %33)
  %35 = call i32 @lv_idx(%struct.TYPE_22__* %32, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @gen_move(%struct.TYPE_22__* %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = call i32 @on_eval(%struct.TYPE_22__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = load i32, i32* @OP_NOP, align 4
  %57 = call i32 @genop_0(%struct.TYPE_22__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50, %42
  br label %59

59:                                               ; preds = %58, %38
  br label %183

60:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %12, align 8
  br label %64

64:                                               ; preds = %81, %60
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %66 = icmp ne %struct.TYPE_22__* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = call i32 @nsym(%struct.TYPE_21__* %69)
  %71 = call i32 @lv_idx(%struct.TYPE_22__* %68, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = load i32, i32* @OP_SETUPVAR, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @genop_3(%struct.TYPE_22__* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  br label %87

81:                                               ; preds = %67
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %12, align 8
  br label %64

87:                                               ; preds = %74, %64
  br label %88

88:                                               ; preds = %87
  br label %183

89:                                               ; preds = %4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = call i32 @nsym(%struct.TYPE_21__* %91)
  %93 = call i32 @new_sym(%struct.TYPE_22__* %90, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = load i32, i32* @OP_SETIV, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @genop_2(%struct.TYPE_22__* %94, i32 %95, i32 %96, i32 %97)
  br label %183

99:                                               ; preds = %4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = call i32 @nsym(%struct.TYPE_21__* %101)
  %103 = call i32 @new_sym(%struct.TYPE_22__* %100, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = load i32, i32* @OP_SETCV, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @genop_2(%struct.TYPE_22__* %104, i32 %105, i32 %106, i32 %107)
  br label %183

109:                                              ; preds = %4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = call i32 @nsym(%struct.TYPE_21__* %111)
  %113 = call i32 @new_sym(%struct.TYPE_22__* %110, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = load i32, i32* @OP_SETCONST, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @genop_2(%struct.TYPE_22__* %114, i32 %115, i32 %116, i32 %117)
  br label %183

119:                                              ; preds = %4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = call i32 (...) @cursp()
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @gen_move(%struct.TYPE_22__* %120, i32 %121, i32 %122, i32 0)
  %124 = call i32 (...) @push()
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = load i32, i32* @VAL, align 4
  %130 = call i32 @codegen(%struct.TYPE_22__* %125, %struct.TYPE_21__* %128, i32 %129)
  %131 = call i32 @pop_n(i32 2)
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = call i32 @nsym(%struct.TYPE_21__* %135)
  %137 = call i32 @new_sym(%struct.TYPE_22__* %132, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = load i32, i32* @OP_SETMCNST, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @genop_2(%struct.TYPE_22__* %138, i32 %139, i32 %140, i32 %141)
  br label %183

143:                                              ; preds = %4, %4
  %144 = call i32 (...) @push()
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = call i32 @nsym(%struct.TYPE_21__* %152)
  %154 = call i32 @attrsym(%struct.TYPE_22__* %147, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @NOVAL, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 128
  %159 = zext i1 %158 to i32
  %160 = call i32 @gen_call(%struct.TYPE_22__* %145, %struct.TYPE_21__* %146, i32 %154, i32 %155, i32 %156, i32 %159)
  %161 = call i32 (...) @pop()
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %143
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = call i32 (...) @cursp()
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @gen_move(%struct.TYPE_22__* %165, i32 %166, i32 %167, i32 0)
  br label %169

169:                                              ; preds = %164, %143
  br label %183

170:                                              ; preds = %4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @gen_vmassignment(%struct.TYPE_22__* %171, %struct.TYPE_21__* %174, i32 %175, i32 %176)
  br label %183

178:                                              ; preds = %4
  br label %183

179:                                              ; preds = %4
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @fprintf(i32 %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %178, %170, %169, %119, %109, %99, %89, %88, %59, %21
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 (...) @push()
  br label %188

188:                                              ; preds = %186, %183
  ret void
}

declare dso_local i32 @nint(%struct.TYPE_21__*) #1

declare dso_local i32 @new_sym(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @nsym(%struct.TYPE_21__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @lv_idx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @gen_move(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @on_eval(%struct.TYPE_22__*) #1

declare dso_local i32 @genop_0(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @genop_3(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @codegen(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @pop_n(i32) #1

declare dso_local i32 @gen_call(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @attrsym(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @gen_vmassignment(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
