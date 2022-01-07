; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_values.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@NODE_SPLAT = common dso_local global i64 0, align 8
@CALL_MAXARGS = common dso_local global i32 0, align 4
@NODE_ARRAY = common dso_local global i64 0, align 8
@VAL = common dso_local global i32 0, align 4
@OP_LOADNIL = common dso_local global i32 0, align 4
@OP_ARRAY = common dso_local global i32 0, align 4
@OP_ARYCAT = common dso_local global i32 0, align 4
@OP_ARYPUSH = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32)* @gen_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_values(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %162, %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %174

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @nint(i32 %20)
  %22 = load i64, i64* @NODE_SPLAT, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @CALL_MAXARGS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %162

34:                                               ; preds = %31, %15
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %146

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nint(i32 %50)
  %52 = load i64, i64* @NODE_ARRAY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* @VAL, align 4
  %62 = call i32 @codegen(i32* %55, %struct.TYPE_5__* %60, i32 %61)
  %63 = call i32 (...) @pop()
  br label %106

64:                                               ; preds = %43, %40, %37
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @pop_n(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @OP_LOADNIL, align 4
  %75 = call i32 (...) @cursp()
  %76 = call i32 @genop_1(i32* %73, i32 %74, i32 %75)
  br label %83

77:                                               ; preds = %69, %64
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @OP_ARRAY, align 4
  %80 = call i32 (...) @cursp()
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @genop_2(i32* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = call i32 (...) @push()
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* @VAL, align 4
  %90 = call i32 @codegen(i32* %85, %struct.TYPE_5__* %88, i32 %89)
  %91 = call i32 (...) @pop()
  %92 = call i32 (...) @pop()
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @OP_ARYCAT, align 4
  %98 = call i32 (...) @cursp()
  %99 = call i32 @genop_1(i32* %96, i32 %97, i32 %98)
  br label %105

100:                                              ; preds = %83
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @OP_ARYPUSH, align 4
  %103 = call i32 (...) @cursp()
  %104 = call i32 @genop_1(i32* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %54
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %7, align 8
  br label %110

110:                                              ; preds = %141, %106
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %145

113:                                              ; preds = %110
  %114 = call i32 (...) @push()
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* @VAL, align 4
  %120 = call i32 @codegen(i32* %115, %struct.TYPE_5__* %118, i32 %119)
  %121 = call i32 (...) @pop()
  %122 = call i32 (...) @pop()
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @nint(i32 %127)
  %129 = load i64, i64* @NODE_SPLAT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %113
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @OP_ARYCAT, align 4
  %134 = call i32 (...) @cursp()
  %135 = call i32 @genop_1(i32* %132, i32 %133, i32 %134)
  br label %141

136:                                              ; preds = %113
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @OP_ARYPUSH, align 4
  %139 = call i32 (...) @cursp()
  %140 = call i32 @genop_1(i32* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %131
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %7, align 8
  br label %110

145:                                              ; preds = %110
  br label %161

146:                                              ; preds = %34
  br label %147

147:                                              ; preds = %150, %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %149 = icmp ne %struct.TYPE_4__* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32*, i32** %6, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* @NOVAL, align 4
  %156 = call i32 @codegen(i32* %151, %struct.TYPE_5__* %154, i32 %155)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  store %struct.TYPE_4__* %159, %struct.TYPE_4__** %7, align 8
  br label %147

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160, %145
  store i32 -1, i32* %5, align 4
  br label %176

162:                                              ; preds = %31
  %163 = load i32*, i32** %6, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @codegen(i32* %163, %struct.TYPE_5__* %166, i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  store %struct.TYPE_4__* %173, %struct.TYPE_4__** %7, align 8
  br label %12

174:                                              ; preds = %12
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %174, %161
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i64 @nint(i32) #1

declare dso_local i32 @codegen(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @pop_n(i32) #1

declare dso_local i32 @genop_1(i32*, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @genop_2(i32*, i32, i32, i32) #1

declare dso_local i32 @push(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
