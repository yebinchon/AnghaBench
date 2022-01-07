; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_pres_ins.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_pres_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.d3dx_pres_ins = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [37 x i8] c"Byte code buffer ends unexpectedly.\0A\00", align 1
@PRES_OPCODE_MASK = common dso_local global i32 0, align 4
@PRES_OPCODE_SHIFT = common dso_local global i32 0, align 4
@PRES_NCOMP_MASK = common dso_local global i32 0, align 4
@PRES_SCALAR_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported number of components %u.\0A\00", align 1
@pres_op_info = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Unknown opcode %#x, input_count %u, raw %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Actual input args count %u exceeds inputs array size, instruction %s.\0A\00", align 1
@PRES_REGTAB_COUNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Relative addressing in output register not supported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Instructions outputting multiple registers are not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.d3dx_pres_ins*)* @parse_pres_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_pres_ins(i32* %0, i32 %1, %struct.d3dx_pres_ins* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.d3dx_pres_ins*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.d3dx_pres_ins* %2, %struct.d3dx_pres_ins** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %211

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PRES_OPCODE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @PRES_OPCODE_SHIFT, align 4
  %25 = lshr i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PRES_NCOMP_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %30 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PRES_SCALAR_FLAG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %39 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %41 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %42, 1
  br i1 %43, label %49, label %44

44:                                               ; preds = %17
  %45 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %46 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ugt i32 %47, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %17
  %50 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %51 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32* null, i32** %4, align 8
  br label %211

54:                                               ; preds = %44
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub i32 %58, 2
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %85, %54
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pres_op_info, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pres_op_info, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %66, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pres_op_info, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %88

84:                                               ; preds = %74, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %60

88:                                               ; preds = %83, %60
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pres_op_info, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %90)
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  store i32* null, i32** %4, align 8
  br label %211

98:                                               ; preds = %88
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %101 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %104 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %103, i32 0, i32 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %105)
  %107 = icmp ugt i32 %102, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pres_op_info, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %115)
  store i32* null, i32** %4, align 8
  br label %211

117:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %147, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %126 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %125, i32 0, i32 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = call i32* @parse_pres_arg(i32* %123, i32 %124, %struct.TYPE_8__* %130)
  store i32* %131, i32** %12, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %122
  store i32* null, i32** %4, align 8
  br label %211

135:                                              ; preds = %122
  %136 = load i32*, i32** %12, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = load i32, i32* %6, align 4
  %143 = zext i32 %142 to i64
  %144 = sub nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %6, align 4
  %146 = load i32*, i32** %12, align 8
  store i32* %146, i32** %5, align 8
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %118

150:                                              ; preds = %118
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %154 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %153, i32 0, i32 3
  %155 = call i32* @parse_pres_arg(i32* %151, i32 %152, %struct.TYPE_8__* %154)
  store i32* %155, i32** %5, align 8
  %156 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %157 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @PRES_REGTAB_COUNT, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %150
  %164 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %211

165:                                              ; preds = %150
  %166 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %167 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %172 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pres_op_info, align 8
  %177 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %178 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %165
  br label %191

186:                                              ; preds = %165
  %187 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %188 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub i32 %189, 1
  br label %191

191:                                              ; preds = %186, %185
  %192 = phi i32 [ 0, %185 ], [ %190, %186 ]
  %193 = add i32 %175, %192
  %194 = call i64 @get_reg_offset(i32 %170, i32 %193)
  %195 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %196 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %201 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @get_reg_offset(i32 %199, i32 %204)
  %206 = icmp ne i64 %194, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %191
  %208 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %211

209:                                              ; preds = %191
  %210 = load i32*, i32** %5, align 8
  store i32* %210, i32** %4, align 8
  br label %211

211:                                              ; preds = %209, %207, %163, %134, %108, %93, %49, %15
  %212 = load i32*, i32** %4, align 8
  ret i32* %212
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32* @parse_pres_arg(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @get_reg_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
